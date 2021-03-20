import 'package:Postly/core/data/network/network_service_impl.dart';
import 'package:Postly/core/failures.dart';
import 'package:Postly/features/user/data/datasources/user_remote_datasource.dart';
import 'package:Postly/features/user/data/repositories/user_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/user_data.dart';

class MockRemoteDataSource extends Mock implements UserRemoteDatasource {}

void main() {
  UserRepositoryImpl testSubject;
  final remoteDatasource = MockRemoteDataSource();

  setUp(() {
    testSubject = UserRepositoryImpl(remoteDatasource);
  });

  group('Server', () {
    test('fetchUser calls remoteDatasource\'s fetchUser', () {
      testSubject.fetchUser();

      verify(remoteDatasource.fetchUser());
      verifyNoMoreInteractions(remoteDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(remoteDatasource);
    });

    test('fetchUser returns a UserModel from server', () async {
      when(remoteDatasource.fetchUser()).thenAnswer((_) async => userModel);

      final _user = await testSubject.fetchUser();
      expect(_user, userModel);
    });
  });

  group('Error handling', () {
    test('Throws a NetworkFailure on network operation exception', () {
      when(remoteDatasource.fetchUser()).thenThrow(ApiFailure(ApiErrors.failure, ''));

      expectLater(() async => testSubject.fetchUser(), throwsA(isA<NetworkFailure>()));
    });
  });
}
