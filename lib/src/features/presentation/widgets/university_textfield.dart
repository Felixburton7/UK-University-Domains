import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_flutter_pp_fun/src/features/presentation/bloc/articles_bloc.dart';

class UniversityTextField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ArticlesBloc articlesBloc;

  UniversityTextField({required this.articlesBloc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Enter University Name',
            border: OutlineInputBorder(),
          ),
          onSubmitted: (value) {
            articlesBloc.add(FetchArticlesEvent(value));
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
