import 'package:four_flutter_pp_fun/src/features/domain/entities/postman_api_entity.dart';
import 'package:four_flutter_pp_fun/src/features/domain/repository/domain_abstract_repo.dart';
import 'package:four_flutter_pp_fun/src/features/data/datasources/remote/datasources_article.dart';

class ImplementedArticleRepo implements ArticleRepository {
  final GettingArticleDataSource dataSource;

  ImplementedArticleRepo({required this.dataSource});

  @override
  Future<List<Article>> getArticle() async {
    return await dataSource.fetchArticles();
  }
}
