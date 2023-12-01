import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_hub/models/artivle_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=8350e985ceb044da91bf2d28c2212209&category=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          url:article['url'],
          title: article['title'],
          subTitle: article['description']);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
