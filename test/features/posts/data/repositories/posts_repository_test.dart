import 'package:Postly/core/data/network/network_service_impl.dart';
import 'package:Postly/core/failures.dart';
import 'package:Postly/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:Postly/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/posts_data.dart';

class MockRemoteDataSource extends Mock implements PostsRemoteDatasource {}

void main() {
  PostsRepositoryImpl testSubject;
  final remoteDatasource = MockRemoteDataSource();

  setUp(() {
    testSubject = PostsRepositoryImpl(remoteDatasource);
  });

  group('Server', () {
    test('fetchPosts calls remoteDatasource\'s fetchPosts', () {
      testSubject.fetchPosts();

      verify(remoteDatasource.fetchPosts());
      verifyNoMoreInteractions(remoteDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(remoteDatasource);
    });

    test('fetchPosts returns a list of PostModels from server', () async {
      when(remoteDatasource.fetchPosts()).thenAnswer((_) async => postsSample);
      final _posts = await testSubject.fetchPosts();

      expect(_posts, postsSample);
    });
  });

  group('Error handling', () {
    test('Throws a NetworkFailure on network operation exception', () {
      when(remoteDatasource.fetchPosts()).thenThrow(ApiFailure(ApiErrors.failure, ''));

      expectLater(() async => testSubject.fetchPosts(), throwsA(isA<NetworkFailure>()));
    });
  });
}
