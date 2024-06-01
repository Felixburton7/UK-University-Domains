import 'package:four_flutter_pp_fun/src/features/domain/entities/postman_api_entity.dart';
import 'package:four_flutter_pp_fun/src/features/domain/repository/domain_abstract_repo.dart';

class GetArticlesUseCase {
  final ArticleRepository repository;

  GetArticlesUseCase({required this.repository});

  Future<List<Article>> call() async {
    return await repository.getArticle();
  }
}
