// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names, prefer_typing_uninitialized_variables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';
import 'dart:convert';

class Recipe extends StatelessWidget {
  String RecipeName = '', RecipeDescription = '', Category = '', listname = '';
  int itemCount;
  var imagePath;
  List buttonTexts = [];
  List<String> split_string_into_lines(String string) {
    List<String> string_list = string.split(".");
    return string_list;
  }

  Recipe(
      {required this.Category,
      required this.imagePath,
      required this.RecipeName,
      required this.RecipeDescription,
      required this.itemCount,
      required this.buttonTexts,
      required this.listname});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    String stepsData = listname;
    List<String> string_list = split_string_into_lines(stepsData);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.black,
          ),
          title: Text(RecipeName, style: kNormalText),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(devW * 0.02),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: devH * 0.3,
                            width: devW * 0.9,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(imagePath),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(devW * 0.009),
                          child: Text(
                            RecipeName,
                            style: kHeading,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(devW * 0.005),
                          child: Text(
                            RecipeDescription,
                            style: kNormalTextBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(devW * 0.02),
                          child: Text(
                            'Ingredients:',
                            style: kSubHeading,
                          ),
                        ),
                        Container(
                          width: devW,
                          height: devH * 0.25,
                          child: GridView.builder(
                            itemCount: itemCount,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 2,
                            ),
                            itemBuilder: (context, index) {
                              buttonTexts;
                              return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).primaryColor,
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(buttonTexts[index],
                                        style: kNormalText),
                                  ),
                                  onPressed: () {},
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Recipe:',
                                    style: kSubHeading,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: string_list
                                        .map((line) =>
                                            TextSpan(text: line + "\n"))
                                        .toList(),
                                  ),
                                ),

                                // Column(
                                //   children: listname,
                                // )
                              ],
                            ),
                          ),
                        )
                      ]))),
        ));
  }
}

class StepCard extends StatelessWidget {
  String Step, body;
  StepCard({required this.Step, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: devW * 0.9,
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                Step,
                style: kNormalTextBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                body,
                style: kNormalText,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
