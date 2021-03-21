import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:Postly/features/posts/presentation/widgets/post_item.dart';
import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  final List<PostModel> posts;

  const PostsList({
    this.posts,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);
    return Container(
      padding: EdgeInsets.all(_sc.screenScaledSize(20)),
      child: ListView.builder(
        itemCount: posts.length,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, i) => PostItem(
          posts[i],
          position: i + 1,
        ),
      ),
    );
  }
}
