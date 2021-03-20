import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/platform/app_theme.dart';
import 'core/platform/cubit_providers.dart';
import 'features/posts/presentation/pages/posts_home.dart';

void main() {
  runApp(Postly());
}

class Postly extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: providers,
        child: MaterialApp(
          title: 'Postly',
          debugShowCheckedModeBanner: false,
          theme: appThemeLight,
          home: const PostsHome(),
        ),
      );
}
