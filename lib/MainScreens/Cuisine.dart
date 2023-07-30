// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/main.dart';
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
            length: 4,
            child: Expanded(
              child: Column(
                children: [
                  Container(
                  
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TabBar(
                      // isScrollable: true,
                      indicator: BoxDecoration(
                          color: Color(0xff85586F),
                          borderRadius: BorderRadius.circular(25.0)),
                      tabs: [
                        Tab(text: 'Beverages'),
                        Tab(text: 'HomeMade'),
                        Tab(text: 'Wazwan'),
                        Tab(text: 'Deserts'),
                        // Tab(text: 'Others'),
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
                        // Others()
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
           RecipeImage(
            recipeName: 'KASHMIRI KEHWA',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI KEHWA: The Aromatic Elixir',
              RecipeDescription:
                  'The Kashmiri Kahwa is an exotic mix of Kashmiri green tea leaves, whole spices, nuts and saffron traditionally prepared in a brass kettle known as a samovar.',
              buttonTexts: [
                'Water',
                'Cardamom',
                'Cinnamon',
                'Saffron',
                'Sugar',
                'Kashmiri tea leaves',
                'Chopped Almonds'
              ],
              itemCount: 7,
            ),
            assetName: 'assets/kehwa.jpg',
          ),
          RecipeImage(
            recipeName: 'NOON CHAI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/KashmiriNoonChai.jpg',
              RecipeName: 'KASHMIRI NOON CHAI: The Pink Elixir',
              RecipeDescription:
                  'Kashmiris are known to be the connoisseurs of tea and the pink-coloured noon chai or sheer chai is one of their traditional beverages.',
              buttonTexts: [
                'Water',
                'Milk',
                'Kashmiri tea leaves',
                'Salt',
                'Baking Soda'
              ],
              itemCount: 5,
            ),
            assetName: 'assets/KashmiriNoonChai.jpg',
          ),
          RecipeImage(
            recipeName: 'BABRIBYOL',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Babribyol.jpg',
              RecipeName: 'KASHMIRI BABRIBYOL SHARBAT',
              RecipeDescription:
                  'Babribyol is a ubiquitous drink in Kashmir during the holy month of Ramadhan.',
              buttonTexts: [
                'Water',
                'Milk',
                'Basil seeds',
                'Saffron',
                'Cardamom',
                'Sugar',
                'Dry Fruits'
              ],
              itemCount: 7,
            ),
            assetName: 'assets/Babribyol.jpg',
          ),
          RecipeImage(
            recipeName: 'KESAR DOODH',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/KesarDoodh.jpg',
              RecipeName: 'KESAR DOODH',
              RecipeDescription:
                  'Kesar Doodh is delicious to taste and incredibly nutritious.',
              buttonTexts: ['Milk', 'Sugar', 'Dry Fruits'],
              itemCount: 3,
            ),
            assetName: 'assets/KesarDoodh.jpg',
          ),
          RecipeImage(
            recipeName: 'KASHMIRI LASSI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/KashmiriLassi.jpg',
              RecipeName: 'KASHMIRI LASSI',
              RecipeDescription:
                  'Prepared with mint leaves, yoghurt and cumin powder, it is the ultimate elixir for the digestive system.',
              buttonTexts: [
                'Yogurt',
                'Water',
                'Dried mint leaves',
                'Salt',
                'Roasted cumin powder'
              ],
              itemCount: 5,
            ),
            assetName: 'assets/KashmiriLassi.jpg',
          ),
          RecipeImage(
            recipeName: 'KANJI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/KashmiriKanji.jpg',
              RecipeName: 'KANJI',
              RecipeDescription:
                  'Kanji is a healthy drink made by boiling black carrots in water and adding a few herbs and spices to give it a delicious flavour.',
              buttonTexts: [
                'Carrots',
                'Mustard seeds',
                'Black salt',
                'Red chilli powder',
                'Beetroot',
                'Water'
              ],
              itemCount: 6,
            ),
            assetName: 'assets/KashmiriKanji.jpg',
          ),
          RecipeImage(
            recipeName: 'GUD CHAI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/KashmiriGudChai.jpg',
              RecipeName: 'GUD CHAI: The Sweetened Elixir',
              RecipeDescription:
                  'Gud Chai, also known as "Jaggery Tea," is a sweetened version of Kashmiri tea that uses jaggery as a natural sweetener instead of sugar.',
              buttonTexts: [
                'Water',
                'Powdered jaggery',
                'Cardamom',
                'Milk',
                'Pepper corns',
                'Tea leaves'
              ],
              itemCount: 6,
            ),
            assetName: 'assets/KashmiriGudChai.jpg',
          ),
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
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Rajma.jpeg',
              RecipeName:'Kashmiri Rajma' ,
              RecipeDescription: 'A lip-smacking dish flavoured by tomato puree slow-cooked in a loch full of tasty Indian spice, the Rajma Kashmiri is a much-loved curry. ',
              buttonTexts: ['Kashmiri Rajma','Onion','Tomato','Tomato Puree','Ginger Garlic Paste','Asafoetida/Hing','Dry Ginger Powder','Cumin'],
              itemCount: 8,
            ), recipeName: 'Kashmiri Rajma', 
            assetName: 'assets/Rajma.jpeg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Alyakhni.jpg',
              RecipeName: 'Kashmiri Al Yakni',
              RecipeDescription: 'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
              buttonTexts: ['Bottle Gourd','Oil','Yogurt','Cloves','Cardamom','Cinnamon','Fennel Powder','Ginger Powder','Cumin Seeds','Salt','Shahi Jeera'],
              itemCount: 11,
            ),
            recipeName: '\t Kashmiri Al Yakni',
            assetName: 'assets/Alyakhni.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/KashmiriLaalPaneer.jpg',
              RecipeName: 'Kashmiri Laal Paneer',
              RecipeDescription: 'Kashmiri Laal Paneer (also called laal chaman) is a super delicious and quick paneer dish. As the name suggests, this curry is fiery red, and the appealing red color comes with the use of Kashmiri red chili powder.',
              buttonTexts: ['Paneer','Mustard Oil','Cloves','Cardamoms','Cumin Seeds','Cinnamon Sticks','Red Chilli Powder','Cardamoms','Bay Leaves','Salt','Ground Ginger','Coriander Powder'],
              itemCount: 12,
            ),
            recipeName: 'Laal Paneer',
            assetName: 'assets/KashmiriLaalPaneer.jpg',
          ),
          RecipeImage(
              name: Recipe(
                Category: 'HOME MADE',
                imagePath: 'assets/KashmiriDumAloo.jpg',
                RecipeName: 'Kashmir Dum Aloo',
                RecipeDescription: 'A traditional Kashmiri potato recipe where baby potatoes are boiled, fried, and then added to a spicy and rich yogurt-based gravy. This curry is subtly flavored with dry ginger powder which gives it a very distinct taste',
            buttonTexts: ['Baby Potatoes','Yogurt','Maida','Oil','Cloves','Dry Red Chillies','Black Cardamom', 'Black Peppercorn','Kashmiri Red Chilli Powder','Turmeric Powder','Dry Ginger Powder', 'Cumin Powder','Fennel Powder','Garam Masala',],
            itemCount: 14,
          ),
          recipeName: 'Dum Aloo',
          assetName: 'assets/KashmiriDumAloo.jpg',
          ),
          
          RecipeImage(
              name: Recipe(
                Category: 'HOME MADE',
                imagePath: 'assets/saag.jpg',
                RecipeName: 'Kashmiri Saag',
                RecipeDescription: 'The quintessential winter recipe! All you need is 6 ingredients and 20 minutes to cook up this warm, dish on a chilly winter night. Cooked in mustard oil, kashmiri saag can be paired with makki ki roti.',
            buttonTexts: ['Whole Spinach','Kashmiri Chillies','Mustard Oil','Cardamom','Garlic','Salt'],
            itemCount: 6,
          ),
          recipeName: 'Kashmiri Saag',
          assetName: 'assets/saag.jpg',
          ),
          RecipeImage(
              name: Recipe(
                Category: 'HOME MADE',
                imagePath: 'assets/khatteBhaingan.jpg',
                RecipeName: 'Kashmiri Cxoch Wagan',
                RecipeDescription: 'This is usually served as a side dish in Kashmiri feasts and ceremonies for it\'s pop flavours. It\'s essentially golden fried aubergines laced in a thick, spicy and zingy gravy.',
            buttonTexts: ['Brinjals','Onion','Tomato','Lime','Mustard Oil','Cinnamon Stick','Cumin Seeds','Cardamom','Kashmiri Red Chilli','Asafoetida','Turmeric Powder','Coriander Powder','Salt','Dry Ginger Powder','Fennel Seeds','Corainder Leaves'],
            itemCount: 16,
          ),
            recipeName: 'Cxoch Wagan',
            assetName: 'assets/khatteBhaingan.jpg',
          ),
          RecipeImage(
              name: Recipe(
                Category: 'HOME MADE',
                imagePath: 'assets/Gaad.jpeg',
                RecipeName: 'Kashmiri Muji Gaad',
                RecipeDescription: 'Muji gaad or machhli mooli as commonly known is a very special regional specialty from Kashmir. This delicacy from Kashmiri Pundit cuisine is also hugely popular during winters.',
            buttonTexts: ['Fish Fillets','Radish','Red Chilli Powder','Asafoetida/Hing','Oil','Green Chillies','Black Cardamom','Cloves','Turmeric Powder','Dry Ginger Powder','Veer','Aniseed/Saunf','Salt','Tamarind Pulp'],
            itemCount: 14,
          ),
            recipeName: 'Muji Gaad',
            assetName: 'assets/Gaad.jpeg',
          ),
          RecipeImage(
              name: Recipe(
                Category: 'HOME MADE',
                imagePath: 'assets/KashmiriDahiBaingan.jpg',
                RecipeName: 'Kashmiri Dahi Bhaingan',
                RecipeDescription: 'Kashmiri Dahi Baingan Recipe is a lip smacking dish where the eggplant is diced and cooked in a simple yogurt gravy, which ideally is the Kashmiri style of cooking. ',
            buttonTexts: ['Brinjal','Mustard Oil','Curd','Dry Ginger Powder','Kashmiri Red Chilli Powder','Turmeric Powder','Fennel Seeds','Cardamom','Asafoetida/Hing','Salt'],
            itemCount: 10,
          ),
            recipeName: 'Dahi Bhaingan',
            assetName: 'assets/KashmiriDahiBaingan.jpg',
          ),
          RecipeImage(
              name: Recipe(
                Category: 'HOME MADE',
                imagePath: 'assets/MuttonYakni.jpg',
                RecipeName: 'Kashmiri Mutton Yakni',
                RecipeDescription: 'A lip-smacking yoghurt based dish made with mutton cooked in a variety of spices and curd. The dish is very easy to prepare and can be made for lunch or dinner. Serve with plain rice, jeera rice or a simple pulao.',
            buttonTexts: ['Mutton Chopped','Curd','Cardamoms','Cloves','Cinnamom Sticks','Dry Ginger Powder','Mint Leaves','Salt'],
            itemCount: 8,
          ),
            recipeName: 'Mutton Yakni',
            assetName: 'assets/MuttonYakni.jpg',
          ),
           RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/MonjeMaaz.jpg',
              RecipeName: 'Kashmiri Monje Maaz',
              RecipeDescription:
                  'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
              buttonTexts: [
                'Mutton',
                'Kadam',
                'Fennel Seeds',
                'Garlic',
                'Oil',
                'Salt',
                'Badi Elachi',
                'Choti Elachi',
                'Dalchini',
                'Zeera Powder',
                'Onion'
              ],
              itemCount: 11,
            ),
            recipeName: 'Monje Maaz',
            assetName: 'assets/MonjeMaaz.jpg',
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
          RecipeImage(
            name: Recipe(
              Category: 'WAZWAN', 
              RecipeDescription: 'Tender lamb cooked with Kashmiri spices', 
              RecipeName: 'Rogan Josh', 
              buttonTexts: ['Mutton','Curd','Salt','Oil','Black Cardamom','Cardamom','Cloves','Cinnamon Stick','Bay Leaf','Black Pepper Powder','Fennel Powder','Asafoetida/Hing','Kashmiri Chilli Powder','Ratan Jot'], 
              imagePath: 'assets/RoganJosh.jpg', 
              itemCount: 14,
          ), recipeName: 'Rogan Josh',
            assetName: 'assets/RoganJosh.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'WAZWAN', 
              RecipeName: 'Rista', 
              RecipeDescription: 'Rista-Meatballs in a fiery red gravy', 
              imagePath: 'assets/rista.jpeg', 
              buttonTexts: ['Boneless Mutton','Red Chilli Powder','Ginger Powder','Meat Fat','Moval Extract','Asafoetida Liquid','Brown Cardamom','Fennel Powder','Bay Leaves','Cloves','Cinnamon Stick','Mustard Oil','Salt'], 
              itemCount: 13,
            ), recipeName: 'Rista',
            assetName: 'assets/rista.jpeg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'WAZWAN', 
              RecipeName: 'Goshtaba', 
              RecipeDescription: 'A velvety textured meatball in white yogurt gravy', 
              imagePath: 'assets/Goshtaba.jpg',
              buttonTexts: ['Boneless Mutton','Cardamom Powder','Ginger','Yogurt','Milk','Bay Leaf','Cinnamon Stick','Cloves','Fennel Seeds','Cumin Seeds','Dry Ginger Powder','Turmeric Powder','Salt','Ghee'], 
              itemCount: 14, 
            ), recipeName: 'Goshtaba',
            assetName: 'assets/Goshtaba.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'WAZWAN', 
              imagePath: 'assets/TabakMaaz.jpeg', 
              RecipeName: 'Tabak Maaz', 
              RecipeDescription: 'Ribs of lamb simmered in yogurt till tender, then fried', 
              buttonTexts: ['Rib Cage','Water','Ground Garlic','Salt','Dry Ginger Powder','Cloves','Black Cardamom','Turmeric Powder','Ghee'],
              itemCount: 9), 
            recipeName: 'Tabak Maaz',
            assetName: 'assets/TabakMaaz.jpeg',
          ),
          RecipeImage(
              name: Recipe(
                  Category: 'WAZWAN',
                  imagePath: 'assets/DaniwalKorma.jpeg',
                  RecipeName: 'Daniwal korma',
                  RecipeDescription:
                      'A mutton curry with coriander',
                  buttonTexts: [
                    'Yogurt','Water','Mutton(Lamb Leg)','Ghee','Onion','Garlic','Cloves','Cardamom','Salt','Saffron','Turmeric Powder','Coriander Powder','Black Pepper Powder','Green Coriander'
                  ],
                  itemCount: 14),
              recipeName: 'Daniwal korma',
            assetName: 'assets/DaniwalKorma.jpeg',
          ),
              RecipeImage(
              name: Recipe(
                  Category: 'WAZWAN',
                  imagePath: 'assets/LahabiKebab.jpeg',
                  RecipeName: 'Lahabi kabab or Moachi kabab',
                  RecipeDescription:
                      'Flattened mutton kababs cooked in yogurt',
                  buttonTexts: [
                    'Minced Lamb','Garam Masala Powder','Ginger Paste','Chilli Powder','Mint Leaves','Egg','Nutmeg Powder','Onion','Garlic Paste','Salt','Oil'
                  ],
                  itemCount: 11),
              recipeName: 'Lahabi kabab',
            assetName: 'assets/LahabiKebab.jpeg',
          ),
              RecipeImage(
              name: Recipe(
                  Category: 'WAZWAN',
                  imagePath: 'assets/AabGosht.jpg',
                  RecipeName: 'Aab Gosht Or Doudha ras ',
                  RecipeDescription:
                      'Mutton cooked in sweet milk gravy',
                  buttonTexts: [
                    'Milk','Cardamom Powder','Cloves','Mutton','Salt','Fennel Powder','Ginger Powder','Garlic Crushed','Onion','Ghee','Pepper Powder','Water'
                  ],
                  itemCount: 12),
              recipeName: 'Aab Gosht',
            assetName: 'assets/AabGosht.jpg',
          ),
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
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriKesarPhirni.jpg',
              RecipeName: 'KESAR PHIRNI',
              RecipeDescription:
                  'This scrumptious traditional kashmiri dessert is perfect for any special occasions. ',
              buttonTexts: [
                'Milk',
                'Semolina',
                'Sugar',
                'Saffron',
                'Cardamom',
                'Nuts'
              ],
              itemCount: 6,
            ),
            recipeName: 'KESAR PHIRNI',
            assetName: 'assets/KashmiriKesarPhirni.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriAppleKheer.jpg',
              RecipeName: 'APPLE KHEER',
              RecipeDescription:
                  'Kashmiri apple kheer is super delicious and very famous recipe.',
              buttonTexts: [
                'Milk',
                'Grated kashmiri apples',
                'Sugar',
                'Saffron',
                'Cardamom',
                'Nuts',
                'Fresh cream'
              ],
              itemCount: 7,
            ),
            recipeName: 'APPLE KHEER',
            assetName: 'assets/KashmiriAppleKheer.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriLyde.jpg',
              RecipeName: 'KASHMIRI LYDE',
              RecipeDescription:
                  'Kashmiri Lyde is a delectable, delicious and unique dessert which is an integral part of its Cuisine.',
              buttonTexts: [
                'Whole wheat flour',
                'Maida',
                'Sugar',
                'Water',
                'Cardamom powder',
                'Ghee',
                'Pinch Salt',
                'Cardamom pods'
              ],
              itemCount: 7,
            ),
            recipeName: 'KASHMIRI LYDE',
            assetName: 'assets/KashmiriLyde.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriSevaiyan.jpg',
              RecipeName: 'KASHMIRI SEVAIYAN',
              RecipeDescription:
                  'Kashmiri sevaiyan , the sweet of Kashmiri cuisine is made with sevai, dry fruits and nuts and cooked in milk till thick! It\'s texture and taste are beautiful and mouthwatering!',
              buttonTexts: [
                'Sevaiyan',
                'Sugar',
                'Milk',
                'Cardamom powder',
                'Ghee',
                'Khoya',
                'Saffron',
                'Rose petals',
                'Dry fruits'
              ],
              itemCount: 9,
            ),
            recipeName: 'SEVAIYAN',
            assetName: 'assets/KashmiriSevaiyan.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriFalooda.jpg',
              RecipeName: 'KASHMIRI FALOODA',
              RecipeDescription:
                  'Very delicious and yummy beverage dessert that is flavored with Rose syrup.',
              buttonTexts: [
                'Basil seeds',
                'Sugar',
                'Milk',
                'Falooda sev',
                'Rose syrup',
                'Ice cream',
                'Dry fruits',
                'Rose petals',
              ],
              itemCount: 8,
            ),
            recipeName: 'FALOODA',
            assetName: 'assets/KashmiriFalooda.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriShufta.jpg',
              RecipeName: 'KASHMIRI SHUFTA',
              RecipeDescription:
                  'Kashmiri Badam Paneer ka Shufta is traditional Desserts of Kashmir, prepared during weddings and special occasions.',
              buttonTexts: [
                'Water',
                'Sugar',
                'Dry fruits',
                'Ghee',
                'Lemon juice',
                'Saffron',
                'Cardamom powder',
                'Cheese'
              ],
              itemCount: 8,
            ),
            recipeName: 'SHUFTA',
            assetName: 'assets/KashmiriShufta.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriHalwa.jpg',
              RecipeName: 'KASHMIRI HALWA',
              RecipeDescription:
                  'A delicious, easy and quick halwa recipe for the festive season. ',
              buttonTexts: [
                'Oats',
                'Sugar',
                'Dry fruits',
                'Ghee',
                'Saffron',
                'Cardamom powder',
                'Milk'
              ],
              itemCount: 7,
            ),
            recipeName: 'KASHMIRI HALWA',
            assetName: 'assets/KashmiriHalwa.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriBasrakh.jpg',
              RecipeName: 'BASRAKH',
              RecipeDescription:
                  'Basrakh, the crispy sugar coated ball of Maida cooked in Ghee.',
              buttonTexts: [
                'Maida',
                'Ghee/Butter',
                'Sugar',
              ],
              itemCount: 3,
            ),
            recipeName: 'BASRAKH',
            assetName: 'assets/KashmiriBasrakh.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/KashmiriTosha.jpg',
              RecipeName: 'TOSHA',
              RecipeDescription:
                  'Tosha is usually made as a symbol of respect on the occasion of joy or grief and has religious values and sentiments attached to it.',
              buttonTexts: ['Flour', 'Ghee', 'Poppy seeds', 'Dry fruits'],
              itemCount: 3,
            ),
            recipeName: 'TOSHA',
            assetName: 'assets/KashmiriTosha.jpg',
          ),
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
