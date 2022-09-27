import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newnoticias/models/article.model.dart';

class ArticuloProvider {
  Future<List<ArticleModel>> getArticles(String q) async {
    List<ArticleModel> articles = [];
    var client = http.Client();
    try {
      Map<String, String> parametros = {
        'q': q,
        'from': '2022-09-10',
        'sortBy': 'publishedAt',
        'apiKey': 'aee95d27cff5438696886c5f62c1c013'
      };

      //var url = Uri.https('https://newsapi.org', 'v2/everything', parametros);
      var response = await client
          .get(Uri.https('newsapi.org', 'v2/everything', parametros));

      var decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      decodedResponse['articles']
          .forEach((item) => articles.add(ArticleModel.fromJson(item)));

      return articles;
    } finally {
      client.close();
    }
  }
}
