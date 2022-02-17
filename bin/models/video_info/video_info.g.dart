// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoInfo _$$_VideoInfoFromJson(Map<String, dynamic> json) => _$_VideoInfo(
      json['uploader'] as String,
      json['title'] as String,
      json['description'] as String,
      (json['thumbnailRAW'] as List<dynamic>).map((e) => e as int).toList(),
      (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      json['durationMS'] as int,
      json['publishedMS'] as int,
    );

Map<String, dynamic> _$$_VideoInfoToJson(_$_VideoInfo instance) =>
    <String, dynamic>{
      'uploader': instance.uploader,
      'title': instance.title,
      'description': instance.description,
      'thumbnailRAW': instance.thumbnailRAW,
      'keywords': instance.keywords,
      'durationMS': instance.durationMS,
      'publishedMS': instance.publishedMS,
    };
