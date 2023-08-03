// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Cuisines/FlipCarousel.dart';
import 'package:kaio/Handicrafts/Hc_papermachie.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/craft.dart';
import 'package:kaio/widgets/selection.dart';
import '../constants.dart';
import '../main.dart';

class Handicraft extends StatefulWidget {
  Handicraft({super.key});

  @override
  State<Handicraft> createState() => _HandicraftState();
}

class _HandicraftState extends State<Handicraft> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
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
          HandicraftCard(imagePath: 'assets/Carpet.png'),
          HandicraftCard(imagePath: 'assets/PaperMache.png'),
          HandicraftCard(imagePath: 'assets/Shawl.png'),
          HandicraftCard(imagePath: 'assets/tilla.png'),
          HandicraftCard(imagePath: 'assets/Copper.png'),
          HandicraftCard(imagePath: 'assets/Wood.png'),
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
                    Tab(text: 'Paper-Mache'),
                    Tab(text: 'Carpets, Rugs and Mats'),
                    Tab(text: 'Embroidery Work'),
                    Tab(text: 'Copper Work'),
                    Tab(text: 'Wood Carving'),
                  ],
                  labelColor: Colors.black,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PaperMac(),
                    CRM(),
                    Embroidery(),
                    CopperWork(),
                    WoodCarving()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ])));
  }
}

class PaperMac extends StatelessWidget {
  const PaperMac({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/FlowerVase.png'),
          CraftCard(imagePath: 'assets/TableLamp.png'),
          CraftCard(imagePath: 'assets/Clutch.png'),
          CraftCard(imagePath: 'assets/FruitBowl.png')
        ],
      ),
    );
  }
}

class CRM extends StatelessWidget {
  const CRM({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/Carpet1.png'),
          CraftCard(imagePath: 'assets/Carpet2.png'),
          CraftCard(imagePath: 'assets/Carpet3.png'),
          CraftCard(imagePath: 'assets/Carpet4.png')
        ],
      ),
    );
  }
}

class Embroidery extends StatelessWidget {
  const Embroidery({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Emboidery Work',
            style: kHeading,
          ),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class CopperWork extends StatelessWidget {
  const CopperWork({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/Samavar.png'),
          CraftCard(imagePath: 'assets/Izbandsoz.png'),
          CraftCard(imagePath: 'assets/Tramisarposh.png'),
          CraftCard(imagePath: 'assets/Dryfruitbowl.png'),
        ],
      ),
    );
  }
}

class WoodCarving extends StatelessWidget {
  const WoodCarving({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(
            imagePath: 'assets/AyatUlKursi.png',
          ),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class HandicraftCard extends StatelessWidget {
  String imagePath = '';
  HandicraftCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CarpetPage()));
      },
      child: Card(
        child: Container(
            height: devH * 0.3,
            width: devW * 0.9,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Image(fit: BoxFit.fill, image: AssetImage(imagePath))),
      ),
    );
  }
}

class CarpetPage extends StatelessWidget {
  const CarpetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Text('Carpets Of Kashmir',style: kHeading,)),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text('Kashmiri carpets are among the most exquisite and renowned handcrafted carpets in the world. These carpets are hand-knotted and woven in the picturesque region of Kashmir, located in the northern part of the Indian subcontinent. The art of carpet weaving in Kashmir has a long and illustrious history that dates back centuries. Known for their intricate designs, superior craftsmanship, and the use of premium materials, Kashmiri carpets have earned a special place in the realm of luxury home decor.',
                    style: kSelText,
                    textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Image(image: AssetImage('assets/Carpet.png'))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('History',style: kHeading,),
                    Text('The origins of Kashmiri carpets trace back to ancient times, with historical records suggesting that carpet weaving in the region began during the reign of Zain-ul-Abidin (Budshah) in the 15th century. However, the art form is believed to have been introduced even earlier, during the period of Hazrat Mir Syed Ali Hamdani, a Sufi mystic who brought skilled artisans from Persia to Kashmir via the silk route. This migration of artisans played a pivotal role in establishing Kashmir as a hub for exquisite carpet weaving.\n Over the centuries, the craft of carpet making in Kashmir flourished, and the weavers developed unique styles and motifs that reflected the region\'s cultural heritage. Kashmiri carpets gained recognition and acclaim worldwide, becoming highly sought-after luxury items in the global market.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The  Process of Carpet Making',style: kHeading,),
                    Text('The creation of a Kashmiri carpet is a painstaking and time-consuming process, involving multiple skilled artisans. The process can be broken down into three main steps: Designing, Dyeing, and Weaving.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                    Text('Designing a Carpet (Talim)',style: kSubHeading,),
                    Text('The process begins with designing the carpet. Talented designers finalize the patterns, motifs, and color combinations that will be used in the carpet. The intricate details are carefully planned, and the final layout is determined. The weavers follow a written code known as "Talim", which acts as a blueprint for creating the carpet.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                    SizedBox(height: 20,),
                    Image(image: AssetImage('assets/Talim.png')),
                    Text('Dyeing',style: kSubHeading,),
                    Text('Once the design is established, the yarn is sent for dyeing. The selection of high-quality dyes is crucial, as it determines the vibrancy and longevity of the colors in the carpet. Azo-free, chrome, and eco-friendly dyes are preferred to ensure environmental sustainability. After dyeing, the yarn is left to dry under the sunlight, enhancing the natural beauty of the colors.',
                    style: kSelText,
                    textAlign: TextAlign.justify,),
                    Image(image: AssetImage('assets/Yarn.png')),
                    Text('Weaving',style: kSubHeading,),
                    Text('The most critical phase of carpet making is the weaving process, where skilled weavers bring the design to life. The process can take several months to years, depending on the size and complexity of the carpet. Here\'s an overview of the weaving process:',
                    style: kSelText,
                    textAlign: TextAlign.justify,),
                    
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
