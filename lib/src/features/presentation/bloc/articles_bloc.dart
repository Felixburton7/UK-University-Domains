import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:four_flutter_pp_fun/src/features/domain/entities/postman_api_entity.dart';
import 'package:four_flutter_pp_fun/src/features/domain/usecases/article_usecase.dart';

part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final GetArticlesUseCase getArticlesUseCase;

  ArticlesBloc(this.getArticlesUseCase) : super(ArticlesInitial()) {
    on<FetchArticlesEvent>(_onFetchArticleEventMethod);
  }

  void _onFetchArticleEventMethod(
      FetchArticlesEvent event, Emitter<ArticlesState> emit) async {
    emit(ArticlesLoading());
    try {
      final articles = await getArticlesUseCase();
      final filteredArticles = articles
          .where((article) => article.name
              .toLowerCase()
              .contains(event.universityName.toLowerCase()))
          .toList();
      emit(ArticlesLoaded(filteredArticles));
    } catch (e) {
      emit(ArticlesError(e.toString()));
    }
  }
}
