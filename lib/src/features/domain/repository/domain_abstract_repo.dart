import 'package:four_flutter_pp_fun/src/features/domain/entities/postman_api_entity.dart';

abstract class ArticleRepository {
  Future<List<Article>> getArticle();
}
