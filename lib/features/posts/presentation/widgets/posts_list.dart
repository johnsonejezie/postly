import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:Postly/features/posts/presentation/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsList extends StatefulWidget {
  final List<PostModel> posts;

  const PostsList({
    this.posts,
    Key key,
  }) : super(key: key);

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);
    return Container(
      padding: EdgeInsets.all(_sc.screenScaledSize(20)),
      child: BlocListener<PostsCubit, PostsState>(
        listener: (context, state) {
          state.maybeWhen(
            postCreated: (_) => scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeIn,
            ),
            orElse: () {},
          );
        },
        child: ListView.builder(
          controller: scrollController,
          itemCount: widget.posts.length,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemBuilder: (_, i) => PostItem(
            widget.posts[i],
            position: i + 1,
          ),
        ),
      ),
    );
  }
}
