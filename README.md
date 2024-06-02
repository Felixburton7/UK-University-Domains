# University Domain pulled from an API, with search capabilities

## Project Description

This project is a Flutter application that allows users to search for university information by name. The data is fetched from the [Hipolabs University API](http://universities.hipolabs.com/search?name=middle). The application is built using the Clean Architecture principles, ensuring a clear separation of concerns across different layers.

## Project Structure

The project follows Test-Driven Development (TDD) practices and is organized into three main layers:

1. Data Layer
2. Domain Layer
3. Presentation Layer

### Data Layer

The data layer is responsible for handling data retrieval and storage. It interacts with external data sources (such as APIs) and converts the raw data into usable models.

**Key Components:**
- **Data Sources:** Classes responsible for fetching data from the API.
- **Models:** Data structures representing the fetched data.

**Files:**
- `data/datasources/getting_article_data_source.dart`
- `data/models/article_model.dart`
- `data/repos/implemented_article_repo.dart`

 **How to run:**
 Simply clone, download dependencies and enter 'Flutter run' !

**Example:**
```dart
class GettingArticleDataSource {
  static const String url = 'http://universities.hipolabs.com/search?name=';

  Future<List<ArticleModel>> fetchAllArticles() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((article) => ArticleModel.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
