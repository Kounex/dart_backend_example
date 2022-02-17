import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_info.freezed.dart';
part 'video_info.g.dart';

@freezed
class VideoInfo with _$VideoInfo {
  factory VideoInfo(
    String uploader,
    String title,
    String description,
    List<int> thumbnailRAW,
    List<String> keywords,
    int durationMS,
    int publishedMS,
  ) = _VideoInfo;

  factory VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoInfoFromJson(json);
}
