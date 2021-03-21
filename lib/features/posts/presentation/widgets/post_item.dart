import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final PostModel post;
  final int position;

  const PostItem(
    this.post, {
    this.position,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return Container(
      padding: EdgeInsets.all(_sc.screenScaledSize(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${position ?? ''}${position != null ? '. ' : ''}${post.title}",
            style: _sc.h5Theme,
          ),
          SizedBox(height: _sc.screenScaledSize(10)),
          Text(
            "${post.body}",
            style: _sc.body2Theme,
          ),
          SizedBox(height: _sc.screenScaledSize(20)),
          const Divider(),
        ],
      ),
    );
  }
}
