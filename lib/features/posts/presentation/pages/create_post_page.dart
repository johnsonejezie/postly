import 'package:Postly/core/platform/app_theme.dart';
import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key key}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
// context.read<PostsCubit>()
          Navigator.of(context).pop();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Icon(Icons.send),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(sc.screenScaledSize(20)),
          child: Column(children: [
            Text(
              'Create new post',
              style: sc.h4Theme,
            ),
            SizedBox(height: sc.screenScaledSize(150)),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(color: AppColors.grey),
              ),
            ),
            SizedBox(height: sc.screenScaledSize(50)),
            TextFormField(
              controller: bodyController,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText: "Body",
                hintStyle: TextStyle(color: AppColors.grey),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
