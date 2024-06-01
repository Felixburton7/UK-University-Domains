import 'package:flutter/material.dart';
import 'package:four_flutter_pp_fun/src/features/domain/entities/postman_api_entity.dart';

class UniversityWidget extends StatelessWidget {
  final Article article;

  UniversityWidget({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(article.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Domain: ${article.domains}'),
            Text('Country: ${article.country}'),
          ],
        ),
      ),
    );
  }
}
