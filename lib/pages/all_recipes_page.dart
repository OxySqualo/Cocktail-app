import 'package:coctail/helpers/colors.dart';
import 'package:flutter/material.dart';
import '../models/recipe_item.dart';

class AllRecipePage extends StatelessWidget {
  final Recipe recipe;

  const AllRecipePage({super.key, required this.recipe});

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: TextStyle(fontSize: 24, color: blueBackground)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: pinkMain,
        title: Text(recipe.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //Image:
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              recipe.image,
              fit: BoxFit.cover,
            ),
          ),

          //Description:

          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              recipe.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: blueBackground),
            ),
          ),

          //Ingredients section
          buildSectionTitle(
            context,
            "Ингредиенты",
          ),
          Container(
            height: 200,
            //width: 300,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: ListView.builder(
              itemCount: recipe.ingredients.length,
              itemBuilder: ((context, index) => Card(
                    color: pinkMain,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(
                        recipe.ingredients[index],
                        style: TextStyle(color: blueBackground),
                      ),
                    ),
                  )),
            ),
          ),

          //
        ],
      )),
    ));
  }
}
