// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, non_constant_identifier_names, unused_import, unused_element, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/Destinations/DestinationSecondPage.dart';
import 'package:kaio/Destinations/Features.dart';
import 'package:kaio/Destinations/Container.dart';
import 'package:kaio/Destinations/Tab.dart';
import 'package:kaio/Destinations/desttemplate.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
import 'package:kaio/widgets/craft.dart';

PageController controller = PageController();

class Destination extends StatelessWidget {
  final controller = PageController();
  int selectedPage = 0;

  Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_DestinationPage(), _GradientWidget(), _topLayerWidget()],
      ),
    );
  }

  Widget _DestinationPage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child:
          Image.asset(fit: BoxFit.cover, 'assets/Destination/Main/kashmir.png'),
    );
  }

  Widget _GradientWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: devH * 0.7,
          width: devW,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffd1d1cd), Colors.transparent],
                  stops: [0.65, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ));
  }

  Widget _topLayerWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: devH * 0.40,
            ),
            DestinationFeatures(),
            SizedBox(
              height: devH * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'North',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(
                          imagePath: 'assets/Destination/Main/baramulla.png',
                          nextPage: Baramulla()),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/ganderbal.png',
                        nextPage: Ganderbal(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/bandipora.png',
                        nextPage: Bandipora(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/kupwara.png',
                        nextPage: Kupwara(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'South',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/kulgam.png',
                        nextPage: Kulgam(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/pulwama.png',
                        nextPage: Pulwama(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/shopian.png',
                        nextPage: Shopian(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/anantnag.png',
                        nextPage: Anantnag(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Central',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/srinagar.png',
                        nextPage: Srinagar(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/budgam.png',
                        nextPage: Budgam(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Baramulla() {
    return DestTemplate(
        placeName: 'Baramulla',
        cimages: BaramullaCImages,
        DescriptionPlace: '\n-Baramulla is also known as Varmul \n \n \n-The town was earlier known as "Vārāhamūla". \n \n \n-The name is derived from two Sanskrit words, Vārāha (meaning wild boar) and Mūla (meaning root/origin). ',
        places: BaramullaPlaceImages,
        things: BaramullaThingImages);
  }

  Widget Ganderbal() {
    return DestTemplate(
        placeName: 'Ganderbal',
        cimages: GanderbalCImages,
        DescriptionPlace: '\n-The Ganderbal district is located in valley of the Sindh River, also known as Nallah Sindh.\n-It is rich in landscape and is often called the District of Lakes, as it possesses the highest number of lakes in the state of Jammu and Kashmir.',
        places: GanderbalPlaceImages,
        things: GanderbalThingImages);
  }

  Widget Bandipora(){
    return DestTemplate(
        placeName: 'Bandipora',
        cimages: BandiporaCImages,
        DescriptionPlace: '\n-Bandipore district (also spelt as Bandipora or Bandipur) is an administrative district of Indian-administered Jammu and Kashmir in the disputed Kashmir region.\n-Bandipora was the connecting link between North India and Central Asia via the Silk Road.',
        places: BandiporaPlaceImages,
        things: BandiporaThingImages);
  }

  Widget Kupwara() {
    return DestTemplate(
        placeName: 'Bandipora',
        cimages: KupwaraCImages,
        DescriptionPlace: '\n-It is located in the vast Shams Bri mountainous range.\n-It is about 3000 m above sea level. \n-The pass is best known for its generation old mythological legend of Blind and Deaf Fairies.',
        places: KupwaraPlaceImages,
        things: KupwaraThingImages);
  }

  Widget Kulgam() {
    return DestTemplate(
        placeName: 'Bandipora',
        cimages: KulgamCImages,
        DescriptionPlace: 'DescriptionPlace',
        places: KulgamPlaceImages,
        things: KulgamThingImages);
  }

  Widget Pulwama() {
    return DestTemplate(
        placeName: 'Bandipora',
        cimages: PulwamaCImages,
        DescriptionPlace: 'DescriptionPlace',
        places: PulwamaPlaceImages,
        things: PulwamaThingImages);
  }

  Widget Shopian() {
    return DestTemplate(
        placeName: 'Shopian',
        cimages: ShopianCImages,
        DescriptionPlace: 'DescriptionPlace',
        places: ShopianPlaceImages,
        things: ShopianThingImages);
  }

  Widget Anantnag() {
    return DestTemplate(
        placeName: 'Bandipora',
        cimages: AnantnagCImages,
        DescriptionPlace: '\n-Located towards South of Jehlum Valley,beautified by the splendors of nature.\n\n-The majestic mountains, gushing streams, numerous springs,and aromatic flowers welcomes you to this land of amazing wonders in Kashmir.',
        places: AnantnagPlaceImages,
        things: AnantnagThingImages);
  }

  Widget Budgam() {
    return DestTemplate(
        placeName: 'Bandipora',
        cimages: BudgamCImages,
        DescriptionPlace: '\n-Came into existence in 1979, prior to which it was part of Srinagar district.\n\n-Tourist attractions are Doodhpathri,Yusmarg,Tosamaidan,Nilnag\n\n-Shrine of Sheikh Noor-ud-din Wali can also be found in Charari Sharief.',
        places: BudgamPlaceImages,
        things: BudgamThingImages);
  }

  Widget Srinagar() {
    return DestTemplate(
        placeName: 'Srinagar',
        cimages: SrinagarCImages,
        DescriptionPlace: '-Summer capital of Jammu and Kashmir (UT).\n\n-Situated in the centre of the Kashmir Valley on the banks of the Jhelum River.\n\n-Famous for its gardens, lakes and houseboats.',
        places: SrinagarPlaceImages,
        things: SrinagarThingImages);
  }
}


List<String> BaramullaPlaceImages = [
  'assets/Destination/Baramulla/place/Gulmarg.png',
  'assets/Destination/Baramulla/place/DrungWaterfall.png',
  'assets/Destination/Baramulla/place/RaniTemple.png',
  'assets/Destination/Baramulla/place/NingleNallah.png',
  'assets/Destination/Baramulla/place/ApharwatPeak.png',
];
List<String> BaramullaThingImages = [
  'assets/Destination/Baramulla/thing/gondolaRide.png',
  'assets/Destination/Baramulla/thing/golfing.png',
  'assets/Destination/Baramulla/thing/Skiing.png',
  'assets/Destination/Baramulla/thing/Snowboarding.png',
];
List<String> BaramullaCImages = [
  'assets/Destination/Baramulla/place/Gulmarg.png',
  'assets/Destination/Baramulla/place/DrungWaterfall.png',
  'assets/Destination/Baramulla/place/RaniTemple.png',
  'assets/Destination/Baramulla/place/NingleNallah.png',
  'assets/Destination/Baramulla/place/ApharwatPeak.png',
];

List<String> GanderbalPlaceImages = [
  'assets/Destination/Ganderbal/place/Sonamarg.png',
  'assets/Destination/Ganderbal/place/Harmukh.png',
  'assets/Destination/Ganderbal/place/ManasbalLake.png',
  'assets/Destination/Ganderbal/place/Prang.png',
  'assets/Destination/Ganderbal/place/MohandMarg.png',
];
List<String> GanderbalThingImages = [
  'assets/Destination/Ganderbal/thing/gangbalTrek.png',
  'assets/Destination/Ganderbal/thing/MountainBiking.png',
  'assets/Destination/Ganderbal/thing/Fishing.png',
  'assets/Destination/Ganderbal/thing/RiverRafting.png'
];
List<String> GanderbalCImages = [
  'assets/Destination/Ganderbal/place/Sonamarg.png',
  'assets/Destination/Ganderbal/place/Harmukh.png',
  'assets/Destination/Ganderbal/place/ManasbalLake.png',
  'assets/Destination/Ganderbal/place/Prang.png',
  'assets/Destination/Ganderbal/place/MohandMarg.png',
];

List<String> BandiporaPlaceImages = [
  'assets/Destination/Bandipora/place/WullarLake.png',
  'assets/Destination/Bandipora/place/GurezValley.png',
  'assets/Destination/Bandipora/place/ChotaAmarnath.png',
  'assets/Destination/Bandipora/place/NishatPark.png',
  'assets/Destination/Bandipora/place/Watlab.png',
];
List<String> BandiporaThingImages = [
  'assets/Destination/Bandipora/things/Fishing.png',
  'assets/Destination/Bandipora/things/GurezCamping.png',
];

List<String> BandiporaCImages = [
  'assets/Destination/Bandipora/place/WullarLake.png',
  'assets/Destination/Bandipora/place/GurezValley.png',
  'assets/Destination/Bandipora/place/ChotaAmarnath.png',
  'assets/Destination/Bandipora/place/NishatPark.png',
  'assets/Destination/Bandipora/place/Watlab.png',
];

List<String> KupwaraPlaceImages = [
'assets/Destination/Kupwara/place/Lolab.png',
'assets/Destination/Kupwara/place/SadhnaPass.png',
'assets/Destination/Kupwara/place/BungusValley.png',
'assets/Destination/Kupwara/place/Kalaroos.png',
];
List<String> KupwaraThingImages = [
  'assets/Destination/Kupwara/thing/BungusValleySightseeing.png',
  'assets/Destination/Kupwara/thing/HorseRiding.png',
  'assets/Destination/Kupwara/thing/BungusValleySafari.png',
  'assets/Destination/Kupwara/thing/MountainBiking.png'
];
List<String> KupwaraCImages = [
  'assets/Destination/Kupwara/place/Lolab.png',
  'assets/Destination/Kupwara/place/SadhnaPass.png',
  'assets/Destination/Kupwara/place/BungusValley.png',
  'assets/Destination/Kupwara/place/Kalaroos.png',
];
List<String> KulgamPlaceImages = [
  'assets/Destination/Kulgam/place/badibahek.png',
  'assets/Destination/Kulgam/place/chiranbal.png',
  'assets/Destination/Kulgam/place/houenheng.png',
  'assets/Destination/Kulgam/place/Panchanpathri.png',
  'assets/Destination/Kulgam/place/vasaknagkund.png',
];
List<String> KulgamThingImages = [
  'assets/Destination/Kulgam/place/badibahek.png',
  'assets/Destination/Kulgam/place/chiranbal.png',
  'assets/Destination/Kulgam/place/houenheng.png',
  'assets/Destination/Kulgam/place/Panchanpathri.png',
  'assets/Destination/Kulgam/place/vasaknagkund.png',
];
List<String> KulgamCImages = [
  'assets/Destination/Kulgam/place/badibahek.png',
  'assets/Destination/Kulgam/place/chiranbal.png',
  'assets/Destination/Kulgam/place/houenheng.png',
  'assets/Destination/Kulgam/place/Panchanpathri.png',
  'assets/Destination/Kulgam/place/vasaknagkund.png',
];

List<String> PulwamaPlaceImages = [
  'assets/Destination/Pulwama/place/avantishwartemple.png',
  'assets/Destination/Pulwama/place/hundurgompa.png',
  'assets/Destination/Pulwama/place/kungwattan.png',
  'assets/Destination/Pulwama/place/marsartarsar.png',
  'assets/Destination/Pulwama/place/payertemple.png',
];
List<String> PulwamaThingImages = [
  'assets/Destination/Pulwama/place/avantishwartemple.png',
  'assets/Destination/Pulwama/place/hundurgompa.png',
  'assets/Destination/Pulwama/place/kungwattan.png',
  'assets/Destination/Pulwama/place/marsartarsar.png',
  'assets/Destination/Pulwama/place/payertemple.png',
];
List<String> PulwamaCImages = [
  'assets/Destination/Pulwama/place/avantishwartemple.png',
  'assets/Destination/Pulwama/place/hundurgompa.png',
  'assets/Destination/Pulwama/place/kungwattan.png',
  'assets/Destination/Pulwama/place/marsartarsar.png',
  'assets/Destination/Pulwama/place/payertemple.png',
];
List<String> ShopianPlaceImages = [
  'assets/Destination/Shopain/place/aharbal.png',
  'assets/Destination/Shopain/place/hirpora.png',
  'assets/Destination/Shopain/place/kousarnaglake.png',
  'assets/Destination/Shopain/place/mughalroad.png',
  'assets/Destination/Shopain/place/pirkigali.png',
];
List<String> ShopianThingImages = [
  'assets/Destination/Shopain/thing/shopaincamping.png',
  'assets/Destination/Shopain/thing/shopainfishing.png',
  'assets/Destination/Shopain/thing/shopainsanctuary.png',
  'assets/Destination/Shopain/thing/shopaintrek.png',
];
List<String> ShopianCImages = [
  'assets/Destination/Shopain/carousel/shopain1.jpg',
  'assets/Destination/Shopain/carousel/shopain2.jpg',
  'assets/Destination/Shopain/carousel/shopain3.jpg',
  'assets/Destination/Shopain/carousel/shopain4.jpeg',
];

List<String> AnantnagPlaceImages = [
  'assets/Destination/Anantnag/place/Achabal.png',
  'assets/Destination/Anantnag/place/amarnath.png',
  'assets/Destination/Anantnag/place/Kokernag.png',
  'assets/Destination/Anantnag/place/Pahalgam.png',
  'assets/Destination/Anantnag/place/Verinag.png',
];
List<String> AnantnagThingImages = [
  'assets/Destination/Anantnag/thing/anantnagfishing.png',
  'assets/Destination/Anantnag/thing/anantnaghorseride.png',
  'assets/Destination/Anantnag/thing/anantnagrafting.png',
  'assets/Destination/Anantnag/thing/anantnagspring.png',
];
List<String> AnantnagCImages = [
  'assets/Destination/Anantnag/carousel/anantnag1.jpg',
  'assets/Destination/Anantnag/carousel/anantnag2.jpg',
  'assets/Destination/Anantnag/carousel/anantnag3.jpg',
  'assets/Destination/Anantnag/carousel/anantnag4.jpg',
];

List<String> SrinagarPlaceImages = [
 'assets/Destination/Srinagar/Place/Shalimar.png',
 'assets/Destination/Srinagar/Place/Tulipgarden.png',
 'assets/Destination/Srinagar/Place/Parimahal.png',
 'assets/Destination/Srinagar/Place/Chashmashahi.png',
 'assets/Destination/Srinagar/Place/Badamwari.png',

];
List<String> SrinagarThingImages = [
 'assets/Destination/Srinagar/Things/Shikara.png',
 'assets/Destination/Srinagar/Things/paragliding.png',
 'assets/Destination/Srinagar/Things/heritage.png',
 'assets/Destination/Srinagar/Things/houseboat.png',
 'assets/Destination/Srinagar/Things/birds.png'
];
List<String> SrinagarCImages = [
  'assets/Destination/Srinagar/Carousel/srinagar1.jpg',
  'assets/Destination/Srinagar/Carousel/srinagar2.avif',
  'assets/Destination/Srinagar/Carousel/srinagar3.jpg',
  'assets/Destination/Srinagar/Carousel/srinagar4.png',
  'assets/Destination/Srinagar/Carousel/srinagar5.jpg',

];

List<String> BudgamPlaceImages = [
  'assets/Destination/Budgam/place/Doodhpathri.png',
  'assets/Destination/Budgam/place/naranag.png',
  'assets/Destination/Budgam/place/nilnag.png',
  'assets/Destination/Budgam/place/tosamadan.png',
  'assets/Destination/Budgam/place/yusmarg.png',
];

List<String> BudgamThingImages = [
  'assets/Destination/Budgam/place/Doodhpathri.png',
  'assets/Destination/Budgam/place/naranag.png',
  'assets/Destination/Budgam/place/nilnag.png',
  'assets/Destination/Budgam/place/tosamadan.png',
  'assets/Destination/Budgam/place/yusmarg.png',
];

List<String> BudgamCImages = [
  'assets/Destination/Budgam/place/Doodhpathri.png',
  'assets/Destination/Budgam/place/naranag.png',
  'assets/Destination/Budgam/place/nilnag.png',
  'assets/Destination/Budgam/place/tosamadan.png',
  'assets/Destination/Budgam/place/yusmarg.png',
];
