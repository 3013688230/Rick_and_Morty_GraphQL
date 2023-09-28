part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.loading() = LocationStateLoading;
  const factory LocationState.loaded({required Location locationLoaded}) =
      LocationStateLoaded;
  const factory LocationState.error() = LocationStateError;

  factory LocationState.fromJson(Map<String, dynamic> json) =>
      _$LocationStateFromJson(json);
}
