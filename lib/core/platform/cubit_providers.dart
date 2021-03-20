import 'package:Postly/features/posts/domain/posts_module_injector.dart';
import 'package:Postly/features/posts/domain/usecases/fetch_posts.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final providers = [
  BlocProvider<PostsCubit>(
    create: (_) => PostsCubit(PostsModuleInjector.resolve<FetchPosts>()),
  ),
];
