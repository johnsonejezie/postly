import 'package:Postly/core/platform/app_theme.dart';
import 'package:Postly/core/platform/size_config.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:Postly/features/posts/presentation/state/posts_cubit.dart';
import 'package:Postly/features/user/presentation/state/user_cubit.dart';
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

  bool get canCreate => titleController.text.isNotEmpty && bodyController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: canCreate ? Theme.of(context).accentColor : Theme.of(context).disabledColor,
        onPressed: !canCreate
            ? null
            : () {
                context.read<PostsCubit>().createPost(
                      PostModel(
                        id: 0,
                        userId: context.read<UserCubit>().state.payload.user.id,
                        title: titleController.text,
                        body: bodyController.text,
                      ),
                    );
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
              onChanged: (_) => setState(() {}),
              decoration: const InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(color: AppColors.grey),
              ),
            ),
            SizedBox(height: sc.screenScaledSize(50)),
            TextFormField(
              controller: bodyController,
              onChanged: (_) => setState(() {}),
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
