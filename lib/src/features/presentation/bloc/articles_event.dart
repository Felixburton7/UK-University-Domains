part of 'articles_bloc.dart';

abstract class ArticlesEvent extends Equatable {
  const ArticlesEvent();

  @override
  List<Object> get props => [];
}

class FetchArticlesEvent extends ArticlesEvent {
  final String universityName;

  const FetchArticlesEvent(this.universityName);

  @override
  List<Object> get props => [universityName];
}
