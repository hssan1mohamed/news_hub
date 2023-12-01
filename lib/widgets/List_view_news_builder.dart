import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_hub/models/artivle_model.dart';
import 'package:news_hub/widgets/listview_item.dart';


import '../services/news_service.dart';

class ListViewNewsBuilder extends StatefulWidget {
  final String category;
  const ListViewNewsBuilder({super.key, required this.category});

  @override
  State<ListViewNewsBuilder> createState() => _ListViewNewsBuilderState();
}

class _ListViewNewsBuilderState extends State<ListViewNewsBuilder> {
  var futur;
  @override
  void initState() {
    // TODO: implement initState

    futur=NewsService(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futur,
        builder: (context, snapshot) {

          if (snapshot.hasData) {
            return ListViewNewsItem(article: snapshot.data??[]);
          }else if(snapshot.hasError){
            return Text('Oops  thir is error , plese try again');
          }else{
            return SliverToBoxAdapter(child:  Center(child: CircularProgressIndicator(),));
          }
        });
  }
}
