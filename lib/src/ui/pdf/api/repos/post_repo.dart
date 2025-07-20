import 'dart:convert';
import 'dart:developer';

import 'package:task_project/src/ui/pdf/api/model/post_data_ui_model.dart';
import 'package:http/http.dart' as http;

class PostRepo {
  static Future<List<PostDataUiModel>> getPosts() async {
    List<PostDataUiModel> posts = [];
    try {
      final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        List allData = jsonDecode(response.body);
        // log(response.body);
        for (var i = 0; i < allData.length; i++) {
          PostDataUiModel post = PostDataUiModel.fromMap(
            allData[i] as Map<String, dynamic>,
          );
          posts.add(post);
        }

        // log('here:  ${posts.toString()}');
      } else {
        log(response.statusCode.toString());
      }
      return posts;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
