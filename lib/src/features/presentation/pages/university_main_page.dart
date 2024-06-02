import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_flutter_pp_fun/src/features/presentation/bloc/articles_bloc.dart';
import 'package:four_flutter_pp_fun/src/features/presentation/widgets/university_textfield.dart';
import 'package:four_flutter_pp_fun/src/features/presentation/widgets/university_widget.dart';

class UniversityMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('University Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            UniversityTextField(articlesBloc: context.read<ArticlesBloc>()),
            Expanded(
              child: BlocBuilder<ArticlesBloc, ArticlesState>(
                builder: (context, state) {
                  if (state is ArticlesLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is ArticlesLoaded) {
                    return ListView.builder(
                      itemCount: state.articles.length,
                      itemBuilder: (context, index) {
                        final article = state.articles[index];
                        return UniversityWidget(article: article);
                      },
                    );
                  } else if (state is ArticlesError) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else {
                    return Center(child: Text('No data'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
