import 'package:flutter/material.dart';

import '../models/artivle_model.dart';
import '../screens/web_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({required this.articleModel,
    super.key,
  });
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WebViewApp(url: articleModel.url,)));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
              articleModel.image??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6n0Q3H_HR7BWc67gTgXwYHOcXBWGO8gKNtJBxnEkwxRgd-4LCdxPdPEsxHufQnFzEjQ&usqp=CAU',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
          articleModel.subTitle?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ), const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
