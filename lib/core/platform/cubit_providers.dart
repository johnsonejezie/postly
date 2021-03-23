import 'package:Postly/features/posts/domain/posts_module_injector.dart';
import 'package:Postly/features/posts/domain/usecases/create_post.dart';
import 'package:Postly/features/posts/domain/usecases/fetch_posts.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:Postly/features/user/domain/usecases/fetch_user.dart';
import 'package:Postly/features/user/domain/usecases/reset_points.dart';
import 'package:Postly/features/user/domain/user_module_injector.dart';
import 'package:Postly/features/user/presentation/state/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final providers = [
  BlocProvider<PostsCubit>(
    create: (_) => PostsCubit(
      PostsModuleInjector.resolve<FetchPosts>(),
      PostsModuleInjector.resolve<CreatePost>(),
    )..fetchPosts(),
  ),
  BlocProvider<UserCubit>(
    create: (_) => UserCubit(
      UserModuleInjector.resolve<FetchUser>(),
      UserModuleInjector.resolve<ResetPoints>(),
    )..fetchUser(),
  ),
];
