import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_flutter_pp_fun/src/features/data/datasources/remote/datasources_article.dart';
import 'package:four_flutter_pp_fun/src/features/data/repos/implemented_article_repo.dart';
import 'package:four_flutter_pp_fun/src/features/domain/usecases/article_usecase.dart';
import 'package:four_flutter_pp_fun/src/features/presentation/bloc/articles_bloc.dart';
import 'package:four_flutter_pp_fun/src/features/presentation/pages/university_main_page.dart';

void main() {
  final dataSource = GettingArticleDataSource();
  final repository = ImplementedArticleRepo(dataSource: dataSource);
  final useCase = GetArticlesUseCase(repository: repository);

  runApp(MyApp(useCase: useCase));
}

class MyApp extends StatelessWidget {
  final GetArticlesUseCase useCase;

  MyApp({required this.useCase});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ArticlesBloc(useCase),
        child: UniversityMainPage(),
      ),
    );
  }
}
