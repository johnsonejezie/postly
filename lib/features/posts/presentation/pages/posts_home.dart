import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:Postly/features/posts/presentation/widgets/posts_list.dart';
import 'package:Postly/features/user/presentation/state/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_post_page.dart';

class PostsHome extends StatelessWidget {
  const PostsHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const CreatePostPage()),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        label: Row(
          children: const [
            Icon(Icons.add),
            SizedBox(width: 5),
            Text("Create post"),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<UserCubit, UserState>(
              builder: (_, state) => state.maybeWhen(
                loading: (_) => const CircularProgressIndicator(),
                loaded: (payload) => Container(
                  padding: EdgeInsets.all(sc.screenScaledSize(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "  Hi, ${payload.user.username}",
                          style: sc.h4Theme,
                        ),
                      ),
                      Text(
                        "${payload.user.points < 6 ? 'Beginner' : payload.user.points < 10 ? 'Intermediate' : payload.user.points < 17 ? 'Professional' : 'Legend'} (${payload.user.points})",
                      ),
                    ],
                  ),
                ),
                orElse: () => const SizedBox(),
              ),
            ),

            // POSTS
            Expanded(
              child: BlocBuilder<PostsCubit, PostsState>(
                builder: (_, state) => state.maybeWhen(
                  loading: (_) => const Center(child: CircularProgressIndicator()),
                  loaded: (payload) => PostsList(posts: payload.posts),
                  creatingPost: (payload) => PostsList(posts: payload.posts),
                  postCreated: (payload) => PostsList(posts: payload.posts),
                  orElse: () => const SizedBox(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
