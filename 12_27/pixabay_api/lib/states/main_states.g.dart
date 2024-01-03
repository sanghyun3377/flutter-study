// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainStateImpl _$$MainStateImplFromJson(Map<String, dynamic> json) =>
    _$MainStateImpl(
      imagedata: (json['imagedata'] as List<dynamic>?)
              ?.map((e) => Hits.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MainStateImplToJson(_$MainStateImpl instance) =>
    <String, dynamic>{
      'imagedata': instance.imagedata,
    };
