import 'package:flutter/material.dart';

import '../widgets/List_view_news_builder.dart';
import '../widgets/itemCateListView.dart';
import '../widgets/itemCateg.dart';
import '../widgets/listview_item.dart';
import '../widgets/news_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Hub',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.only(right: 12.0, left: 12),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: ItemCatListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              ListViewNewsBuilder(category: 'general'),
            ],
          ),
        ));
  }
}
