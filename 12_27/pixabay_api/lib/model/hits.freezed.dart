// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return _Hits.fromJson(json);
}

/// @nodoc
mixin _$Hits {
  String get webformatURL => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitsCopyWith<Hits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsCopyWith<$Res> {
  factory $HitsCopyWith(Hits value, $Res Function(Hits) then) =
      _$HitsCopyWithImpl<$Res, Hits>;
  @useResult
  $Res call({String webformatURL, String tags, String type});
}

/// @nodoc
class _$HitsCopyWithImpl<$Res, $Val extends Hits>
    implements $HitsCopyWith<$Res> {
  _$HitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webformatURL = null,
    Object? tags = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      webformatURL: null == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitsImplCopyWith<$Res> implements $HitsCopyWith<$Res> {
  factory _$$HitsImplCopyWith(
          _$HitsImpl value, $Res Function(_$HitsImpl) then) =
      __$$HitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String webformatURL, String tags, String type});
}

/// @nodoc
class __$$HitsImplCopyWithImpl<$Res>
    extends _$HitsCopyWithImpl<$Res, _$HitsImpl>
    implements _$$HitsImplCopyWith<$Res> {
  __$$HitsImplCopyWithImpl(_$HitsImpl _value, $Res Function(_$HitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webformatURL = null,
    Object? tags = null,
    Object? type = null,
  }) {
    return _then(_$HitsImpl(
      webformatURL: null == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitsImpl with DiagnosticableTreeMixin implements _Hits {
  const _$HitsImpl(
      {required this.webformatURL, required this.tags, required this.type});

  factory _$HitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitsImplFromJson(json);

  @override
  final String webformatURL;
  @override
  final String tags;
  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hits(webformatURL: $webformatURL, tags: $tags, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Hits'))
      ..add(DiagnosticsProperty('webformatURL', webformatURL))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitsImpl &&
            (identical(other.webformatURL, webformatURL) ||
                other.webformatURL == webformatURL) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, webformatURL, tags, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitsImplCopyWith<_$HitsImpl> get copyWith =>
      __$$HitsImplCopyWithImpl<_$HitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitsImplToJson(
      this,
    );
  }
}

abstract class _Hits implements Hits {
  const factory _Hits(
      {required final String webformatURL,
      required final String tags,
      required final String type}) = _$HitsImpl;

  factory _Hits.fromJson(Map<String, dynamic> json) = _$HitsImpl.fromJson;

  @override
  String get webformatURL;
  @override
  String get tags;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$HitsImplCopyWith<_$HitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
