import 'package:flutter/material.dart';
import 'package:news_hub/models/category_models.dart';
import 'package:news_hub/screens/category_Screen.dart';

class itemCategory extends StatelessWidget {
  const itemCategory({
    required this.category,
    super.key,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (contsex) => CategoryScreen(
              category: category.categoryName,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.deepPurple,
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child: Text(category.categoryName,
              style: const TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}
