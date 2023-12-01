import 'package:flutter/material.dart';
import 'package:news_hub/widgets/List_view_news_builder.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.of(context).pop(),
        backgroundColor:Colors.amberAccent ,
        child:Icon(Icons.arrow_back,color: Colors.black,size: 30) ,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child:
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 15),
              child: Center(
                child: Text(
                  category,
                  style:const TextStyle(
                      fontSize: 25,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),),
            ListViewNewsBuilder(category: category,)
          ],
        ),
      ),
    );
  }
}
