import 'package:flutter/material.dart';
import 'package:oct_27/widgets/category_item.dart';

import '/data/dummy_categories.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (elemnet) =>
                  CategoryItem(elemnet.id, elemnet.title, elemnet.color),
            )
            .toList(),
      ),
    );
  }
}
