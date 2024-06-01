import 'package:four_flutter_pp_fun/src/features/domain/entities/postman_api_entity.dart';

class ArticleModel extends Article {
  final List<String> domains;
  final String name;
  final String country;
  final List<String> webPages;

  ArticleModel({
    required this.domains,
    required this.name,
    required this.country,
    required this.webPages,
  }) : super(
            domains: domains, name: name, country: country, webPages: webPages);

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      domains: List<String>.from(json['domains']),
      name: json['name'],
      country: json['country'],
      webPages: List<String>.from(json['web_pages']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'domains': domains,
      'name': name,
      'country': country,
      'web_pages': webPages,
    };
  }
}
