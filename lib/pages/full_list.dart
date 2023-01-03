import 'package:flutter/material.dart';
import 'package:coctail/models/recipe_item.dart';
import '../helpers/colors.dart';

class FullList extends StatefulWidget {
  const FullList({super.key});

  @override
  State<FullList> createState() => _FullListState();
}

class _FullListState extends State<FullList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: pinkMain,
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: pinkMain,
                title: const Text("Коктейли")),
            body: ListView.builder(
              itemCount: recipesList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: ExactAssetImage(recipesList[index].image),
                  ),
                  title: Text(recipesList[index].title),
                  subtitle: Text(recipesList[index].description),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/recipesall',
                      arguments: recipesList[index],
                    );
                  },
                );
              },
            )));
  }
}
