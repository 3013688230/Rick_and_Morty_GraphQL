// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  String get name => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEventCopyWith<LocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationEventFetchCopyWith<$Res>
    implements $LocationEventCopyWith<$Res> {
  factory _$$LocationEventFetchCopyWith(_$LocationEventFetch value,
          $Res Function(_$LocationEventFetch) then) =
      __$$LocationEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class __$$LocationEventFetchCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationEventFetch>
    implements _$$LocationEventFetchCopyWith<$Res> {
  __$$LocationEventFetchCopyWithImpl(
      _$LocationEventFetch _value, $Res Function(_$LocationEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_$LocationEventFetch(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LocationEventFetch implements LocationEventFetch {
  const _$LocationEventFetch({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString() {
    return 'LocationEvent.fetch(name: $name, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationEventFetch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationEventFetchCopyWith<_$LocationEventFetch> get copyWith =>
      __$$LocationEventFetchCopyWithImpl<_$LocationEventFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) {
    return fetch(name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) {
    return fetch?.call(name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class LocationEventFetch implements LocationEvent {
  const factory LocationEventFetch(
      {required final String name,
      required final int page}) = _$LocationEventFetch;

  @override
  String get name;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$LocationEventFetchCopyWith<_$LocationEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationState _$LocationStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return LocationStateLoading.fromJson(json);
    case 'loaded':
      return LocationStateLoaded.fromJson(json);
    case 'error':
      return LocationStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LocationState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location locationLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Location locationLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location locationLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationStateLoadingCopyWith<$Res> {
  factory _$$LocationStateLoadingCopyWith(_$LocationStateLoading value,
          $Res Function(_$LocationStateLoading) then) =
      __$$LocationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStateLoadingCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateLoading>
    implements _$$LocationStateLoadingCopyWith<$Res> {
  __$$LocationStateLoadingCopyWithImpl(_$LocationStateLoading _value,
      $Res Function(_$LocationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LocationStateLoading implements LocationStateLoading {
  const _$LocationStateLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$LocationStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$LocationStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location locationLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Location locationLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location locationLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationStateLoadingToJson(
      this,
    );
  }
}

abstract class LocationStateLoading implements LocationState {
  const factory LocationStateLoading() = _$LocationStateLoading;

  factory LocationStateLoading.fromJson(Map<String, dynamic> json) =
      _$LocationStateLoading.fromJson;
}

/// @nodoc
abstract class _$$LocationStateLoadedCopyWith<$Res> {
  factory _$$LocationStateLoadedCopyWith(_$LocationStateLoaded value,
          $Res Function(_$LocationStateLoaded) then) =
      __$$LocationStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Location locationLoaded});

  $LocationCopyWith<$Res> get locationLoaded;
}

/// @nodoc
class __$$LocationStateLoadedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateLoaded>
    implements _$$LocationStateLoadedCopyWith<$Res> {
  __$$LocationStateLoadedCopyWithImpl(
      _$LocationStateLoaded _value, $Res Function(_$LocationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationLoaded = null,
  }) {
    return _then(_$LocationStateLoaded(
      locationLoaded: null == locationLoaded
          ? _value.locationLoaded
          : locationLoaded // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get locationLoaded {
    return $LocationCopyWith<$Res>(_value.locationLoaded, (value) {
      return _then(_value.copyWith(locationLoaded: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationStateLoaded implements LocationStateLoaded {
  const _$LocationStateLoaded(
      {required this.locationLoaded, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$LocationStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$LocationStateLoadedFromJson(json);

  @override
  final Location locationLoaded;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationState.loaded(locationLoaded: $locationLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateLoaded &&
            (identical(other.locationLoaded, locationLoaded) ||
                other.locationLoaded == locationLoaded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateLoadedCopyWith<_$LocationStateLoaded> get copyWith =>
      __$$LocationStateLoadedCopyWithImpl<_$LocationStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location locationLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(locationLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Location locationLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(locationLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location locationLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(locationLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationStateLoadedToJson(
      this,
    );
  }
}

abstract class LocationStateLoaded implements LocationState {
  const factory LocationStateLoaded({required final Location locationLoaded}) =
      _$LocationStateLoaded;

  factory LocationStateLoaded.fromJson(Map<String, dynamic> json) =
      _$LocationStateLoaded.fromJson;

  Location get locationLoaded;
  @JsonKey(ignore: true)
  _$$LocationStateLoadedCopyWith<_$LocationStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationStateErrorCopyWith<$Res> {
  factory _$$LocationStateErrorCopyWith(_$LocationStateError value,
          $Res Function(_$LocationStateError) then) =
      __$$LocationStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStateErrorCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateError>
    implements _$$LocationStateErrorCopyWith<$Res> {
  __$$LocationStateErrorCopyWithImpl(
      _$LocationStateError _value, $Res Function(_$LocationStateError) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LocationStateError implements LocationStateError {
  const _$LocationStateError({final String? $type}) : $type = $type ?? 'error';

  factory _$LocationStateError.fromJson(Map<String, dynamic> json) =>
      _$$LocationStateErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationStateError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location locationLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Location locationLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location locationLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
    required TResult Function(LocationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
    TResult? Function(LocationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    TResult Function(LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationStateErrorToJson(
      this,
    );
  }
}

abstract class LocationStateError implements LocationState {
  const factory LocationStateError() = _$LocationStateError;

  factory LocationStateError.fromJson(Map<String, dynamic> json) =
      _$LocationStateError.fromJson;
}
