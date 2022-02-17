// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoInfo _$VideoInfoFromJson(Map<String, dynamic> json) {
  return _VideoInfo.fromJson(json);
}

/// @nodoc
class _$VideoInfoTearOff {
  const _$VideoInfoTearOff();

  _VideoInfo call(
      String uploader,
      String title,
      String description,
      List<int> thumbnailRAW,
      List<String> keywords,
      int durationMS,
      int publishedMS) {
    return _VideoInfo(
      uploader,
      title,
      description,
      thumbnailRAW,
      keywords,
      durationMS,
      publishedMS,
    );
  }

  VideoInfo fromJson(Map<String, Object?> json) {
    return VideoInfo.fromJson(json);
  }
}

/// @nodoc
const $VideoInfo = _$VideoInfoTearOff();

/// @nodoc
mixin _$VideoInfo {
  String get uploader => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<int> get thumbnailRAW => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  int get durationMS => throw _privateConstructorUsedError;
  int get publishedMS => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoInfoCopyWith<VideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoInfoCopyWith<$Res> {
  factory $VideoInfoCopyWith(VideoInfo value, $Res Function(VideoInfo) then) =
      _$VideoInfoCopyWithImpl<$Res>;
  $Res call(
      {String uploader,
      String title,
      String description,
      List<int> thumbnailRAW,
      List<String> keywords,
      int durationMS,
      int publishedMS});
}

/// @nodoc
class _$VideoInfoCopyWithImpl<$Res> implements $VideoInfoCopyWith<$Res> {
  _$VideoInfoCopyWithImpl(this._value, this._then);

  final VideoInfo _value;
  // ignore: unused_field
  final $Res Function(VideoInfo) _then;

  @override
  $Res call({
    Object? uploader = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnailRAW = freezed,
    Object? keywords = freezed,
    Object? durationMS = freezed,
    Object? publishedMS = freezed,
  }) {
    return _then(_value.copyWith(
      uploader: uploader == freezed
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailRAW: thumbnailRAW == freezed
          ? _value.thumbnailRAW
          : thumbnailRAW // ignore: cast_nullable_to_non_nullable
              as List<int>,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMS: durationMS == freezed
          ? _value.durationMS
          : durationMS // ignore: cast_nullable_to_non_nullable
              as int,
      publishedMS: publishedMS == freezed
          ? _value.publishedMS
          : publishedMS // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$VideoInfoCopyWith<$Res> implements $VideoInfoCopyWith<$Res> {
  factory _$VideoInfoCopyWith(
          _VideoInfo value, $Res Function(_VideoInfo) then) =
      __$VideoInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uploader,
      String title,
      String description,
      List<int> thumbnailRAW,
      List<String> keywords,
      int durationMS,
      int publishedMS});
}

/// @nodoc
class __$VideoInfoCopyWithImpl<$Res> extends _$VideoInfoCopyWithImpl<$Res>
    implements _$VideoInfoCopyWith<$Res> {
  __$VideoInfoCopyWithImpl(_VideoInfo _value, $Res Function(_VideoInfo) _then)
      : super(_value, (v) => _then(v as _VideoInfo));

  @override
  _VideoInfo get _value => super._value as _VideoInfo;

  @override
  $Res call({
    Object? uploader = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnailRAW = freezed,
    Object? keywords = freezed,
    Object? durationMS = freezed,
    Object? publishedMS = freezed,
  }) {
    return _then(_VideoInfo(
      uploader == freezed
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailRAW == freezed
          ? _value.thumbnailRAW
          : thumbnailRAW // ignore: cast_nullable_to_non_nullable
              as List<int>,
      keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMS == freezed
          ? _value.durationMS
          : durationMS // ignore: cast_nullable_to_non_nullable
              as int,
      publishedMS == freezed
          ? _value.publishedMS
          : publishedMS // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoInfo implements _VideoInfo {
  _$_VideoInfo(this.uploader, this.title, this.description, this.thumbnailRAW,
      this.keywords, this.durationMS, this.publishedMS);

  factory _$_VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$$_VideoInfoFromJson(json);

  @override
  final String uploader;
  @override
  final String title;
  @override
  final String description;
  @override
  final List<int> thumbnailRAW;
  @override
  final List<String> keywords;
  @override
  final int durationMS;
  @override
  final int publishedMS;

  @override
  String toString() {
    return 'VideoInfo(uploader: $uploader, title: $title, description: $description, thumbnailRAW: $thumbnailRAW, keywords: $keywords, durationMS: $durationMS, publishedMS: $publishedMS)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoInfo &&
            const DeepCollectionEquality().equals(other.uploader, uploader) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailRAW, thumbnailRAW) &&
            const DeepCollectionEquality().equals(other.keywords, keywords) &&
            const DeepCollectionEquality()
                .equals(other.durationMS, durationMS) &&
            const DeepCollectionEquality()
                .equals(other.publishedMS, publishedMS));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uploader),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnailRAW),
      const DeepCollectionEquality().hash(keywords),
      const DeepCollectionEquality().hash(durationMS),
      const DeepCollectionEquality().hash(publishedMS));

  @JsonKey(ignore: true)
  @override
  _$VideoInfoCopyWith<_VideoInfo> get copyWith =>
      __$VideoInfoCopyWithImpl<_VideoInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoInfoToJson(this);
  }
}

abstract class _VideoInfo implements VideoInfo {
  factory _VideoInfo(
      String uploader,
      String title,
      String description,
      List<int> thumbnailRAW,
      List<String> keywords,
      int durationMS,
      int publishedMS) = _$_VideoInfo;

  factory _VideoInfo.fromJson(Map<String, dynamic> json) =
      _$_VideoInfo.fromJson;

  @override
  String get uploader;
  @override
  String get title;
  @override
  String get description;
  @override
  List<int> get thumbnailRAW;
  @override
  List<String> get keywords;
  @override
  int get durationMS;
  @override
  int get publishedMS;
  @override
  @JsonKey(ignore: true)
  _$VideoInfoCopyWith<_VideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
