import 'package:Postly/core/data/network/network_service.dart';
import 'package:Postly/core/data/network/network_service_impl.dart';
import 'package:Postly/core/failures.dart';
import 'package:Postly/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/posts_data.dart';

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  PostsRemoteDatasourceImpl testSubject;
  final networkService = MockNetworkService();

  setUp(() {
    testSubject = PostsRemoteDatasourceImpl(networkService);
  });

  group('Operations', () {
    test('fetchPosts returns a succefully deserialised List<PostModel> from server', () async {
      when(networkService.getHttp(argThat(isA<String>()))).thenAnswer((_) async => {
            "data": postsSampleJson,
            "error": null,
          });

      final result = await testSubject.fetchPosts();

      expect(result, postsSample);
    });
  });

  group('Error handling', () {
    test('Throws an ApiFailure on server error', () {
      when(networkService.getHttp(argThat(isA<String>()))).thenAnswer(
        (_) async => <String, dynamic>{
          'error': ApiErrors.failure,
          'message': 'error',
        },
      );

      expectLater(() async => testSubject.fetchPosts(), throwsA(isA<ApiFailure>()));
    });

    test('Throws an Exception on unexpected exception', () {
      when(networkService.getHttp(argThat(isA<String>()))).thenThrow(Exception());

      expect(() => testSubject.fetchPosts(), throwsA(isA<Exception>()));
    });
  });
}
