import 'package:Postly/core/failures.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:Postly/features/posts/domain/repositories/posts_repository.dart';
import 'package:Postly/features/posts/domain/usecases/fetch_posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

void main() {
  FetchPosts testSubject;

  MockPostsRepository repository;

  final List<PostModel> _posts = [
    const PostModel(id: 1, userId: 1, title: '1', body: '1'),
    const PostModel(id: 2, userId: 2, title: '2', body: '2'),
  ];

  setUp(() {
    repository = MockPostsRepository();
    testSubject = FetchPosts(repository);
  });

  test('fetchPosts returns a list of posts from sever', () async {
    when(repository.fetchPosts()).thenAnswer((_) async => _posts);

    final result = await testSubject();

    expect(result.isRight(), true);
    result.fold(null, (r) => expect(r, _posts));
  });

  // Test failures too
  test('fetchPosts returns an error message upon failure', () async {
    // Test NetworkFailure handling
    when(repository.fetchPosts()).thenThrow(NetworkFailure('message'));

    final result = await testSubject();

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);

    // Test CacheFailure handling
    when(repository.fetchPosts()).thenThrow(CacheFailure('message'));

    final result2 = await testSubject();

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
