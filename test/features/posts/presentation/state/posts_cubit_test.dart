import 'package:Postly/core/failures.dart';
import 'package:Postly/features/posts/domain/usecases/fetch_posts.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../core/mocks/mock_hydtrated_storage.dart';
import '../../fixtures/posts_data.dart';

class MockFetchPosts extends Mock implements FetchPosts {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();

  final _fetchPosts = MockFetchPosts();

  // Mock Usecase Responses
  when(_fetchPosts.call(any)).thenAnswer((_) async => const Right(postsSample));

  group('Posts Cubit', () {
    test(
      'Initial behaviour: PostsCubit is initialised with empty list (and reads cached data from hydrated storage)',
      () {
        final cubit = PostsCubit(_fetchPosts);
        expect(cubit.state.payload.posts, []);
        expect(cubit.state.payload.error, '');
      },
    );

    test(
      'PostsCubit fromJson returns a valid PostsState, even with badly formed data',
      () {
        final cubit = PostsCubit(_fetchPosts);
        expect(cubit.fromJson({}), isA<PostsState>());
        expect(
            cubit.fromJson({'wrong': 'data'}),
            const PostsState.initial(
                payload: PostsStatePayload(
              posts: [],
              error: '',
            )));
      },
    );

    test('PostsCubit fetchPosts emits loading, then loaded, with payload populated with returned data', () async {
      final cubit = PostsCubit(_fetchPosts);

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<PostsState>[
            PostsState.loading(payload: cubit.state.payload.copyWith(posts: [])),
            PostsState.loaded(payload: cubit.state.payload.copyWith(posts: postsSample)),
          ]));

      await cubit.fetchPosts();

      verify(_fetchPosts.call());
    });

    test('PostsCubit fetchPosts emits loading, then error, with error message, if something goes wrong', () async {
      final cubit = PostsCubit(_fetchPosts);

      when(_fetchPosts.call(any)).thenAnswer((_) async => const Left(UIError('error')));

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<PostsState>[
            PostsState.loading(payload: cubit.state.payload.copyWith(posts: [])),
            PostsState.error(payload: cubit.state.payload.copyWith(error: 'error')),
          ]));

      await cubit.fetchPosts();

      verify(_fetchPosts.call());
    });
  });
}
