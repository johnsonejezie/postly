import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/user/presentation/state/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsHome extends StatelessWidget {
  const PostsHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (_, state) => state.maybeWhen(
            loading: (_) => const CircularProgressIndicator(),
            loaded: (payload) => Container(
              padding: EdgeInsets.all(sc.screenScaledSize(20)),
              child: Column(children: [
                Text(
                  "Hi, ${payload.user.username}",
                  style: sc.h4Theme,
                ),
              ]),
            ),
            orElse: () => const SizedBox(),
          ),
        ),
      ),
    );
  }
}
