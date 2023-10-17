// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:kaio/Cuisines/FlipCarousel.dart';

List<Flip> carouselList = [
  Flip(
    cardItems: [
      'assets/images/Cuisine/Carousel/HARRISA.png',
      'assets/images/Cuisine/Carousel/HarrisaRecipie.png'
    ],
    heroTag: 'HARISA',
  ),
  Flip(
    cardItems: [
      'assets/images/Cuisine/Carousel/LAAYE.png',
      'assets/images/Cuisine/Carousel/LaayeRecipie.png'
    ],
    heroTag: 'LAAYE',
  ),
  Flip(
    cardItems: [
      'assets/images/Cuisine/Carousel/TUJJE.png',
      'assets/images/Cuisine/Carousel/TujjeRecipie.png'
    ],
    heroTag: 'TUJJE',
  ),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/MASALA TCHOT.png',
    'assets/images/Cuisine/Carousel/MasalaDesc.png'
  ], heroTag: 'MASALA'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/TILLE KARRE.png',
    'assets/images/Cuisine/Carousel/TilleKareDesc.png'
  ], heroTag: 'TILLE KARRE'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/SAFFRON.png',
    'assets/images/Cuisine/Carousel/SaffronDesc.png'
  ], heroTag: 'SAFFRON'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/SHERMAL.png',
    'assets/images/Cuisine/Carousel/ShermalDesc.png'
  ], heroTag: 'SHERMAL'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/halwa.png',
    'assets/images/Cuisine/Carousel/HalwaDesc.png'
  ], heroTag: 'halwa'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/MATKA KULFI.png',
    'assets/images/Cuisine/Carousel/KulfiDesc.png'
  ], heroTag: 'MATKA KULFI'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/KHANDE GAZIR.png',
    'assets/images/Cuisine/Carousel/KhandeDesc.png'
  ], heroTag: 'KHANDE GAZIR'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/BASRAKH.png',
    'assets/images/Cuisine/Carousel/BasarakhDEsc.png'
  ], heroTag: 'BASRAKH'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/CHANA.png',
    'assets/images/Cuisine/Carousel/ChanaDesc.png'
  ], heroTag: 'CHANA'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/KENN\'K MASALA.png',
    'assets/images/Cuisine/Carousel/KennkDesc.png'
  ], heroTag: 'KENN\'K MASALA'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/MONJI GADE.png',
    'assets/images/Cuisine/Carousel/MonjeGadeDesc.png'
  ], heroTag: 'MONJI GAADE'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/NADRE MONJI.png',
    'assets/images/Cuisine/Carousel/NadreMonjeDesc.png'
  ], heroTag: 'NADRE MONJI'),
  Flip(cardItems: [
    'assets/images/Cuisine/Carousel/GAER GOJJE.png',
    'assets/images/Cuisine/Carousel/GearGojjDesc.png'
  ], heroTag: 'GAER GOJJE'),
];

// List<RecipeImage> beverages = [
//   RecipeImage(
//     recipeName: 'KASHMIRI KEHWA',
//     name: Recipe(
//       listname: kehwa,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/kehwa.jpg',
//       RecipeName: 'KASHMIRI KEHWA: The Aromatic Elixir',
//       RecipeDescription:
//           'The Kashmiri Kahwa is an exotic mix of Kashmiri green tea leaves, whole spices, nuts and saffron traditionally prepared in a brass kettle known as a samovar.',
//       buttonTexts: [
//         'Water',
//         'Cardamom',
//         'Cinnamon',
//         'Saffron',
//         'Sugar',
//         'Kashmiri tea leaves',
//         'Chopped Almonds'
//       ],
//       itemCount: 7,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/kehwa.png',
//   ),
//   RecipeImage(
//     recipeName: 'NOON CHAI',
//     name: Recipe(
//       listname: noonchai,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/KashmiriNoonChai.jpg',
//       RecipeName: 'KASHMIRI NOON CHAI: The Pink Elixir',
//       RecipeDescription:
//           'Kashmiris are known to be the connoisseurs of tea and the pink-coloured noon chai or sheer chai is one of their traditional beverages.',
//       buttonTexts: [
//         'Water',
//         'Milk',
//         'Kashmiri tea leaves',
//         'Salt',
//         'Baking Soda'
//       ],
//       itemCount: 5,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/noonchai.png',
//   ),
//   RecipeImage(
//     recipeName: 'BABRIBYOL',
//     name: Recipe(
//       listname: babribyol,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/Babribyol.jpg',
//       RecipeName: 'KASHMIRI BABRIBYOL SHARBAT',
//       RecipeDescription:
//           'Babribyol is a ubiquitous drink in Kashmir during the holy month of Ramadhan.',
//       buttonTexts: [
//         'Water',
//         'Milk',
//         'Basil seeds',
//         'Saffron',
//         'Cardamom',
//         'Sugar',
//         'Dry Fruits'
//       ],
//       itemCount: 7,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/babribyol.png',
//   ),
//   RecipeImage(
//     recipeName: 'KESAR DOODH',
//     name: Recipe(
//       listname: kesardoodh,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/KesarDoodh.jpg',
//       RecipeName: 'KESAR DOODH',
//       RecipeDescription:
//           'Kesar Doodh is delicious to taste and incredibly nutritious.',
//       buttonTexts: ['Milk', 'Sugar', 'Dry Fruits'],
//       itemCount: 3,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/kesardoodh.png',
//   ),
//   RecipeImage(
//     recipeName: 'KASHMIRI LASSI',
//     name: Recipe(
//       listname: lassi,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/KashmiriLassi.jpg',
//       RecipeName: 'KASHMIRI LASSI',
//       RecipeDescription:
//           'Prepared with mint leaves, yoghurt and cumin powder, it is the ultimate elixir for the digestive system.',
//       buttonTexts: [
//         'Yogurt',
//         'Water',
//         'Dried mint leaves',
//         'Salt',
//         'Roasted cumin powder'
//       ],
//       itemCount: 5,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/lassi.png',
//   ),
//   RecipeImage(
//     recipeName: 'KANJI',
//     name: Recipe(
//       listname: kanji,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/KashmiriKanji.jpg',
//       RecipeName: 'KANJI',
//       RecipeDescription:
//           'Kanji is a healthy drink made by boiling black carrots in water and adding a few herbs and spices to give it a delicious flavour.',
//       buttonTexts: [
//         'Carrots',
//         'Mustard seeds',
//         'Black salt',
//         'Red chilli powder',
//         'Beetroot',
//         'Water'
//       ],
//       itemCount: 6,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/kanji.png',
//   ),
//   RecipeImage(
//     recipeName: 'GUD CHAI',
//     name: Recipe(
//       listname: gudchai,
//       Category: 'BEVERAGES',
//       imagePath: 'assets/images/Cuisine/Beverages/KashmiriGudChai.jpg',
//       RecipeName: 'GUD CHAI: The Sweetened Elixir',
//       RecipeDescription:
//           'Gud Chai, also known as "Jaggery Tea," is a sweetened version of Kashmiri tea that uses jaggery as a natural sweetener instead of sugar.',
//       buttonTexts: [
//         'Water',
//         'Powdered jaggery',
//         'Cardamom',
//         'Milk',
//         'Pepper corns',
//         'Tea leaves'
//       ],
//       itemCount: 6,
//     ),
//     assetName: 'assets/images/Cuisine/Beverages/gudchai.png',
//   ),
// ];

// List<RecipeImage> homemade = [
//   RecipeImage(
//     name: Recipe(
//       listname: rajma,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/Rajma.jpeg',
//       RecipeName: 'Kashmiri Rajma',
//       RecipeDescription:
//           'A lip-smacking dish flavoured by tomato puree slow-cooked in a loch full of tasty Indian spice, the Rajma Kashmiri is a much-loved curry. ',
//       buttonTexts: [
//         'Kashmiri Rajma',
//         'Onion',
//         'Tomato',
//         'Tomato Puree',
//         'Ginger Garlic Paste',
//         'Asafoetida/Hing',
//         'Dry Ginger Powder',
//         'Cumin'
//       ],
//       itemCount: 8,
//     ),
//     recipeName: 'Kashmiri Rajma',
//     assetName: 'assets/images/Cuisine/HomeMade/rajma.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: yakhni,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/Alyakhni.jpg',
//       RecipeName: 'Kashmiri Al Yakni',
//       RecipeDescription:
//           'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
//       buttonTexts: [
//         'Bottle Gourd',
//         'Oil',
//         'Yogurt',
//         'Cloves',
//         'Cardamom',
//         'Cinnamon',
//         'Fennel Powder',
//         'Ginger Powder',
//         'Cumin Seeds',
//         'Salt',
//         'Shahi Jeera'
//       ],
//       itemCount: 11,
//     ),
//     recipeName: '\t Kashmiri Al Yakni',
//     assetName: 'assets/images/Cuisine/HomeMade/alyakhni.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: paneer,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/KashmiriLaalPaneer.jpg',
//       RecipeName: 'Kashmiri Laal Paneer',
//       RecipeDescription:
//           'Kashmiri Laal Paneer (also called laal chaman) is a super delicious and quick paneer dish. As the name suggests, this curry is fiery red, and the appealing red color comes with the use of Kashmiri red chili powder.',
//       buttonTexts: [
//         'Paneer',
//         'Mustard Oil',
//         'Cloves',
//         'Cardamoms',
//         'Cumin Seeds',
//         'Cinnamon Sticks',
//         'Red Chilli Powder',
//         'Cardamoms',
//         'Bay Leaves',
//         'Salt',
//         'Ground Ginger',
//         'Coriander Powder'
//       ],
//       itemCount: 12,
//     ),
//     recipeName: 'Laal Paneer',
//     assetName: 'assets/images/Cuisine/HomeMade/laalpaneer.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: dumaloo,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/KashmiriDumAloo.jpg',
//       RecipeName: 'Kashmir Dum Aloo',
//       RecipeDescription:
//           'A traditional Kashmiri potato recipe where baby potatoes are boiled, fried, and then added to a spicy and rich yogurt-based gravy. This curry is subtly flavored with dry ginger powder which gives it a very distinct taste',
//       buttonTexts: [
//         'Baby Potatoes',
//         'Yogurt',
//         'Maida',
//         'Oil',
//         'Cloves',
//         'Dry Red Chillies',
//         'Black Cardamom',
//         'Black Peppercorn',
//         'Kashmiri Red Chilli Powder',
//         'Turmeric Powder',
//         'Dry Ginger Powder',
//         'Cumin Powder',
//         'Fennel Powder',
//         'Garam Masala',
//       ],
//       itemCount: 14,
//     ),
//     recipeName: 'Dum Aloo',
//     assetName: 'assets/images/Cuisine/HomeMade/dumaloo.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: saag,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/saag.jpg',
//       RecipeName: 'Kashmiri Saag',
//       RecipeDescription:
//           'The quintessential winter recipe! All you need is 6 ingredients and 20 minutes to cook up this warm, dish on a chilly winter night. Cooked in mustard oil, kashmiri saag can be paired with makki ki roti.',
//       buttonTexts: [
//         'Whole Spinach',
//         'Kashmiri Chillies',
//         'Mustard Oil',
//         'Cardamom',
//         'Garlic',
//         'Salt'
//       ],
//       itemCount: 6,
//     ),
//     recipeName: 'Kashmiri Saag',
//     assetName: 'assets/images/Cuisine/HomeMade/saag.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: wagan,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/khatteBhaingan.jpg',
//       RecipeName: 'Kashmiri Cxoch Wagan',
//       RecipeDescription:
//           'This is usually served as a side dish in Kashmiri feasts and ceremonies for it\'s pop flavours. It\'s essentially golden fried aubergines laced in a thick, spicy and zingy gravy.',
//       buttonTexts: [
//         'Brinjals',
//         'Onion',
//         'Tomato',
//         'Lime',
//         'Mustard Oil',
//         'Cinnamon Stick',
//         'Cumin Seeds',
//         'Cardamom',
//         'Kashmiri Red Chilli',
//         'Asafoetida',
//         'Turmeric Powder',
//         'Coriander Powder',
//         'Salt',
//         'Dry Ginger Powder',
//         'Fennel Seeds',
//         'Corainder Leaves'
//       ],
//       itemCount: 16,
//     ),
//     recipeName: 'Cxoch Wagan',
//     assetName: 'assets/images/Cuisine/HomeMade/cxochwangan.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: gaad,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/Gaad.jpeg',
//       RecipeName: 'Kashmiri Muji Gaad',
//       RecipeDescription:
//           'Muji gaad or machhli mooli as commonly known is a very special regional specialty from Kashmir. This delicacy from Kashmiri Pundit cuisine is also hugely popular during winters.',
//       buttonTexts: [
//         'Fish Fillets',
//         'Radish',
//         'Red Chilli Powder',
//         'Asafoetida/Hing',
//         'Oil',
//         'Green Chillies',
//         'Black Cardamom',
//         'Cloves',
//         'Turmeric Powder',
//         'Dry Ginger Powder',
//         'Veer',
//         'Aniseed/Saunf',
//         'Salt',
//         'Tamarind Pulp'
//       ],
//       itemCount: 14,
//     ),
//     recipeName: 'Muji Gaad',
//     assetName: 'assets/images/Cuisine/HomeMade/mujjigaad.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: dahibhaingan,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/KashmiriDahiBaingan.jpg',
//       RecipeName: 'Kashmiri Dahi Bhaingan',
//       RecipeDescription:
//           'Kashmiri Dahi Baingan Recipe is a lip smacking dish where the eggplant is diced and cooked in a simple yogurt gravy, which ideally is the Kashmiri style of cooking. ',
//       buttonTexts: [
//         'Brinjal',
//         'Mustard Oil',
//         'Curd',
//         'Dry Ginger Powder',
//         'Kashmiri Red Chilli Powder',
//         'Turmeric Powder',
//         'Fennel Seeds',
//         'Cardamom',
//         'Asafoetida/Hing',
//         'Salt'
//       ],
//       itemCount: 10,
//     ),
//     recipeName: 'Dahi Bhaingan',
//     assetName: 'assets/images/Cuisine/HomeMade/dahibhaingan.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: muttontakni,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/MuttonYakni.jpg',
//       RecipeName: 'Kashmiri Mutton Yakni',
//       RecipeDescription:
//           'A lip-smacking yoghurt based dish made with mutton cooked in a variety of spices and curd. The dish is very easy to prepare and can be made for lunch or dinner. Serve with plain rice, jeera rice or a simple pulao.',
//       buttonTexts: [
//         'Mutton Chopped',
//         'Curd',
//         'Cardamoms',
//         'Cloves',
//         'Cinnamom Sticks',
//         'Dry Ginger Powder',
//         'Mint Leaves',
//         'Salt'
//       ],
//       itemCount: 8,
//     ),
//     recipeName: 'Mutton Yakni',
//     assetName: 'assets/images/Cuisine/HomeMade/muttonyakhni.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: monjemaaz,
//       Category: 'HOME MADE',
//       imagePath: 'assets/images/Cuisine/HomeMade/MonjeMaaz.jpg',
//       RecipeName: 'Kashmiri Monje Maaz',
//       RecipeDescription:
//           'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
//       buttonTexts: [
//         'Mutton',
//         'Kadam',
//         'Fennel Seeds',
//         'Garlic',
//         'Oil',
//         'Salt',
//         'Badi Elachi',
//         'Choti Elachi',
//         'Dalchini',
//         'Zeera Powder',
//         'Onion'
//       ],
//       itemCount: 11,
//     ),
//     recipeName: 'Monje Maaz',
//     assetName: 'assets/images/Cuisine/HomeMade/monjemaaz.png',
//   ),
// ];

// List<RecipeImage> wazwan = [
//   RecipeImage(
//     name: Recipe(
//       listname: roganjosh,
//       Category: 'WAZWAN',
//       RecipeDescription: 'Tender lamb cooked with Kashmiri spices',
//       RecipeName: 'Rogan Josh',
//       buttonTexts: [
//         'Mutton',
//         'Curd',
//         'Salt',
//         'Oil',
//         'Black Cardamom',
//         'Cardamom',
//         'Cloves',
//         'Cinnamon Stick',
//         'Bay Leaf',
//         'Black Pepper Powder',
//         'Fennel Powder',
//         'Asafoetida/Hing',
//         'Kashmiri Chilli Powder',
//         'Ratan Jot'
//       ],
//       imagePath: 'assets/images/Cuisine/Wazwan/RoganJosh.jpg',
//       itemCount: 14,
//     ),
//     recipeName: 'Rogan Josh',
//     assetName: 'assets/images/Cuisine/Wazwan/roganjosh.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: rista,
//       Category: 'WAZWAN',
//       RecipeName: 'Rista',
//       RecipeDescription: 'Rista-Meatballs in a fiery red gravy',
//       imagePath: 'assets/images/Cuisine/Wazwan/rista.jpeg',
//       buttonTexts: [
//         'Boneless Mutton',
//         'Red Chilli Powder',
//         'Ginger Powder',
//         'Meat Fat',
//         'Moval Extract',
//         'Asafoetida Liquid',
//         'Brown Cardamom',
//         'Fennel Powder',
//         'Bay Leaves',
//         'Cloves',
//         'Cinnamon Stick',
//         'Mustard Oil',
//         'Salt'
//       ],
//       itemCount: 13,
//     ),
//     recipeName: 'Rista',
//     assetName: 'assets/images/Cuisine/Wazwan/rista.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: goshtaba,
//       Category: 'WAZWAN',
//       RecipeName: 'Goshtaba',
//       RecipeDescription: 'A velvety textured meatball in white yogurt gravy',
//       imagePath: 'assets/images/Cuisine/Wazwan/Goshtaba.jpg',
//       buttonTexts: [
//         'Boneless Mutton',
//         'Cardamom Powder',
//         'Ginger',
//         'Yogurt',
//         'Milk',
//         'Bay Leaf',
//         'Cinnamon Stick',
//         'Cloves',
//         'Fennel Seeds',
//         'Cumin Seeds',
//         'Dry Ginger Powder',
//         'Turmeric Powder',
//         'Salt',
//         'Ghee'
//       ],
//       itemCount: 14,
//     ),
//     recipeName: 'Goshtaba',
//     assetName: 'assets/images/Cuisine/Wazwan/goshtaba.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//         listname: tabakmaaz,
//         Category: 'WAZWAN',
//         imagePath: 'assets/images/Cuisine/Wazwan/TabakMaaz.jpeg',
//         RecipeName: 'Tabak Maaz',
//         RecipeDescription:
//             'Ribs of lamb simmered in yogurt till tender, then fried',
//         buttonTexts: [
//           'Rib Cage',
//           'Water',
//           'Ground Garlic',
//           'Salt',
//           'Dry Ginger Powder',
//           'Cloves',
//           'Black Cardamom',
//           'Turmeric Powder',
//           'Ghee'
//         ],
//         itemCount: 9),
//     recipeName: 'Tabak Maaz',
//     assetName: 'assets/images/Cuisine/Wazwan/tabakmaaz.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//         listname: daniwalkorma,
//         Category: 'WAZWAN',
//         imagePath: 'assets/images/Cuisine/Wazwan/DaniwalKorma.jpeg',
//         RecipeName: 'Daniwal korma',
//         RecipeDescription: 'A mutton curry with coriander',
//         buttonTexts: [
//           'Yogurt',
//           'Water',
//           'Mutton(Lamb Leg)',
//           'Ghee',
//           'Onion',
//           'Garlic',
//           'Cloves',
//           'Cardamom',
//           'Salt',
//           'Saffron',
//           'Turmeric Powder',
//           'Coriander Powder',
//           'Black Pepper Powder',
//           'Green Coriander'
//         ],
//         itemCount: 14),
//     recipeName: 'Daniwal korma',
//     assetName: 'assets/images/Cuisine/Wazwan/daniwalkorma.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//         listname: lahabikabab,
//         Category: 'WAZWAN',
//         imagePath: 'assets/images/Cuisine/Wazwan/LahabiKebab.jpeg',
//         RecipeName: 'Lahabi kabab or Moachi kabab',
//         RecipeDescription: 'Flattened mutton kababs cooked in yogurt',
//         buttonTexts: [
//           'Minced Lamb',
//           'Garam Masala Powder',
//           'Ginger Paste',
//           'Chilli Powder',
//           'Mint Leaves',
//           'Egg',
//           'Nutmeg Powder',
//           'Onion',
//           'Garlic Paste',
//           'Salt',
//           'Oil'
//         ],
//         itemCount: 11),
//     recipeName: 'Lahabi kabab',
//     assetName: 'assets/images/Cuisine/Wazwan/lehabikabab.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//         listname: aabgosht,
//         Category: 'WAZWAN',
//         imagePath: 'assets/images/Cuisine/Wazwan/AabGosht.jpg',
//         RecipeName: 'Aab Gosht Or Doudha ras ',
//         RecipeDescription: 'Mutton cooked in sweet milk gravy',
//         buttonTexts: [
//           'Milk',
//           'Cardamom Powder',
//           'Cloves',
//           'Mutton',
//           'Salt',
//           'Fennel Powder',
//           'Ginger Powder',
//           'Garlic Crushed',
//           'Onion',
//           'Ghee',
//           'Pepper Powder',
//           'Water'
//         ],
//         itemCount: 12),
//     recipeName: 'Aab Gosht',
//     assetName: 'assets/images/Cuisine/Wazwan/aabgosht.png',
//   ),
// ];

// List<RecipeImage> deserts = [
//   RecipeImage(
//     name: Recipe(
//       listname: kesarphirni,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriKesarPhirni.jpg',
//       RecipeName: 'KESAR PHIRNI',
//       RecipeDescription:
//           'This scrumptious traditional kashmiri dessert is perfect for any special occasions. ',
//       buttonTexts: ['Milk', 'Semolina', 'Sugar', 'Saffron', 'Cardamom', 'Nuts'],
//       itemCount: 6,
//     ),
//     recipeName: 'KESAR PHIRNI',
//     assetName: 'assets/images/Cuisine/Deserts/kesarphirni.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: applekheer,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriAppleKheer.jpg',
//       RecipeName: 'APPLE KHEER',
//       RecipeDescription:
//           'Kashmiri apple kheer is super delicious and very famous recipe.',
//       buttonTexts: [
//         'Milk',
//         'Grated kashmiri apples',
//         'Sugar',
//         'Saffron',
//         'Cardamom',
//         'Nuts',
//         'Fresh cream'
//       ],
//       itemCount: 7,
//     ),
//     recipeName: 'APPLE KHEER',
//     assetName: 'assets/images/Cuisine/Deserts/applekheer.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: lyde,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriLyde.jpg',
//       RecipeName: 'KASHMIRI LYDE',
//       RecipeDescription:
//           'Kashmiri Lyde is a delectable, delicious and unique dessert which is an integral part of its Cuisine.',
//       buttonTexts: [
//         'Whole wheat flour',
//         'Maida',
//         'Sugar',
//         'Water',
//         'Cardamom powder',
//         'Ghee',
//         'Pinch Salt',
//         'Cardamom pods'
//       ],
//       itemCount: 7,
//     ),
//     recipeName: 'KASHMIRI LYDE',
//     assetName: 'assets/images/Cuisine/Deserts/lyde.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: sevaiyan,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriSevaiyan.jpg',
//       RecipeName: 'KASHMIRI SEVAIYAN',
//       RecipeDescription:
//           'Kashmiri sevaiyan , the sweet of Kashmiri cuisine is made with sevai, dry fruits and nuts and cooked in milk till thick! It\'s texture and taste are beautiful and mouthwatering!',
//       buttonTexts: [
//         'Sevaiyan',
//         'Sugar',
//         'Milk',
//         'Cardamom powder',
//         'Ghee',
//         'Khoya',
//         'Saffron',
//         'Rose petals',
//         'Dry fruits'
//       ],
//       itemCount: 9,
//     ),
//     recipeName: 'SEVAIYAN',
//     assetName: 'assets/images/Cuisine/Deserts/sevaiyan.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: falooda,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriFalooda.jpg',
//       RecipeName: 'KASHMIRI FALOODA',
//       RecipeDescription:
//           'Very delicious and yummy beverage dessert that is flavored with Rose syrup.',
//       buttonTexts: [
//         'Basil seeds',
//         'Sugar',
//         'Milk',
//         'Falooda sev',
//         'Rose syrup',
//         'Ice cream',
//         'Dry fruits',
//         'Rose petals',
//       ],
//       itemCount: 8,
//     ),
//     recipeName: 'FALOODA',
//     assetName: 'assets/images/Cuisine/Deserts/falooda.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: shufta,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriShufta.jpg',
//       RecipeName: 'KASHMIRI SHUFTA',
//       RecipeDescription:
//           'Kashmiri Badam Paneer ka Shufta is traditional Desserts of Kashmir, prepared during weddings and special occasions.',
//       buttonTexts: [
//         'Water',
//         'Sugar',
//         'Dry fruits',
//         'Ghee',
//         'Lemon juice',
//         'Saffron',
//         'Cardamom powder',
//         'Cheese'
//       ],
//       itemCount: 8,
//     ),
//     recipeName: 'SHUFTA',
//     assetName: 'assets/images/Cuisine/Deserts/shufta.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: halwa,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriHalwa.jpg',
//       RecipeName: 'KASHMIRI HALWA',
//       RecipeDescription:
//           'A delicious, easy and quick halwa recipe for the festive season. ',
//       buttonTexts: [
//         'Oats',
//         'Sugar',
//         'Dry fruits',
//         'Ghee',
//         'Saffron',
//         'Cardamom powder',
//         'Milk'
//       ],
//       itemCount: 7,
//     ),
//     recipeName: 'KASHMIRI HALWA',
//     assetName: 'assets/images/Cuisine/Deserts/halwa.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: basrakh,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriBasrakh.jpg',
//       RecipeName: 'BASRAKH',
//       RecipeDescription:
//           'Basrakh, the crispy sugar coated ball of Maida cooked in Ghee.',
//       buttonTexts: [
//         'Maida',
//         'Ghee/Butter',
//         'Sugar',
//       ],
//       itemCount: 3,
//     ),
//     recipeName: 'BASRAKH',
//     assetName: 'assets/images/Cuisine/Deserts/basrakh.png',
//   ),
//   RecipeImage(
//     name: Recipe(
//       listname: tosha,
//       Category: 'DESSERTS',
//       imagePath: 'assets/images/Cuisine/Deserts/KashmiriTosha.jpg',
//       RecipeName: 'TOSHA',
//       RecipeDescription:
//           'Tosha is usually made as a symbol of respect on the occasion of joy or grief and has religious values and sentiments attached to it.',
//       buttonTexts: ['Flour', 'Ghee', 'Poppy seeds', 'Dry fruits'],
//       itemCount: 3,
//     ),
//     recipeName: 'TOSHA',
//     assetName: 'assets/images/Cuisine/Deserts/tosha.png',
//   ),
// ];

// List<StepCard> rajma = [
//   StepCard(Step: 'Step1', body: 'Soak the Rajma for 6 hours.'),
//   StepCard(Step: 'Step2', body: 'Wash the Rajma and then boil it with water.'),
//   StepCard(Step: 'Step3', body: 'Make sure that the Rajma is well cooked.'),
//   StepCard(
//       Step: 'Step4',
//       body: 'Heat Oil in a pan, add the Cumin Seeds, and let it crackle.'),
//   StepCard(Step: 'Step5', body: 'Then add the Hing and saute.'),
//   StepCard(
//       Step: 'Step6',
//       body: 'Add the sliced Onions and saute till it is light brown.'),
//   StepCard(
//       Step: 'Step7',
//       body:
//           'Then add the Ginger Garlic Paste and saute well till the raw flavor disappears.'),
//   StepCard(
//       Step: 'Step8',
//       body:
//           'Add the sliced Tomatoes and cook till it turns mushy and forms a thick consistency.'),
//   StepCard(
//       Step: 'Step9',
//       body: 'Add Red Chilli Powder & Coriander Power and saute.'),
//   StepCard(
//       Step: 'Step10',
//       body: 'Now add the Tomato Puree and simmer for about 10 minutes.'),
//   StepCard(
//       Step: 'Step11',
//       body:
//           'Add the boiled Rajma with the liquid and cook well until a semi-thick consistency gravy is obtained.'),
//   StepCard(
//       Step: 'Step12',
//       body:
//           'During the course of the Rajma cooking, mash a couple of the Rajma with the back of the ladle, this would help make a semi-thick gravy.'),
//   StepCard(
//       Step: 'Step13',
//       body: 'Add the Fennel Powder and the Ginger Powder and simmer.'),
//   StepCard(
//       Step: 'Step14',
//       body:
//           'Check the seasoning, and garnish with chopped Coriander Leaves. Serve Hot.'),
// ];

// List<StepCard> steps = [
//   StepCard(Step: 'Step1', body: 'body'),
//   StepCard(Step: 'Step1', body: 'body')
// ];

// List<StepCard> yakhni = [
//   StepCard(Step: 'Step1', body: 'Heat mustard oil for frying in a pan.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Once the oil is hot, fry the bottle gourd until golden brown from all sides.'),
//   StepCard(Step: 'Step3', body: 'Drain on a plate lined with kitchen tissue.'),
//   StepCard(Step: 'Step4', body: 'Heat 1 tablespoon oil in another pan.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Once the oil is hot, add cloves, black cardamom, and cinnamon stick and let them crackle for a few seconds.'),
//   StepCard(
//       Step: 'Step6',
//       body: 'Add cumin seeds and let them crackle for a few seconds.'),
//   StepCard(
//       Step: 'Step7',
//       body: 'Add curd along with a cup of water and bring it to a boil.'),
//   StepCard(
//       Step: 'Step8',
//       body:
//           'Add fennel powder, ginger powder, crushed shahi jeera, and salt to taste.'),
//   StepCard(Step: 'Step9', body: 'Bring the curry to a boil.'),
//   StepCard(Step: 'Step10', body: 'Add the fried Bottle-gourd.'),
//   StepCard(Step: 'Step11', body: 'Cover the pan and simmer for 10-12 minutes.'),
//   StepCard(Step: 'Step12', body: 'Add more water if required.'),
//   StepCard(Step: 'Step13', body: 'Serve hot with steamed rice.'),
// ];

// List<StepCard> paneer = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Wash the paneer with water and cut it into 2-inch pieces and keep them aside.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Stir together Kashmiri red chili powder, ground ginger, ground fennel, and coriander powder in a bowl.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Add ¼ cup of water to the bowl and mix to make a paste. Set aside.'),
//   StepCard(Step: 'Step4', body: 'Heat mustard oil in a pan over high heat.'),
//   StepCard(
//       Step: 'Step5',
//       body: 'Once the mustard oil is hot, reduce the heat to medium.'),
//   StepCard(
//       Step: 'Step6',
//       body:
//           'Add the paneer pieces to the pan and fry them from all sides until nicely browned. Keep flipping them while frying.'),
//   StepCard(
//       Step: 'Step7',
//       body:
//           'Remove the paneer pieces from the pan and add them to a bowl filled with 2 cups of water. Set aside.'),
//   StepCard(
//       Step: 'Step8',
//       body:
//           'Add cumin seeds, asafoetida, bay leaves, cloves, green cardamoms, and cinnamon stick to the oil in the same pan and let them crackle for 4-5 seconds.'),
//   StepCard(Step: 'Step9', body: 'Reduce the heat to low.'),
//   StepCard(
//       Step: 'Step10', body: 'Add the spice paste to the pan and mix well.'),
//   StepCard(
//       Step: 'Step11',
//       body:
//           'Cook for 2 minutes on low heat until the oil starts to separate from the sides of the pan.'),
//   StepCard(
//       Step: 'Step12',
//       body:
//           'Now add the water in which we soaked the paneer and salt and bring the curry to a boil.'),
//   StepCard(
//       Step: 'Step13', body: 'Add the fried paneer and cook for 10 minutes.'),
//   StepCard(
//       Step: 'Step14',
//       body: 'Check for salt and add more if needed. Serve hot with rice.'),
//   StepCard(
//       Step: 'Note –',
//       body:
//           ' The curry looks orangish at this stage but once you keep it for some time, the oil will start to float on top and it will look dark red.'),
// ];

// List<StepCard> dumaloo = [
//   StepCard(Step: 'Step1', body: 'Cook the Potatoes'),
//   StepCard(Step: 'Step2', body: 'Fry the potatoes'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Add yogurt, coriander powder, turmeric powder, chili powder, cumin powder, ginger powder, garam masala powder, fennel powder, and all-purpose flour to a bowl and whisk well until combined.'),
//   StepCard(
//       Step: 'Step4', body: 'Heat mustard oil in a pan over medium-high heat.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Once the oil is hot, add whole bay leaves, asafetida, dry red chilies, cloves, black cardamoms, green cardamoms, and peppercorns, and fry for 4-5 seconds.'),
//   StepCard(
//       Step: 'Step6',
//       body: 'Pour the yogurt mixture into the pan and cook for a minute.'),
//   StepCard(
//       Step: 'Step7',
//       body:
//           'Add the fried potatoes, salt, and 2 cups of water to the pan and mix well.'),
//   StepCard(
//       Step: 'Note –',
//       body: ' Add just 1 cup of water if you are looking for a thicker gravy.'),
//   StepCard(Step: 'Step8', body: 'Reduce the heat to low.'),
//   StepCard(
//       Step: 'Step9',
//       body:
//           'Cover the pan with a tight-fitting lid and cook for 10-12 minutes.'),
//   StepCard(Step: 'Step10', body: 'Check for salt and add more if needed.'),
//   StepCard(Step: 'Step11', body: 'Serve hot.'),
// ];

// List<StepCard> saag = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'In a pressure cooker add mustard oil, brown cardamom, Kashmiri whole chilies, whole garlic, whole spinach (saag), a little salt, and water'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Put all of the above in a pressure cooker and let the spinach (saag) cook till 1 whistle.'),
//   StepCard(Step: 'Step3', body: 'Serve the Kashmiri Saag steaming hot.'),
// ];

// List<StepCard> wagan = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'In a wok (kadai) add mustard oil, cinnamon, cumin seeds, green cardamoms, Kashmiri red chilies, asafoetida powder, turmeric powder, coriander powder, and little salt. Mix them well together and add little water.'),
//   StepCard(
//       Step: 'Step2', body: 'Add dry ginger powder and combine them together.'),
//   StepCard(
//       Step: 'Step3',
//       body: 'Add sliced onion and brinjals. Fry them well together.'),
//   StepCard(
//       Step: 'Step4',
//       body: 'Cover them and let the brinjals cook for 20 minutes.'),
//   StepCard(
//       Step: 'Step5',
//       body: 'Add the sliced tomatoes, fennel seeds, and little water.'),
//   StepCard(Step: 'Step6', body: 'Let the tomatoes cook.'),
//   StepCard(Step: 'Step7', body: 'Sprinkle some coriander leaves and lime.'),
//   StepCard(Step: 'Step8', body: 'Serve the Kashmiri khatte baingan hot.'),
// ];

// List<StepCard> gaad = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Cut fish fillets into half-inch wide strips. Mix red chili powder with two tablespoons of water and keep aside. Mix asafoetida powder in two teaspoons of water and keep aside.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Heat oil in a kadai and shallow fry the fish strips till golden brown. Drain and place on absorbent paper and set aside.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Similarly, fry the radish pieces till golden brown. Drain and place on an absorbent paper and set aside. Heat two tablespoons of oil in another kadai, add green chilies, black cardamom, and cloves, and allow them to crackle.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Add red chili water, asafoetida water, turmeric powder, dry ginger powder, half the ver, aniseed powder, salt, and three-fourths cup of water and mix well.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Bring the mixture to a boil. Add the fried fish and radish and cook uncovered till the gravy thickens and the oil surfaces. Stir in the tamarind pulp and mix gently taking care not to break the fish pieces.'),
//   StepCard(Step: 'Step6', body: 'Serve hot sprinkled with remaining ver'),
// ];

// List<StepCard> dahibhaingan = [
//   StepCard(
//       Step: 'Step 1',
//       body:
//           'To begin making the Kashmiri Dahi Baingan Recipe, place the cut eggplant/ brinjal pieces in a bowl of salted water for about 10 minutes.'),
//   StepCard(
//       Step: 'Step 2',
//       body:
//           'Add 1 tablespoon of mustard oil to a preheated pan. Drain the baingan from its water and add the drained baingan to the pan.'),
//   StepCard(
//       Step: 'Step 3',
//       body:
//           'Sprinkle salt after adding the baingan cubes, stir well to combine. Cover and cook the brinjal until soft and roasted. Once done turn off the heat and keep aside.'),
//   StepCard(
//       Step: 'Step 4',
//       body:
//           'Into a mixing bowl, add the curd, ginger powder, red chili powder, turmeric powder, and salt to taste and whisk well to make a smooth mixture.'),
//   StepCard(
//       Step: 'Step 5',
//       body:
//           'In a kadai, heat the rest of the mustard oil on medium heat. Once the oil is hot add the coarsely pounded fennel seeds, green cardamom, and asafoetida and saute for a few seconds till the aromas are released. '),
//   StepCard(
//       Step: 'Step 6',
//       body:
//           'Add the whisked curd and give it a brisk boil for 1 minute. Keep whisking to get a smooth dahi mixture. Add the roasted brinjal and boil for another 3-4 minutes and turn off the heat. '),
//   StepCard(
//       Step: 'Step 7',
//       body:
//           'Check the salt and adjust according to taste and transfer the Kashmiri Dahi Baingan to a serving bowl.'),
//   StepCard(
//       Step: 'Step 8',
//       body:
//           'Serve Kashmiri Dahi Baingan Recipe along with Steamed Rice or Phulka. '),
// ];

// List<StepCard> muttontakni = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Pressure cook the mutton with 1 1/2 cups of water and a pinch of salt for 20 to 30 minutes or until 3/4ths cooked.'),
//   StepCard(
//       Step: 'Step2',
//       body: 'Reserve the water and keep the mutton pieces aside.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Heat curd in a pan and stir continuously to prevent it from splitting.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Add the cardamoms, cloves, and cinnamons and stir for another 10 minutes'),
//   StepCard(
//       Step: 'Step5',
//       body: 'Add the ginger powder and stir for a minute or two more.'),
//   StepCard(
//       Step: 'Step6',
//       body: 'Add the aniseed powder and add the mutton pieces with the water.'),
//   StepCard(Step: 'Step7', body: 'Gently mix well.'),
//   StepCard(
//       Step: 'Step8', body: 'Add the mint leaves and reduce the flame to low.'),
//   StepCard(
//       Step: 'Step9',
//       body: 'Simmer for 20 to 30 minutes, stirring from time to time.'),
//   StepCard(Step: 'Step10', body: 'Cover and cook for 3 hours.'),
//   StepCard(
//       Step: 'Step11', body: 'Serve hot with jeera rice or a simple pulao.'),
// ];

// List<StepCard> monjemaaz = [
//   StepCard(Step: 'Step1', body: 'Boil the greens'),
//   StepCard(
//       Step: 'Step2',
//       body: 'In a pan heat the oil. To this add your blanched greens'),
//   StepCard(Step: 'Step 3', body: 'Add the cloves of garlic and green chilies.'),
//   StepCard(Step: 'Step 4', body: 'Cook until it is ready')
// ];

// List<StepCard> roganjosh = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'To begin making the Kashmiri Rogan Josh recipe, wash the mutton nicely and drain the water completely.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Marinade the mutton with mentioned ingredients under Marination for approximately 1 and 1-1/2 hours. Cling wrap the bowl and refrigerate it for better results.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Heat oil in a heavy-bottomed wok and add bay leaf and other whole spices mentioned.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Immediately, add marinaded mutton and mix well. Fry on medium to high flames stirring occasionally.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Now add asafoetida and stir well. Add almost 1 cup of water to the mutton mix and allow it to cook with the lid closed.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'In a separate bowl, add yogurt and red chili powder & fennel powder and whisk nicely.'),
//   StepCard(
//       Step: 'Step6',
//       body:
//           'Take off the lid and add whisked yogurt and mix well such that everything incorporates nicely. Adjust salt as needed.'),
//   StepCard(
//       Step: 'Step7',
//       body:
//           'Now add Ratan Jot/root infused in oil in the mutton and cook till the mutton is soft and tender. Garnish with fresh coriander and serve hot.'),
//   StepCard(
//       Step: 'Step8',
//       body:
//           'Serve Kashmiri Rogan Josh with hot steamed rice or Rumali rotis for a delicious weekend meal.'),
// ];

// List<StepCard> rista = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Pound boneless meat on a smooth stone with a wooden mallet and add the meat fat while pounding. Make sure the pulp is mixed well to make the round balls.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Add brown cardamom powder, a little salt, and 1 tsp ginger powder. After mixing well make round balls about 3 inches in diameter.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Heat oil in a large vessel add salt, asafoetida, and a glass of water and red chili powder. Keep on stirring until it leaves the red color.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Add about 8 glasses of water and the rest of the spices and bring to a boil.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'While the gravy is boiling add meatballs slowly and gently boil for an hour.'),
//   StepCard(
//       Step: 'Step6', body: 'Add the moval extract and simmer for 15 minutes.'),
//   StepCard(Step: 'Step7', body: 'Serve with boiled rice.'),
// ];

// List<StepCard> goshtaba = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'To begin making the Kashmiri Style Gushtaba Recipe, Add keema, cardamom powder, and ginger into a mixer and give it a blitz.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Once it is done, you can take a little of the kheema mix and shape them into a cylindrical shape. Do the same for the rest of the mixture.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Heat a kadai with ghee, add all the whole spices (Bay leaf, cumin seeds, Cinnamon Sticks, cloves, and fennel seeds), and allow it to sizzle for a few seconds.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Whisk in curd with 1 cup of water and add the curd to the kadai. Keep the flame low.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Add turmeric powder, dry ginger powder, and salt, and mix well. Add milk as well and give it a stir.'),
//   StepCard(
//       Step: 'Step6',
//       body:
//           'Slowly drop in the kheema balls and cook for at least 20 minutes. Let the meatballs soak in all the flavors really well.'),
//   StepCard(
//       Step: 'Step7',
//       body:
//           'Serve the Kashmiri Style Gushtaba Recipe along with Butter Garlic Naan Recipe or Phulka to make it a complete meal.'),
// ];

// List<StepCard> tabakmaaz = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Bring the water to a boil; add the ribs. Continue to boil, removing the scum that rises to the surface. Repeat until the water is clear. Boil covered till the ribs are half done.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Add the garlic and mix well. Continue to boil for another 10 minutes.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Add the salt and boil covered, continuously till the membrane between the ribs can be pierced with the thumb.'),
//   StepCard(
//       Step: 'Step4', body: 'Remove the pan from the heat and drain the water.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Cool the ribs and then immerse them in a pan of cold water. Wash thoroughly and keep them aside. Do not discard this water.'),
//   StepCard(
//       Step: 'Step6',
//       body:
//           'Chop the ribs with a heavy, sharp knife into 8 equal rectangular pieces.'),
//   StepCard(
//       Step: 'Step7', body: 'Boil the water in which the ribs were washed.'),
//   StepCard(
//       Step: 'Step8',
//       body:
//           'Add the chopped ribs, salt, dry ginger powder, cloves, black cardamoms, and turmeric powder. Mix well.'),
//   StepCard(
//       Step: 'Step9',
//       body:
//           'Let it boil until the bones can be extracted from the membrane easily.'),
//   StepCard(
//       Step: 'Step10',
//       body:
//           'Remove the pan from the heat and take out the ribs with a slotted spoon. Keep aside.'),
//   StepCard(Step: 'Step11', body: 'Discard the water.'),
//   StepCard(
//       Step: 'Step12',
//       body:
//           'Arrange the ribs in a large frying pan so that they dont overlap.'),
//   StepCard(
//       Step: 'Step13',
//       body:
//           'Pour the ghee over them. Fry until they are reddish brown all over. Turn occasionally.'),
//   StepCard(Step: 'Step14', body: 'Drain out the ghee before serving.'),
// ];

// List<StepCard> daniwalkorma = [
//   StepCard(Step: 'Step1', body: 'body'),
//   StepCard(Step: 'Step1', body: 'body')
// ];

// List<StepCard> aabgosht = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'In a bowl add water, mutton, crushed garlic, ginger powder, fennel powder, salt, mace, cardamom, and cloves and mix it and put the lid on let it cook till the meat is tender.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'In a bowl add milk, and crushed cardamom, boil this and reduce the milk to half.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Heat ghee in another pan add brown onion paste, and mutton pieces, and cook it for some time.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Add pepper powder, salt, pour the reduced milk and mutton stock, cook this for 5 minutes in a slow flame, then switch off the flame.'),
//   StepCard(Step: 'Step5', body: 'Serve this cooked rice.'),
// ];

// List<StepCard> lahabikabab = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Wash and strain the mince properly. To make this main dish recipe, wash the minced lamb well under running water and drain. Keep the mince in a strainer to drain the water completely.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Make the kebab mix. Take a grinder and add minced lamb along with garlic and ginger paste, nutmeg powder, 1 finely chopped onion, garam masala powder, salt, eggs, chili powder, and grind it to make a thick and coarse paste. This paste is your kebab mix.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Shape it into kebabs. Next, add 1 finely chopped onion along with the chopped mint leaves to the kebab mix. Take out a lemon-sized ball from the kebab mix and flatten it using your hands to make a round flat disk shape.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Fry the kebabs and serve hot. Now, place a non-stick pan over medium flame and add oil to it. Once the oil is hot enough, put the kebabs in it and fry them until crisp. Once done, transfer the kebabs to a tissue paper-lined plate to drain off excess oil. Serve hot with mint chutney or tomato ketchup to enjoy!'),
// ];




// List<StepCard> kehwa = [
//   StepCard(Step: 'Step1', body: 'Heat water in a pan over medium-high heat.'),
//   StepCard(
//       Step: 'Step2',
//       body: 'Once the water comes to a boil, reduce the heat to low.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Add saffron, cinnamon, clove, cardamom, and dried rose petals to the pan and let the water simmer for 3-4 minutes.'),
//   StepCard(Step: 'Step4', body: 'Switch off the heat.'),
//   StepCard(Step: 'Step5', body: 'Add green tea to the pan and stir gently. '),
//   StepCard(Step: 'Step6', body: 'Let the chai steep for 30-40 seconds.'),
//   StepCard(
//       Step: 'Step7',
//       body: 'Strain the kehwa into 2 cups using a fine tea strainer. '),
//   StepCard(
//       Step: 'Step8',
//       body:
//           'Add 1 teaspoon of slivered almond slivers and 1-2 strands of saffron to each cup. '),
//   StepCard(
//       Step: 'Step9',
//       body: 'Add honey if you like your kehwa slightly sweet. Serve hot.'),
// ];

// List<StepCard> noonchai = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Boil 1 cup water and brew tea leaves, till frothy. Now add the baking soda and whisk vigorously for about 10 seconds.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Now on medium heat, add the milk and whisk it  vigorously to achieve a slight froth. The colour of the tea should now be a lovely dark pink.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Adjust milk to colour of your choice. Add the salt and stir well.'),
//   StepCard(
//       Step: 'Step4',
//       body: 'Pour into a cup and serve the Kashmiri Noon Chai hot.'),
// ];

// List<StepCard> babribyol = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Soak the Babri Byol Seeds in a bowl of water for 1 day or 3-4 hours.'),
//   StepCard(
//       Step: 'Step2',
//       body: 'Boil Milk. Add green elaichi. Let the milk cool down.'),
//   StepCard(Step: 'Step3', body: 'Add soaked Babri Byol seeds.'),
//   StepCard(Step: 'Step4', body: 'Add sugar. Mix well'),
//   StepCard(Step: 'Step5', body: 'Add grated dried coconut pieces. Mix well'),
//   StepCard(Step: 'Step6', body: 'Sprinkle the saffron strands. (Optional)'),
//   StepCard(
//       Step: 'Step7',
//       body: 'Refrigerate the glasses for 5 to 6 hours and then serve.'),
// ];

// List<StepCard> kesardoodh = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Soak almonds 10-15 minutes and blend into a paste OR grind almonds into a fine powder.'),
//   StepCard(Step: 'Step2', body: 'Boil milk with saffron, sugar and cardamom'),
//   StepCard(
//       Step: 'Step3',
//       body: 'Add almond paste or almond powder to milk. Mix thoroughly.'),
//   StepCard(
//       Step: 'Step4',
//       body: 'Milk and serve – optionally top with crushed mixed nuts'),
// ];

// List<StepCard> lassi = [
//   StepCard(
//       Step: 'Step1',
//       body: 'Place the yogurt in a tall container and whisk it until smooth.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Add in the water and the rest of the ingredients and whisk it all together.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'You can leave this in the refrigerator to serve later. The water will separate from the yogurt, so ensure you mix it before serving.'),
// ];

// List<StepCard> kanji = [
//   StepCard(
//       Step: 'Step1',
//       body: 'Pound the yellow mustard into a coarse powder and keep aside.'),
//   StepCard(
//       Step: 'Step2',
//       body:
//           'Boil water, cover, and then allow it to cool to room temperature. Keep its lid on throughout.'),
//   StepCard(
//       Step: 'Step3',
//       body:
//           'Once cooled, transfer water to a clean, wide-mouthed ceramic or glass jar. Add all the other ingredients and stir with a dry spoon to combine.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Cover the jar lightly with a muslin cloth and allow it to sit in mild winter sunlight, either outside or indoors at room temperature, for 2-3 days. Stir every morning. Within 48 hours, the drink should turn slightly sour and start to ferment.'),
//   StepCard(
//       Step: 'Step5',
//       body:
//           'Transfer a jar of fermented kanji to the refrigerator. To serve, pour into a glass, reserving the carrots to eat as pickles with a meal or in a sandwich')
// ];

// List<StepCard> gudchai = [
//   StepCard(
//       Step: 'Step1',
//       body:
//           'Crush cardamom along with pepper to a coarse mixture, set aside. Boil water.'),
//   StepCard(
//       Step: 'Step2',
//       body: 'Add tea powder to it, then add crushed mixture. Let it boil.'),
//   StepCard(
//       Step: 'Step3', body: 'Boil for at least 2 mins then add milk to it.'),
//   StepCard(
//       Step: 'Step4',
//       body:
//           'Boil for a minute, let it come to a rolling boil. Swirl the pan and simmer for a minute.'),
//   StepCard(
//       Step: 'Step5',
//       body: 'Add jaggery powder and switch off. Strain and serve hot!'),
//   StepCard(Step: 'Step6', body: 'Froth it and Serve Gud Ki Chai hot !'),
// ];

// List <StepCard>  kesarphirni= [
//   StepCard(Step: 'Step1', body: 'Heat the ghee in pan. Fry the samolina on lie flame until it turn light brown. Now add chopped almonds, cashew and pistachios and fry for 2 miniutes.'),
// StepCard(Step: 'Step2', body: 'Take 1/2 bowl of milk and soak the saffron strands in it before 10 minutes of cooking.'),
//   StepCard(Step: 'Step3', body: 'Add milk sugar and cardamom powder to semolina mix well and cook until the whole mixture becomes thick. Stir it continously.'),
// StepCard(Step: 'Step4', body: 'Once it become thick put off the flame and stir for 2 minutes. Pour it in a other bowl and let it set. Garnish it with saffron and almonds.'),
// StepCard(Step: 'Step5', body: 'Kong(kesar) phirni is ready. U can also refrigerate it for 2 to 3 hour and serve it cold.'),

// ];

// List <StepCard>  applekheer= [
//   StepCard(Step: 'Step1', body: 'Firstly, peel the skin of the apple and grate it.'),
//   StepCard(Step: 'Step2', body: 'Transfer the grated apple to a pan. make sure not to rest long as it oxidised and turns brown.'),
//   StepCard(Step: 'Step3', body: 'Saute with 1 tsp ghee on medium flame.'),
//   StepCard(Step: 'Step4', body: 'Cook until the water is all evaporated and apple is cooked well. cool completely.'),
//   StepCard(Step: 'Step5', body: 'In a large kadai heat 3 cup milk and add ¼ tsp saffron. get to a boil.'),
//   StepCard(Step: 'Step6', body: 'Add ¼ cup condensed milk and mix well.'),
//   StepCard(Step: 'Step7', body: 'Boil for 10 minutes or until the milk thickens.'),
//   StepCard(Step: 'Step8', body: 'Add ¼ tsp cardamom powder and mix well. allow the milk to cool completely.'),
//   StepCard(Step: 'Step9', body: 'Now add cooked apple and mix well. make sure both apple and milk is to room temperature, else there are chances of milk to curdle.'),
//   StepCard(Step: 'Step10', body: 'Cover and refrigerate for 30 minutes or until its chilled.Finally, serve apple kheer garnished with few chopped nuts.'),

// ];

// List <StepCard>  lyde= [
//   StepCard(Step: 'Step1', body: 'First, make a sugar syrup with sugar, cardamom pods, and water till it\'s thick. Switch off and cool on the counter. Remove the cardamom pods.'),
//   StepCard(Step: 'Step2', body: 'Sieve the flours. Add 1 cup ghee and rub it well on the flour. Add the syrup, and knead to a firm and smooth dough.'),
//   StepCard(Step: 'Step3', body: 'Divide it into small lemon-sized portions. Take one and using both palms, roll into a long shape. Then twist it to give the suggested shape. Make all the Lyde in a similar way. Keep covered with a cloth.'),
//   StepCard(Step: 'Step4', body: 'Then heat the remaining ghee and slow fry in batches till golden brown.'),
//   StepCard(Step: 'Step5', body: 'Cool on the counter till crisp. Serve at any time and enjoy!'),

// ];

// List <StepCard>  sevaiyan= [
//   StepCard(Step: 'Step1', body: 'Boil milk , add seviyan and let it boil to half of the milk and seviyan is tender and mixed up with the milk, add saffron also'),
//   StepCard(Step: 'Step2', body: 'Add sugar and boil for some more time.'),
//   StepCard(Step: 'Step3', body: 'Add cardamom powder and all the dry fruits'),
//   StepCard(Step: 'Step4', body: 'Serve in a serving dish Or serve it in individual bowls and serve hot or cold'),

// ];

// List <StepCard>  falooda = [
//   StepCard(Step: 'Step1', body: ' Soak sabja(basil) seeds in excess water for 1 hr. Cook vermicelli in boiling water for 3-4 min. Strain and keep aside.'),
//   StepCard(Step: 'Step2', body: 'Take a tall glass and add 1 tsp rose syrup at the bottom. Top it with 1 tbsp cooked vermicelli followed by 1 tbsp sabja seeds, 1 tbsp Nestlé MILKMAID, and 5 tbsp crushed ice.'),
//   StepCard(Step: 'Step3', body: 'Repeat the above step and garnish with dry fruits.'),
//   StepCard(Step: 'Step4', body: 'Mix well and serve.'),

// ];

// List <StepCard>  shufta= [
//   StepCard(Step: 'Step1', body: 'Soak almonds, cashew nuts, big raisins, pistachios and walnuts in enough water for 30 minutes.'),
//   StepCard(Step: 'Step2', body: 'Soak dry dates in another bowl.'),
//   StepCard(Step: 'Step3', body: 'Cut the soaked dates into small pieces and remove the seeds.'),
//   StepCard(Step: 'Step4', body: 'Heat ghee in a pan.'),
//   StepCard(Step: 'Step5', body: 'Fry the coconut till slightly browned.'),
//   StepCard(Step: 'Step6', body: 'Remove in a plate.'),
//   StepCard(Step: 'Step7', body: 'Fry paneer pieces in the same ghee till slightly browned.'),
//   StepCard(Step: 'Step8', body: 'Drain the water from the dry fruits and add them in the pan.'),
//   StepCard(Step: 'Step9', body: 'Add the fried coconut.'),
//   StepCard(Step: 'Step10', body: 'Add sugar, black pepper powder, cinnamon powder, dry ginger powder, cardamom powder, saffron and rose petals in the pan.'),
//   StepCard(Step: 'Step11', body: 'Cook till sugar is dissolved.'),
//   StepCard(Step: 'Step12', body: 'Serve immediately.'),
//   StepCard(Step: 'Step13', body: 'If  making it for later use, re-heat before serving.'),

// ];

// List <StepCard>  halwa= [
//   StepCard(Step: 'Step1', body: 'In a non-stick pan heat 2-3 teaspoon of ghee and fry oats on low heat till colour changes.'),
//   StepCard(Step: 'Step2', body: 'Heat milk and sugar in a pan and bring it to a boil. Once the sugar is dissolved completely, add fried oats and stir continuously.'),
//   StepCard(Step: 'Step3', body: 'After this, add cardamom powder and the remaining ghee.'),
//   StepCard(Step: 'Step4', body: 'Add saffron threads for color and aroma. Stir until the mixture leaves the sides of the pan.'),
//   StepCard(Step: 'Step5', body: 'Remove from fire and garnish with fried cashews and raisins, Serve warm.'),

// ];

// List <StepCard>  basrakh= [
//   StepCard(Step: 'Step1', body: 'Add maida, ghee and powdered sugar in a bowl and knead it into a dough. Add lukewarm water also.'),
//   StepCard(Step: 'Step2', body: 'Cover this though for 10-15 mins.'),
//   StepCard(Step: 'Step3', body: 'Open it after 10-15 times and start giving the desired shape.'),
//   StepCard(Step: 'Step4', body: 'In a pan, heat the oil, and add the basrakh in it using a strainer and let it fry for some time.'),
//   StepCard(Step: 'Step5', body: 'After the shape is retained directly add basrakh into oil and fry it on low flame.'),
//   StepCard(Step: 'Step6', body: 'After frying take basrakh out and let it cool down'),
//   StepCard(Step: 'Step7', body: 'Prepare sugar syrup and coat the cooled down basrakh with the sugar syrup'),
//   StepCard(Step: 'Step8', body: 'Garnish the basrakh with dry fruits and serve.'),

// ];

// List <StepCard>  tosha= [
//   StepCard(Step: 'Step1', body: 'At first,take flour in a pot.'),
//   StepCard(Step: 'Step2', body: 'Put water in flour and mix it.'),
//   StepCard(Step: 'Step3', body: 'Knead the flour and make a dough.'),
//   StepCard(Step: 'Step4', body: 'Make the dough soft, keep it for 15 mins.'),
//   StepCard(Step: 'Step5', body: 'Take the dough and roll it in one big piece.'),
//   StepCard(Step: 'Step6', body: 'Roll the dough by rolling pin.'),
//   StepCard(Step: 'Step7', body: 'Take a tawa in gas.'),
//   StepCard(Step: 'Step8', body: 'Roast it in tawa until it gets dry and golden brown.'),
//   StepCard(Step: 'Step9', body: 'Never completely dry roast.'),
//   StepCard(Step: 'Step10', body: 'After half roast and getting golden spot from both side'),
//   StepCard(Step: 'Step11', body: 'Keep it in a plate and break the bread into small pieces quickly.'),
//   StepCard(Step: 'Step12', body: 'If u getting late then the bread will hard.'),
//   StepCard(Step: 'Step13', body: 'Keep the bread pieces in a plate'),
//   StepCard(Step: 'Step14', body: 'Then,melt ghee in a bowl'),
//   StepCard(Step: 'Step15', body: 'Next,add ghee and powder sugar on the pieces of bread.'),
//   StepCard(Step: 'Step16', body: 'Add all the dry fruit with them.'),
//   StepCard(Step: 'Step17', body: 'Mix all of them together in a pot.'),
//   StepCard(Step: 'Step18', body: 'Knead them together again in it.'),
//   StepCard(Step: 'Step19', body: 'Then,knead them during some time.'),
//   StepCard(Step: 'Step20', body: 'At the time of knead, if u want,can add more ghee.'),
//   StepCard(Step: 'Step21', body: 'After knead,take small part of the mixture in hand.'),
//   StepCard(Step: 'Step22', body: 'Make oval shape in hand'),
//   StepCard(Step: 'Step23', body: 'Spread and roll poppy seeds on them.'),
//  StepCard(Step: 'Step24', body: 'Lastly,ready and serve tosha to all.'),
// ];