import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../data/models/locations_model/locations.dart';
import '../../data/repositories/location_repo.dart';

part 'location_bloc.freezed.dart';
part 'location_bloc.g.dart';
part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState>
    with HydratedMixin {
  final LocationRepo locationRepo;
  LocationBloc({required this.locationRepo})
      : super(const LocationState.loading()) {
    on<LocationEventFetch>((event, emit) async {
      emit(const LocationState.loading());
      try {
        Location _locationLoaded = await locationRepo
            .getLocation(event.page, event.name)
            .timeout(const Duration(seconds: 5));
        emit(LocationState.loaded(locationLoaded: _locationLoaded));
      } catch (_) {
        emit(const LocationState.error());
        rethrow;
      }
    });
  }

  @override
  LocationState? fromJson(Map<String, dynamic> json) =>
      LocationState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(LocationState state) => state.toJson();
}
