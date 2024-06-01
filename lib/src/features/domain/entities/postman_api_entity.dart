// Model for data

abstract class Article {
  final List<String> domains;
  final String name;
  final String country;
  final List<String> webPages;

  Article(
      {required this.webPages,
      required this.domains,
      required this.name,
      required this.country});
}

// [{"domains": ["middlebury.edu"], "name": "Middlebury College", "state-province": null, "country": "United States", "alpha_two_code": "US", "web_pages": ["http://www.middlebury.edu/"]},

// {"domains": ["aum.edu.kw"], "name": "American University of Middle East", "state-province": null, "country": "Kuwait", "alpha_two_code": "KW", "web_pages": ["http://www.aum.edu.kw/"]},

// {"domains": ["middlesbro.ac.uk", "mbro.ac.uk"], "name": "Middlesbrough College", "state-province": null, "country": "United Kingdom", "alpha_two_code": "GB", "web_pages": ["https://www.mbro.ac.uk/"]},

// {"domains": ["mdx.ac.uk"], "name": "Middlesex University - London", "state-province": null, "country": "United Kingdom", "alpha_two_code": "GB", "web_pages": ["https://www.mdx.ac.uk/"]},

// {"domains": ["middlesexcc.edu"], "name": "Middlesex County College", "state-province": null, "country": "United States", "alpha_two_code": "US", "web_pages": ["http://www.middlesexcc.edu"]}, {"domains": ["middlesex.mass.edu"], "name": "Middlesex Community College", "state-province": null, "country": "United States", "alpha_two_code": "US", "web_pages": ["http://www.middlesex.mass.edu"]}, {"domains": ["mga.edu"], "name": "Middle Georgia State College", "state-province": null, "country": "United States", "alpha_two_code": "US", "web_pages": ["http://www.mga.edu/"]}, {"domains": ["mtsu.edu"], "name": "Middle Tennessee State University", "state-province": null, "country": "United States", "alpha_two_code": "US", "web_pages": ["http://www.mtsu.edu/"]}, {"domains": ["meu.edu.jo"], "name": "Middle East University", "state-province": null, "country": "Jordan", "alpha_two_code": "JO", "web_pages": ["http://www.meu.edu.jo/"]}, {"domains": ["metu.edu.tr"], "name": "Middle East Technical University", "state-province": null, "country": "Turkey", "alpha_two_code": "TR", "web_pages": ["http://www.metu.edu.tr/"]}]
