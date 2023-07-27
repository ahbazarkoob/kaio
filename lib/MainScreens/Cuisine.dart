// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';

// ignore: must_be_immutable
class Cuisine extends StatefulWidget {
  Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
            options: CarouselOptions(
              height: 160.0,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DefaultTabController(
            length: 5,
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TabBar(
                      isScrollable: true,
                      indicator: BoxDecoration(
                          color: Color(0xff85586F),
                          borderRadius: BorderRadius.circular(25.0)),
                      tabs: [
                        Tab(text: 'Beverages'),
                        Tab(text: 'HomeMade'),
                        Tab(text: 'Wazwan'),
                        Tab(text: 'Deserts'),
                        Tab(text: 'Others'),
                      ],
                      labelColor: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Beverages(),
                        HomeMade(),
                        Wazwan(),
                        Deserts(),
                        Others()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Bev',
            style: kHeading,
          ),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}

class HomeMade extends StatelessWidget {
  const HomeMade({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'HomeMade',
            style: kHeading,
          ),
          RecipeImage(
            name: Recipe(
              RecipeName:'Kashmiri Rajma' ,
              description: 'A lip-smacking dish flavoured by tomato puree slow-cooked in a loch full of tasty Indian spice, the Rajma Kashmiri is a much-loved curry. ',
              buttonTexts: ['Kashmiri Rajma','Onion','Tomato','Tomato Puree','Ginger Garlic Paste','Asafoetida/Hing','Dry Ginger Powder','Cumin'],
              itemCount: 8,
            ), recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
            name: Recipe(
              RecipeName: 'Kashmiri Al Yakni',
              description: 'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
              buttonTexts: ['Bottle Gourd','Oil','Yogurt','Cloves','Cardamom','Cinnamon','Fennel Powder','Ginger Powder','Cumin Seeds','Salt','Shahi Jeera'],
              itemCount: 11,
            ),
            recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
            name: Recipe(
              RecipeName: 'Kashmiri Laal Paneer',
              description: 'Kashmiri Laal Paneer (also called laal chaman) is a super delicious and quick paneer dish. As the name suggests, this curry is fiery red, and the appealing red color comes with the use of Kashmiri red chili powder.',
              buttonTexts: ['Paneer','Mustard Oil','Cloves','Cardamoms','Cumin Seeds','Cinnamon Sticks','Red Chilli Powder','Cardamoms','Bay Leaves','Salt','Ground Ginger','Coriander Powder'],
              itemCount: 12,
            ),
            recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
              name: Recipe(
                RecipeName: 'Kashmir Dum Aloo',
                description: 'A traditional Kashmiri potato recipe where baby potatoes are boiled, fried, and then added to a spicy and rich yogurt-based gravy. This curry is subtly flavored with dry ginger powder which gives it a very distinct taste',
            buttonTexts: ['Baby Potatoes','Yogurt','Maida','Oil','Cloves','Dry Red Chillies','Black Cardamoms', 'Black Peppercorn','Kashmiri Red Chilli Powder','Turmeric Powder','Dry Ginger Powder', 'Cumin Powder','Fennel Powder','Garam Masala',],
            itemCount: 14,
          ),
          recipeName: 'Kashmiri Rajma',
          ),
          
          RecipeImage(
              name: Recipe(
                RecipeName: 'Kashmiri Saag',
                description: 'The quintessential winter recipe! All you need is 6 ingredients and 20 minutes to cook up this warm, dish on a chilly winter night. Cooked in mustard oil, kashmiri saag can be paired with makki ki roti.',
            buttonTexts: ['Whole Spinach','Kashmiri Chillies','Mustard Oil','Cardamom','Garlic','Salt'],
            itemCount: 6,
          ),
          recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
              name: Recipe(
                RecipeName: 'Kashmiri Cxoch Wagan',
                description: 'This is usually served as a side dish in Kashmiri feasts and ceremonies for it\'s pop flavours. It\'s essentially golden fried aubergines laced in a thick, spicy and zingy gravy.',
            buttonTexts: ['Brinjals','Onion','Tomato','Lime','Mustard Oil','Cinnamon Stick','Cumin Seeds','Cardamom','Kashmiri Red Chilli','Asafoetida','Turmeric Powder','Coriander Powder','Salt','Dry Ginger Powder','Fennel Seeds','Corainder Leaves'],
            itemCount: 16,
          ),
            recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
              name: Recipe(
                RecipeName: 'Kashmiri Muji Gaad',
                description: 'Muji gaad or machhli mooli as commonly known is a very special regional specialty from Kashmir. This delicacy from Kashmiri Pundit cuisine is also hugely popular during winters.',
            buttonTexts: ['Fish Fillets','Radish','Red Chilli Powder','Asafoetida/Hing','Oil','Green Chillies','Black Cardamom','Cloves','Turmeric Powder','Dry Ginger Powder','Veer','Aniseed/Saunf','Salt','Tamarind Pulp'],
            itemCount: 14,
          ),
            recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
              name: Recipe(
                RecipeName: 'Kashmiri Dahi Bhaingan',
                description: 'Kashmiri Dahi Baingan Recipe is a lip smacking dish where the eggplant is diced and cooked in a simple yogurt gravy, which ideally is the Kashmiri style of cooking. ',
            buttonTexts: ['Brinjal','Mustard Oil','Curd','Dry Ginger Powder','Kashmiri Red Chilli Powder','Turmeric Powder','Fennel Seeds','Cardamom','Asafoetida/Hing','Salt'],
            itemCount: 10,
          ),
            recipeName: 'Kashmiri Rajma',
          ),
          RecipeImage(
              name: Recipe(
                RecipeName: 'Kashmiri Mutton Yakni',
                description: 'A lip-smacking yoghurt based dish made with mutton cooked in a variety of spices and curd. The dish is very easy to prepare and can be made for lunch or dinner. Serve with plain rice, jeera rice or a simple pulao.',
            buttonTexts: ['Mutton Chopped','Curd','Cardamoms','Cloves','Cinnamom Sticks','Dry Ginger Powder','Mint Leaves','Salt'],
            itemCount: 8,
          ),
            recipeName: 'Kashmiri Rajma',
          ),
        ],
      ),
    );
  }
}

class Wazwan extends StatelessWidget {
  const Wazwan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Wazwan',
            style: kHeading,
          ),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}

class Deserts extends StatelessWidget {
  const Deserts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Deserts',
            style: kHeading,
          ),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Others',
            style: kHeading,
          ),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
          // RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}
