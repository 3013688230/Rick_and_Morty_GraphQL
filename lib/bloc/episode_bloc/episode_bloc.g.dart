// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeStateLoading _$$EpisodeStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EpisodeStateLoadingToJson(
        _$EpisodeStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EpisodeStateLoaded _$$EpisodeStateLoadedFromJson(Map<String, dynamic> json) =>
    _$EpisodeStateLoaded(
      episodeLoaded:
          Episode.fromJson(json['episodeLoaded'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EpisodeStateLoadedToJson(
        _$EpisodeStateLoaded instance) =>
    <String, dynamic>{
      'episodeLoaded': instance.episodeLoaded,
      'runtimeType': instance.$type,
    };

_$EpisodeStateError _$$EpisodeStateErrorFromJson(Map<String, dynamic> json) =>
    _$EpisodeStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EpisodeStateErrorToJson(_$EpisodeStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
