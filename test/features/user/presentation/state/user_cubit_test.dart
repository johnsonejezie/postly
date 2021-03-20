import 'package:Postly/core/failures.dart';
import 'package:Postly/features/user/presentation/state/user_cubit.dart';
import 'package:Postly/features/user/domain/usecases/fetch_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../core/mocks/mock_hydtrated_storage.dart';
import '../../fixtures/user_data.dart';

class MockFetchUser extends Mock implements FetchUser {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();

  final _fetchUser = MockFetchUser();

  // Mock Usecase Responses
  when(_fetchUser.call(any)).thenAnswer((_) async => const Right(userModel));

  group('User Cubit', () {
    test(
      'Initial behaviour: UserCubit is initialised with null user and empty error',
      () {
        final cubit = UserCubit(_fetchUser);
        expect(cubit.state.payload.user, null);
        expect(cubit.state.payload.error, '');
      },
    );

    test(
      'UserCubit fromJson returns a valid UserState, even with badly formed data',
      () {
        final cubit = UserCubit(_fetchUser);
        expect(cubit.fromJson({}), isA<UserState>());
        expect(
          cubit.fromJson({'wrong': 'data'}),
          const UserState.initial(payload: UserStatePayload(user: null, error: '')),
        );
      },
    );

    test(
        'UserCubit fetchUser emits loading, then loaded, with payload populated with returned data; and does not work anymore for further calls',
        () async {
      final cubit = UserCubit(_fetchUser);

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<UserState>[
            UserState.loading(payload: cubit.state.payload.copyWith(user: null)),
            UserState.loaded(payload: cubit.state.payload.copyWith(user: userModel)),
          ]));

      await cubit.fetchUser();
      verify(_fetchUser.call());

      clearInteractions(_fetchUser);
      await cubit.fetchUser();
      verifyZeroInteractions(_fetchUser);
    });

    test('UserCubit fetchUser emits loading, then error, with error message, if something goes wrong', () async {
      final cubit = UserCubit(_fetchUser);

      when(_fetchUser.call(any)).thenAnswer((_) async => const Left(UIError('error')));

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<UserState>[
            UserState.loading(payload: cubit.state.payload.copyWith(user: null)),
            UserState.error(payload: cubit.state.payload.copyWith(error: 'error')),
          ]));

      await cubit.fetchUser();

      verify(_fetchUser.call());
    });
  });
}
