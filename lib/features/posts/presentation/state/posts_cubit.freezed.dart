// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostsState _$PostsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'initial':
      return _InitialPostsState.fromJson(json);
    case 'loading':
      return _LoadingPostsState.fromJson(json);
    case 'loaded':
      return _LoadedPostsState.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PostsStateTearOff {
  const _$PostsStateTearOff();

// ignore: unused_element
  _InitialPostsState initial({@required PostsStatePayload payload}) {
    return _InitialPostsState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadingPostsState loading({@required PostsStatePayload payload}) {
    return _LoadingPostsState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadedPostsState loaded({@required PostsStatePayload payload}) {
    return _LoadedPostsState(
      payload: payload,
    );
  }

// ignore: unused_element
  PostsState fromJson(Map<String, Object> json) {
    return PostsState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostsState = _$PostsStateTearOff();

/// @nodoc
mixin _$PostsState {
  PostsStatePayload get payload;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(PostsStatePayload payload),
    @required TResult loading(PostsStatePayload payload),
    @required TResult loaded(PostsStatePayload payload),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(PostsStatePayload payload),
    TResult loading(PostsStatePayload payload),
    TResult loaded(PostsStatePayload payload),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialPostsState value),
    @required TResult loading(_LoadingPostsState value),
    @required TResult loaded(_LoadedPostsState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialPostsState value),
    TResult loading(_LoadingPostsState value),
    TResult loaded(_LoadedPostsState value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
  $Res call({PostsStatePayload payload});

  $PostsStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload:
          payload == freezed ? _value.payload : payload as PostsStatePayload,
    ));
  }

  @override
  $PostsStatePayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $PostsStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$InitialPostsStateCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$InitialPostsStateCopyWith(
          _InitialPostsState value, $Res Function(_InitialPostsState) then) =
      __$InitialPostsStateCopyWithImpl<$Res>;
  @override
  $Res call({PostsStatePayload payload});

  @override
  $PostsStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$InitialPostsStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$InitialPostsStateCopyWith<$Res> {
  __$InitialPostsStateCopyWithImpl(
      _InitialPostsState _value, $Res Function(_InitialPostsState) _then)
      : super(_value, (v) => _then(v as _InitialPostsState));

  @override
  _InitialPostsState get _value => super._value as _InitialPostsState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_InitialPostsState(
      payload:
          payload == freezed ? _value.payload : payload as PostsStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InitialPostsState implements _InitialPostsState {
  const _$_InitialPostsState({@required this.payload})
      : assert(payload != null);

  factory _$_InitialPostsState.fromJson(Map<String, dynamic> json) =>
      _$_$_InitialPostsStateFromJson(json);

  @override
  final PostsStatePayload payload;

  @override
  String toString() {
    return 'PostsState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialPostsState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$InitialPostsStateCopyWith<_InitialPostsState> get copyWith =>
      __$InitialPostsStateCopyWithImpl<_InitialPostsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(PostsStatePayload payload),
    @required TResult loading(PostsStatePayload payload),
    @required TResult loaded(PostsStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(PostsStatePayload payload),
    TResult loading(PostsStatePayload payload),
    TResult loaded(PostsStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialPostsState value),
    @required TResult loading(_LoadingPostsState value),
    @required TResult loaded(_LoadedPostsState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialPostsState value),
    TResult loading(_LoadingPostsState value),
    TResult loaded(_LoadedPostsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitialPostsStateToJson(this)..['runtimeType'] = 'initial';
  }
}

abstract class _InitialPostsState implements PostsState {
  const factory _InitialPostsState({@required PostsStatePayload payload}) =
      _$_InitialPostsState;

  factory _InitialPostsState.fromJson(Map<String, dynamic> json) =
      _$_InitialPostsState.fromJson;

  @override
  PostsStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$InitialPostsStateCopyWith<_InitialPostsState> get copyWith;
}

/// @nodoc
abstract class _$LoadingPostsStateCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$LoadingPostsStateCopyWith(
          _LoadingPostsState value, $Res Function(_LoadingPostsState) then) =
      __$LoadingPostsStateCopyWithImpl<$Res>;
  @override
  $Res call({PostsStatePayload payload});

  @override
  $PostsStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadingPostsStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$LoadingPostsStateCopyWith<$Res> {
  __$LoadingPostsStateCopyWithImpl(
      _LoadingPostsState _value, $Res Function(_LoadingPostsState) _then)
      : super(_value, (v) => _then(v as _LoadingPostsState));

  @override
  _LoadingPostsState get _value => super._value as _LoadingPostsState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadingPostsState(
      payload:
          payload == freezed ? _value.payload : payload as PostsStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoadingPostsState implements _LoadingPostsState {
  const _$_LoadingPostsState({@required this.payload})
      : assert(payload != null);

  factory _$_LoadingPostsState.fromJson(Map<String, dynamic> json) =>
      _$_$_LoadingPostsStateFromJson(json);

  @override
  final PostsStatePayload payload;

  @override
  String toString() {
    return 'PostsState.loading(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingPostsState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadingPostsStateCopyWith<_LoadingPostsState> get copyWith =>
      __$LoadingPostsStateCopyWithImpl<_LoadingPostsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(PostsStatePayload payload),
    @required TResult loading(PostsStatePayload payload),
    @required TResult loaded(PostsStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(PostsStatePayload payload),
    TResult loading(PostsStatePayload payload),
    TResult loaded(PostsStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialPostsState value),
    @required TResult loading(_LoadingPostsState value),
    @required TResult loaded(_LoadedPostsState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialPostsState value),
    TResult loading(_LoadingPostsState value),
    TResult loaded(_LoadedPostsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoadingPostsStateToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class _LoadingPostsState implements PostsState {
  const factory _LoadingPostsState({@required PostsStatePayload payload}) =
      _$_LoadingPostsState;

  factory _LoadingPostsState.fromJson(Map<String, dynamic> json) =
      _$_LoadingPostsState.fromJson;

  @override
  PostsStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadingPostsStateCopyWith<_LoadingPostsState> get copyWith;
}

/// @nodoc
abstract class _$LoadedPostsStateCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$LoadedPostsStateCopyWith(
          _LoadedPostsState value, $Res Function(_LoadedPostsState) then) =
      __$LoadedPostsStateCopyWithImpl<$Res>;
  @override
  $Res call({PostsStatePayload payload});

  @override
  $PostsStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadedPostsStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$LoadedPostsStateCopyWith<$Res> {
  __$LoadedPostsStateCopyWithImpl(
      _LoadedPostsState _value, $Res Function(_LoadedPostsState) _then)
      : super(_value, (v) => _then(v as _LoadedPostsState));

  @override
  _LoadedPostsState get _value => super._value as _LoadedPostsState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadedPostsState(
      payload:
          payload == freezed ? _value.payload : payload as PostsStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoadedPostsState implements _LoadedPostsState {
  const _$_LoadedPostsState({@required this.payload}) : assert(payload != null);

  factory _$_LoadedPostsState.fromJson(Map<String, dynamic> json) =>
      _$_$_LoadedPostsStateFromJson(json);

  @override
  final PostsStatePayload payload;

  @override
  String toString() {
    return 'PostsState.loaded(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedPostsState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadedPostsStateCopyWith<_LoadedPostsState> get copyWith =>
      __$LoadedPostsStateCopyWithImpl<_LoadedPostsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(PostsStatePayload payload),
    @required TResult loading(PostsStatePayload payload),
    @required TResult loaded(PostsStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(PostsStatePayload payload),
    TResult loading(PostsStatePayload payload),
    TResult loaded(PostsStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialPostsState value),
    @required TResult loading(_LoadingPostsState value),
    @required TResult loaded(_LoadedPostsState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialPostsState value),
    TResult loading(_LoadingPostsState value),
    TResult loaded(_LoadedPostsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoadedPostsStateToJson(this)..['runtimeType'] = 'loaded';
  }
}

abstract class _LoadedPostsState implements PostsState {
  const factory _LoadedPostsState({@required PostsStatePayload payload}) =
      _$_LoadedPostsState;

  factory _LoadedPostsState.fromJson(Map<String, dynamic> json) =
      _$_LoadedPostsState.fromJson;

  @override
  PostsStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadedPostsStateCopyWith<_LoadedPostsState> get copyWith;
}

PostsStatePayload _$PostsStatePayloadFromJson(Map<String, dynamic> json) {
  return _PostsStatePayload.fromJson(json);
}

/// @nodoc
class _$PostsStatePayloadTearOff {
  const _$PostsStatePayloadTearOff();

// ignore: unused_element
  _PostsStatePayload call({@required List<PostModel> posts}) {
    return _PostsStatePayload(
      posts: posts,
    );
  }

// ignore: unused_element
  PostsStatePayload fromJson(Map<String, Object> json) {
    return PostsStatePayload.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostsStatePayload = _$PostsStatePayloadTearOff();

/// @nodoc
mixin _$PostsStatePayload {
  List<PostModel> get posts;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PostsStatePayloadCopyWith<PostsStatePayload> get copyWith;
}

/// @nodoc
abstract class $PostsStatePayloadCopyWith<$Res> {
  factory $PostsStatePayloadCopyWith(
          PostsStatePayload value, $Res Function(PostsStatePayload) then) =
      _$PostsStatePayloadCopyWithImpl<$Res>;
  $Res call({List<PostModel> posts});
}

/// @nodoc
class _$PostsStatePayloadCopyWithImpl<$Res>
    implements $PostsStatePayloadCopyWith<$Res> {
  _$PostsStatePayloadCopyWithImpl(this._value, this._then);

  final PostsStatePayload _value;
  // ignore: unused_field
  final $Res Function(PostsStatePayload) _then;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed ? _value.posts : posts as List<PostModel>,
    ));
  }
}

/// @nodoc
abstract class _$PostsStatePayloadCopyWith<$Res>
    implements $PostsStatePayloadCopyWith<$Res> {
  factory _$PostsStatePayloadCopyWith(
          _PostsStatePayload value, $Res Function(_PostsStatePayload) then) =
      __$PostsStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({List<PostModel> posts});
}

/// @nodoc
class __$PostsStatePayloadCopyWithImpl<$Res>
    extends _$PostsStatePayloadCopyWithImpl<$Res>
    implements _$PostsStatePayloadCopyWith<$Res> {
  __$PostsStatePayloadCopyWithImpl(
      _PostsStatePayload _value, $Res Function(_PostsStatePayload) _then)
      : super(_value, (v) => _then(v as _PostsStatePayload));

  @override
  _PostsStatePayload get _value => super._value as _PostsStatePayload;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_PostsStatePayload(
      posts: posts == freezed ? _value.posts : posts as List<PostModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostsStatePayload implements _PostsStatePayload {
  const _$_PostsStatePayload({@required this.posts}) : assert(posts != null);

  factory _$_PostsStatePayload.fromJson(Map<String, dynamic> json) =>
      _$_$_PostsStatePayloadFromJson(json);

  @override
  final List<PostModel> posts;

  @override
  String toString() {
    return 'PostsStatePayload(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsStatePayload &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  _$PostsStatePayloadCopyWith<_PostsStatePayload> get copyWith =>
      __$PostsStatePayloadCopyWithImpl<_PostsStatePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostsStatePayloadToJson(this);
  }
}

abstract class _PostsStatePayload implements PostsStatePayload {
  const factory _PostsStatePayload({@required List<PostModel> posts}) =
      _$_PostsStatePayload;

  factory _PostsStatePayload.fromJson(Map<String, dynamic> json) =
      _$_PostsStatePayload.fromJson;

  @override
  List<PostModel> get posts;
  @override
  @JsonKey(ignore: true)
  _$PostsStatePayloadCopyWith<_PostsStatePayload> get copyWith;
}
