part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.fetch({
    required String name,
    required int page,
  }) = LocationEventFetch;
}
