import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:four_flutter_pp_fun/src/features/data/models/article_model.dart';

class GettingArticleDataSource {
  static const String url = 'http://universities.hipolabs.com/search?name=';

  Future<List<ArticleModel>> fetchArticles() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((article) => ArticleModel.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
