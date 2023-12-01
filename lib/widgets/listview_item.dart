import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_hub/services/news_service.dart';

import '../models/artivle_model.dart';
import 'news_item.dart';


class ListViewNewsItem extends StatelessWidget {
 final List <ArticleModel> article;

  const ListViewNewsItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
     childCount: article.length,
     (context, index) {
       return Padding(padding: const EdgeInsets.only(bottom: 22),
       child: NewsItem(articleModel: article[index]),
       );
     },
    ));
  }
}
