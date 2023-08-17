

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:kaio/Cuisines/FlipCarousel.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';

List<Flip> carouselList=[
                Flip(
                cardItems: ['assets/Cuisine/Carousel/HARRISA.png', 'assets/Cuisine/Carousel/HarrisaRecipie.png'],
                heroTag: 'HARISA',
              ),
              Flip(
                cardItems: ['assets/Cuisine/Carousel/LAAYE.png', 'assets/Cuisine/Carousel/LaayeRecipie.png'],
                heroTag: 'LAAYE',
              ),
              Flip(
                cardItems: ['assets/Cuisine/Carousel/TUJJE.png', 'assets/Cuisine/Carousel/TujjeRecipie.png'],
                heroTag: 'TUJJE',
              ),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/MASALA TCHOT.png',
                'assets/Cuisine/Carousel/MasalaDesc.png'
              ], heroTag: 'MASALA'),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/TILLE KARRE.png',
                'assets/Cuisine/Carousel/TilleKareDesc.png'
              ], heroTag: 'TILLE KARRE'),
              Flip(
                  cardItems: ['assets/Cuisine/Carousel/SAFFRON.png', 'assets/Cuisine/Carousel/SaffronDesc.png'],
                  heroTag: 'SAFFRON'),
              Flip(
                  cardItems: ['assets/Cuisine/Carousel/SHERMAL.png', 'assets/Cuisine/Carousel/ShermalDesc.png'],
                  heroTag: 'SHERMAL'),
              Flip(
                  cardItems: ['assets/Cuisine/Carousel/halwa.png', 'assets/Cuisine/Carousel/HalwaDesc.png'],
                  heroTag: 'halwa'),
              Flip(
                  cardItems: ['assets/Cuisine/Carousel/MATKA KULFI.png', 'assets/Cuisine/Carousel/KulfiDesc.png'],
                  heroTag: 'MATKA KULFI'),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/KHANDE GAZIR.png',
                'assets/Cuisine/Carousel/KhandeDesc.png'
              ], heroTag: 'KHANDE GAZIR'),
              Flip(
                  cardItems: ['assets/Cuisine/Carousel/BASRAKH.png', 
                  'assets/Cuisine/Carousel/BasarakhDEsc.png'],
                  heroTag: 'BASRAKH'),
              Flip(
                  cardItems: ['assets/Cuisine/Carousel/CHANA.png', 
                  'assets/Cuisine/Carousel/ChanaDesc.png'],
                  heroTag: 'CHANA'),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/KENN\'K MASALA.png',
                'assets/Cuisine/Carousel/KennkDesc.png'
              ], heroTag: 'KENN\'K MASALA'),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/MONJI GADE.png',
                'assets/Cuisine/Carousel/MonjeGadeDesc.png'
              ], heroTag: 'MONJI GAADE'),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/NADRE MONJI.png',
                'assets/Cuisine/Carousel/NadreMonjeDesc.png'
              ], heroTag: 'NADRE MONJI'),
              Flip(cardItems: [
                'assets/Cuisine/Carousel/GAER GOJJE.png',
                'assets/Cuisine/Carousel/GearGojjDesc.png'
              ], heroTag: 'GAER GOJJE'),
];

List<RecipeImage> beverages=[
   RecipeImage(
            recipeName: 'KASHMIRI KEHWA',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Cuisine/Beverages/kehwa.jpg',
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
            assetName: 'assets/Cuisine/Beverages/kehwa.jpg',
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
            assetName: 'assets/Cuisine/Beverages/KashmiriNoonChai.jpg',
          ),
          RecipeImage(
            recipeName: 'BABRIBYOL',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Cuisine/Beverages/Babribyol.jpg',
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
            assetName: 'assets/Cuisine/Beverages/Babribyol.jpg',
          ),
          RecipeImage(
            recipeName: 'KESAR DOODH',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Cuisine/Beverages/KesarDoodh.jpg',
              RecipeName: 'KESAR DOODH',
              RecipeDescription:
                  'Kesar Doodh is delicious to taste and incredibly nutritious.',
              buttonTexts: ['Milk', 'Sugar', 'Dry Fruits'],
              itemCount: 3,
            ),
            assetName: 'assets/Cuisine/Beverages/KesarDoodh.jpg',
          ),
          RecipeImage(
            recipeName: 'KASHMIRI LASSI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Cuisine/Beverages/KashmiriLassi.jpg',
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
            assetName: 'assets/Cuisine/Beverages/KashmiriLassi.jpg',
          ),
          RecipeImage(
            recipeName: 'KANJI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Cuisine/Beverages/KashmiriKanji.jpg',
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
            assetName: 'assets/Cuisine/Beverages/KashmiriKanji.jpg',
          ),
          RecipeImage(
            recipeName: 'GUD CHAI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/Cuisine/Beverages/KashmiriGudChai.jpg',
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
            assetName: 'assets/Cuisine/Beverages/KashmiriGudChai.jpg',
          ),
];

List<RecipeImage> homemade = [
   RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/Rajma.jpeg',
              RecipeName: 'Kashmiri Rajma',
              RecipeDescription:
                  'A lip-smacking dish flavoured by tomato puree slow-cooked in a loch full of tasty Indian spice, the Rajma Kashmiri is a much-loved curry. ',
              buttonTexts: [
                'Kashmiri Rajma',
                'Onion',
                'Tomato',
                'Tomato Puree',
                'Ginger Garlic Paste',
                'Asafoetida/Hing',
                'Dry Ginger Powder',
                'Cumin'
              ],
              itemCount: 8,
            ),
            recipeName: 'Kashmiri Rajma',
            assetName: 'assets/Cuisine/HomeMade/Rajma.jpeg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/Alyakhni.jpg',
              RecipeName: 'Kashmiri Al Yakni',
              RecipeDescription:
                  'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
              buttonTexts: [
                'Bottle Gourd',
                'Oil',
                'Yogurt',
                'Cloves',
                'Cardamom',
                'Cinnamon',
                'Fennel Powder',
                'Ginger Powder',
                'Cumin Seeds',
                'Salt',
                'Shahi Jeera'
              ],
              itemCount: 11,
            ),
            recipeName: '\t Kashmiri Al Yakni',
            assetName: 'assets/Cuisine/HomeMade/Alyakhni.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/KashmiriLaalPaneer.jpg',
              RecipeName: 'Kashmiri Laal Paneer',
              RecipeDescription:
                  'Kashmiri Laal Paneer (also called laal chaman) is a super delicious and quick paneer dish. As the name suggests, this curry is fiery red, and the appealing red color comes with the use of Kashmiri red chili powder.',
              buttonTexts: [
                'Paneer',
                'Mustard Oil',
                'Cloves',
                'Cardamoms',
                'Cumin Seeds',
                'Cinnamon Sticks',
                'Red Chilli Powder',
                'Cardamoms',
                'Bay Leaves',
                'Salt',
                'Ground Ginger',
                'Coriander Powder'
              ],
              itemCount: 12,
            ),
            recipeName: 'Laal Paneer',
            assetName: 'assets/Cuisine/HomeMade/KashmiriLaalPaneer.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/KashmiriDumAloo.jpg',
              RecipeName: 'Kashmir Dum Aloo',
              RecipeDescription:
                  'A traditional Kashmiri potato recipe where baby potatoes are boiled, fried, and then added to a spicy and rich yogurt-based gravy. This curry is subtly flavored with dry ginger powder which gives it a very distinct taste',
              buttonTexts: [
                'Baby Potatoes',
                'Yogurt',
                'Maida',
                'Oil',
                'Cloves',
                'Dry Red Chillies',
                'Black Cardamom',
                'Black Peppercorn',
                'Kashmiri Red Chilli Powder',
                'Turmeric Powder',
                'Dry Ginger Powder',
                'Cumin Powder',
                'Fennel Powder',
                'Garam Masala',
              ],
              itemCount: 14,
            ),
            recipeName: 'Dum Aloo',
            assetName: 'assets/Cuisine/HomeMade/KashmiriDumAloo.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/saag.jpg',
              RecipeName: 'Kashmiri Saag',
              RecipeDescription:
                  'The quintessential winter recipe! All you need is 6 ingredients and 20 minutes to cook up this warm, dish on a chilly winter night. Cooked in mustard oil, kashmiri saag can be paired with makki ki roti.',
              buttonTexts: [
                'Whole Spinach',
                'Kashmiri Chillies',
                'Mustard Oil',
                'Cardamom',
                'Garlic',
                'Salt'
              ],
              itemCount: 6,
            ),
            recipeName: 'Kashmiri Saag',
            assetName: 'assets/Cuisine/HomeMade/saag.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/khatteBhaingan.jpg',
              RecipeName: 'Kashmiri Cxoch Wagan',
              RecipeDescription:
                  'This is usually served as a side dish in Kashmiri feasts and ceremonies for it\'s pop flavours. It\'s essentially golden fried aubergines laced in a thick, spicy and zingy gravy.',
              buttonTexts: [
                'Brinjals',
                'Onion',
                'Tomato',
                'Lime',
                'Mustard Oil',
                'Cinnamon Stick',
                'Cumin Seeds',
                'Cardamom',
                'Kashmiri Red Chilli',
                'Asafoetida',
                'Turmeric Powder',
                'Coriander Powder',
                'Salt',
                'Dry Ginger Powder',
                'Fennel Seeds',
                'Corainder Leaves'
              ],
              itemCount: 16,
            ),
            recipeName: 'Cxoch Wagan',
            assetName: 'assets/Cuisine/HomeMade/khatteBhaingan.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/Gaad.jpeg',
              RecipeName: 'Kashmiri Muji Gaad',
              RecipeDescription:
                  'Muji gaad or machhli mooli as commonly known is a very special regional specialty from Kashmir. This delicacy from Kashmiri Pundit cuisine is also hugely popular during winters.',
              buttonTexts: [
                'Fish Fillets',
                'Radish',
                'Red Chilli Powder',
                'Asafoetida/Hing',
                'Oil',
                'Green Chillies',
                'Black Cardamom',
                'Cloves',
                'Turmeric Powder',
                'Dry Ginger Powder',
                'Veer',
                'Aniseed/Saunf',
                'Salt',
                'Tamarind Pulp'
              ],
              itemCount: 14,
            ),
            recipeName: 'Muji Gaad',
            assetName: 'assets/Cuisine/HomeMade/Gaad.jpeg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/KashmiriDahiBaingan.jpg',
              RecipeName: 'Kashmiri Dahi Bhaingan',
              RecipeDescription:
                  'Kashmiri Dahi Baingan Recipe is a lip smacking dish where the eggplant is diced and cooked in a simple yogurt gravy, which ideally is the Kashmiri style of cooking. ',
              buttonTexts: [
                'Brinjal',
                'Mustard Oil',
                'Curd',
                'Dry Ginger Powder',
                'Kashmiri Red Chilli Powder',
                'Turmeric Powder',
                'Fennel Seeds',
                'Cardamom',
                'Asafoetida/Hing',
                'Salt'
              ],
              itemCount: 10,
            ),
            recipeName: 'Dahi Bhaingan',
            assetName: 'assets/Cuisine/HomeMade/KashmiriDahiBaingan.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/MuttonYakni.jpg',
              RecipeName: 'Kashmiri Mutton Yakni',
              RecipeDescription:
                  'A lip-smacking yoghurt based dish made with mutton cooked in a variety of spices and curd. The dish is very easy to prepare and can be made for lunch or dinner. Serve with plain rice, jeera rice or a simple pulao.',
              buttonTexts: [
                'Mutton Chopped',
                'Curd',
                'Cardamoms',
                'Cloves',
                'Cinnamom Sticks',
                'Dry Ginger Powder',
                'Mint Leaves',
                'Salt'
              ],
              itemCount: 8,
            ),
            recipeName: 'Mutton Yakni',
            assetName: 'assets/Cuisine/HomeMade/MuttonYakni.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/Cuisine/HomeMade/MonjeMaaz.jpg',
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
            assetName: 'assets/Cuisine/HomeMade/MonjeMaaz.jpg',
          ),
];

List<RecipeImage> wazwan=[
   RecipeImage(
            name: Recipe(
              Category: 'WAZWAN',
              RecipeDescription: 'Tender lamb cooked with Kashmiri spices',
              RecipeName: 'Rogan Josh',
              buttonTexts: [
                'Mutton',
                'Curd',
                'Salt',
                'Oil',
                'Black Cardamom',
                'Cardamom',
                'Cloves',
                'Cinnamon Stick',
                'Bay Leaf',
                'Black Pepper Powder',
                'Fennel Powder',
                'Asafoetida/Hing',
                'Kashmiri Chilli Powder',
                'Ratan Jot'
              ],
              imagePath: 'assets/Cuisine/Wazwan/RoganJosh.jpg',
              itemCount: 14,
            ),
            recipeName: 'Rogan Josh',
            assetName: 'assets/Cuisine/Wazwan/RoganJosh.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'WAZWAN',
              RecipeName: 'Rista',
              RecipeDescription: 'Rista-Meatballs in a fiery red gravy',
              imagePath: 'assets/Cuisine/Wazwan/rista.jpeg',
              buttonTexts: [
                'Boneless Mutton',
                'Red Chilli Powder',
                'Ginger Powder',
                'Meat Fat',
                'Moval Extract',
                'Asafoetida Liquid',
                'Brown Cardamom',
                'Fennel Powder',
                'Bay Leaves',
                'Cloves',
                'Cinnamon Stick',
                'Mustard Oil',
                'Salt'
              ],
              itemCount: 13,
            ),
            recipeName: 'Rista',
            assetName: 'assets/Cuisine/Wazwan/rista.jpeg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'WAZWAN',
              RecipeName: 'Goshtaba',
              RecipeDescription:
                  'A velvety textured meatball in white yogurt gravy',
              imagePath: 'assets/Cuisine/Wazwan/Goshtaba.jpg',
              buttonTexts: [
                'Boneless Mutton',
                'Cardamom Powder',
                'Ginger',
                'Yogurt',
                'Milk',
                'Bay Leaf',
                'Cinnamon Stick',
                'Cloves',
                'Fennel Seeds',
                'Cumin Seeds',
                'Dry Ginger Powder',
                'Turmeric Powder',
                'Salt',
                'Ghee'
              ],
              itemCount: 14,
            ),
            recipeName: 'Goshtaba',
            assetName: 'assets/Cuisine/Wazwan/Goshtaba.jpg',
          ),
          RecipeImage(
            name: Recipe(
                Category: 'WAZWAN',
                imagePath: 'assets/Cuisine/Wazwan/TabakMaaz.jpeg',
                RecipeName: 'Tabak Maaz',
                RecipeDescription:
                    'Ribs of lamb simmered in yogurt till tender, then fried',
                buttonTexts: [
                  'Rib Cage',
                  'Water',
                  'Ground Garlic',
                  'Salt',
                  'Dry Ginger Powder',
                  'Cloves',
                  'Black Cardamom',
                  'Turmeric Powder',
                  'Ghee'
                ],
                itemCount: 9),
            recipeName: 'Tabak Maaz',
            assetName: 'assets/Cuisine/Wazwan/TabakMaaz.jpeg',
          ),
          RecipeImage(
            name: Recipe(
                Category: 'WAZWAN',
                imagePath: 'assets/Cuisine/Wazwan/DaniwalKorma.jpeg',
                RecipeName: 'Daniwal korma',
                RecipeDescription: 'A mutton curry with coriander',
                buttonTexts: [
                  'Yogurt',
                  'Water',
                  'Mutton(Lamb Leg)',
                  'Ghee',
                  'Onion',
                  'Garlic',
                  'Cloves',
                  'Cardamom',
                  'Salt',
                  'Saffron',
                  'Turmeric Powder',
                  'Coriander Powder',
                  'Black Pepper Powder',
                  'Green Coriander'
                ],
                itemCount: 14),
            recipeName: 'Daniwal korma',
            assetName: 'assets/Cuisine/Wazwan/DaniwalKorma.jpeg',
          ),
          RecipeImage(
            name: Recipe(
                Category: 'WAZWAN',
                imagePath: 'assets/Cuisine/Wazwan/LahabiKebab.jpeg',
                RecipeName: 'Lahabi kabab or Moachi kabab',
                RecipeDescription: 'Flattened mutton kababs cooked in yogurt',
                buttonTexts: [
                  'Minced Lamb',
                  'Garam Masala Powder',
                  'Ginger Paste',
                  'Chilli Powder',
                  'Mint Leaves',
                  'Egg',
                  'Nutmeg Powder',
                  'Onion',
                  'Garlic Paste',
                  'Salt',
                  'Oil'
                ],
                itemCount: 11),
            recipeName: 'Lahabi kabab',
            assetName: 'assets/Cuisine/Wazwan/LahabiKebab.jpeg',
          ),
          RecipeImage(
            name: Recipe(
                Category: 'WAZWAN',
                imagePath: 'assets/Cuisine/Wazwan/AabGosht.jpg',
                RecipeName: 'Aab Gosht Or Doudha ras ',
                RecipeDescription: 'Mutton cooked in sweet milk gravy',
                buttonTexts: [
                  'Milk',
                  'Cardamom Powder',
                  'Cloves',
                  'Mutton',
                  'Salt',
                  'Fennel Powder',
                  'Ginger Powder',
                  'Garlic Crushed',
                  'Onion',
                  'Ghee',
                  'Pepper Powder',
                  'Water'
                ],
                itemCount: 12),
            recipeName: 'Aab Gosht',
            assetName: 'assets/Cuisine/Wazwan/AabGosht.jpg',
          ),
];

List<RecipeImage> deserts=[
  RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriKesarPhirni.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriKesarPhirni.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriAppleKheer.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriAppleKheer.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriLyde.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriLyde.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriSevaiyan.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriSevaiyan.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriFalooda.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriFalooda.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriShufta.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriShufta.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriHalwa.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriHalwa.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriBasrakh.jpg',
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
            assetName: 'assets/Cuisine/Deserts/KashmiriBasrakh.jpg',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/Cuisine/Deserts/KashmiriTosha.jpg',
              RecipeName: 'TOSHA',
              RecipeDescription:
                  'Tosha is usually made as a symbol of respect on the occasion of joy or grief and has religious values and sentiments attached to it.',
              buttonTexts: ['Flour', 'Ghee', 'Poppy seeds', 'Dry fruits'],
              itemCount: 3,
            ),
            recipeName: 'TOSHA',
            assetName: 'assets/Cuisine/Deserts/KashmiriTosha.jpg',
          ),
];