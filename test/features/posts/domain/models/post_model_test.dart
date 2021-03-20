import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  PostModel model;

  Map<String, dynamic> json;

  setUp(() {
    json = <String, dynamic>{
      "userId": 1,
      "id": 2,
      "title": "qui est esse",
      "body": "est rerum tempore vitae",
    };

    model = const PostModel(
      userId: 1,
      id: 2,
      title: 'qui est esse',
      body: 'est rerum tempore vitae',
    );
  });

  test('fromJson returns a PostModel', () => expect(PostModel.fromJson(json), model));

  test('toJson returns a valid Map<String, dynamic>', () => expect(model.toJson(), json));
}
