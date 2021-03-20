import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final providers = [
  BlocProvider<PostsCubit>(
    create: (_) => PostsCubit(),
  ),
];
