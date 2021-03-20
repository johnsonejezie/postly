part of 'posts_cubit.dart';

@freezed
abstract class PostsState with _$PostsState {
  const factory PostsState.initial({@required PostsStatePayload payload}) = _InitialPostsState;
  const factory PostsState.loading({@required PostsStatePayload payload}) = _LoadingPostsState;
  const factory PostsState.loaded({@required PostsStatePayload payload}) = _LoadedPostsState;

  factory PostsState.fromJson(Map<String, dynamic> json) => _$PostsStateFromJson(json);
}

@freezed
abstract class PostsStatePayload with _$PostsStatePayload {
  const factory PostsStatePayload({
    @required List<PostModel> posts,
  }) = _PostsStatePayload;

  factory PostsStatePayload.fromJson(Map json) =>
      _$PostsStatePayloadFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
