// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationStateLoading _$$LocationStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$LocationStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationStateLoadingToJson(
        _$LocationStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LocationStateLoaded _$$LocationStateLoadedFromJson(
        Map<String, dynamic> json) =>
    _$LocationStateLoaded(
      locationLoaded:
          Location.fromJson(json['locationLoaded'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationStateLoadedToJson(
        _$LocationStateLoaded instance) =>
    <String, dynamic>{
      'locationLoaded': instance.locationLoaded,
      'runtimeType': instance.$type,
    };

_$LocationStateError _$$LocationStateErrorFromJson(Map<String, dynamic> json) =>
    _$LocationStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationStateErrorToJson(
        _$LocationStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
