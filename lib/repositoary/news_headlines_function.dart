import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_application/model/catogeries_news_model.dart';
import 'package:news_application/model/channel_news_model.dart';

class NewsHeadlineFunctionality {
  Future<ChannelNewsHeadlineModel> bbcNewsHeadlineFunction(
      String source) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=$source&apiKey=bd3e3f3aed174ee78095efa2331badde';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return ChannelNewsHeadlineModel.fromJson(body);
    }
    throw Exception('Something went wrong');
  }

  Future<CategoriesNewsModel> categoriesNewsFuction(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=$category&apiKey=bd3e3f3aed174ee78095efa2331badde';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CategoriesNewsModel.fromJson(body);
    }
    throw Exception("Failed to connect");
  }
}
