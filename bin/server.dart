import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
// import 'package:shelf_plus/shelf_plus.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import 'models/video_info/video_info.dart';

/// Adds a custom middleware to a given [Pipeline] to handle
/// CORS as specified in the [corsHeaders] property
FutureOr<Response> Function(Request) Function(
    FutureOr<Response> Function(Request)) cors() {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': '*',
  };

  Response? options(Request request) => (request.method == 'OPTIONS')
      ? Response.ok(null, headers: corsHeaders)
      : null;
  Response cors(Response response) => response.change(headers: corsHeaders);

  return createMiddleware(requestHandler: options, responseHandler: cors);
}

/// Wraps the given [json] object inside a Response object for
/// [Router] handlers in case they need to return a Json (usually
/// the case)
Response jsonResponse(Map<String, dynamic> json) {
  return Response.ok(
    jsonEncode(json),
    headers: {'Content-Type': 'application/json'},
  );
}

void main() async {
  /// Handler for specifing the different routes
  final app = Router();

  /// Pipeline which contains all used middlewares
  final pipeline = Pipeline()
      .addMiddleware(
        cors(),
      )
      .addMiddleware(
        logRequests(),
      );

  /// Main handler which will be provided for the serve function
  final handler = pipeline.addHandler(app);

  app.get(
    '/<videoPart>',
    (Request request) async => jsonResponse(
      await videoInfoJson(
        request.url.toString(),
      ),
    ),
  );
  app.get(
    '/youtube.com/<videoPart>',
    (Request request) async => jsonResponse(
      await videoInfoJson(
        request.url.toString().split('.com/')[1],
      ),
    ),
  );
  app.get(
    '/www.youtube.com/<videoPart>',
    (Request request) async => jsonResponse(
      await videoInfoJson(
        request.url.toString().split('.com/')[1],
      ),
    ),
  );
  app.get(
    '/https%3A//youtube.com/<videoPart>',
    (Request request) async => jsonResponse(
      await videoInfoJson(
        request.url.toString().split('.com/')[1],
      ),
    ),
  );
  app.get(
    '/https%3A//www.youtube.com/<videoPart>',
    (Request request) async => jsonResponse(
      await videoInfoJson(
        request.url.toString().split('.com/')[1],
      ),
    ),
  );

  app.post('/fetch', (Request request) async {
    print(request);

    print(request.isEmpty);
    print(request.contentLength);

    String raw = await request.readAsString();

    print('BODY CONTENT: $raw');

    // dynamic json = jsonDecode(raw);

    return Response.ok(null);

    // return jsonResponse(
    //   await videoInfoJson(
    //     json['videoPart'].split('.com/')[1],
    //   ),
    // );
  });

  print('Serving on 4444');
  await io.serve(handler, 'localhost', 4444);
}

Future<Map<String, dynamic>> videoInfoJson(String videoPart) async {
  final yt = YoutubeExplode();
  final video = await yt.videos.get('https://youtube.com/$videoPart');
  yt.close();

  final thumbnailRAW =
      (await http.get(Uri.parse(video.thumbnails.maxResUrl))).bodyBytes;

  return VideoInfo(
    video.author,
    video.title,
    video.description,
    thumbnailRAW,
    video.keywords,
    video.duration?.inMilliseconds ?? 0,
    video.publishDate?.millisecondsSinceEpoch ?? 0,
  ).toJson();
}
