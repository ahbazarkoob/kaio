// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/widgets/destinationFeature.dart';
import '../main.dart';

class Wildlife extends StatelessWidget {
  Wildlife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackgroundImage(), ForegroundImage()],
      ),
    );
  }

  Widget BackgroundImage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/Destination/Main/kashWidlife.png')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: devH * 0.4,
        ),
        FeatureCard(
         heading: 'Dachigam',
         description: 'Splendid forests, magnificent scenery and unique topographical variety are the factors that make Dachigam National Park the favourite of tourists. Situated 22 km from Srinagar, Dachigam national park is simply a dreamland for jungle enthusiasts. The park covers an area of 141 square kilometres with some of the most exotic flora and fauna species. The appearence of the park changes every season. In winters, the park is covered with white snow, while the spring brings bountiful greenery. Waterfalls and streams are unveiled in summers and vast grassy meadows and scented flowers can be observed in higher regions. Autumn is characterised with pastel shades of red, gold, yellow and orange on the trees and leaves.',
         imagePath:  'assets/Destination/Main/Carousel/dachigam.jpg',
        ),
        FeatureCard(
          heading: 'Gulmarg Biosphere Reserve',
          description: 'This biosphere lies 48 km from Srinagar and is rich in flora, fauna and avi-fauna (birds). A major part of the 180 square kilometres biosphere is covered in forests consisting mainly of conifers. The various species of mammals and birds can be seen here in the months of September to March and March to May, respectively. The Gulmarg Biosphere provides an opportunity to enjoy the natural beauty at an altitude of 2,400 to 4,300 meters above the sea level.',
          imagePath: 'assets/Destination/Main/Carousel/gulmargBiosphere.jpeg'),
        FeatureCard(
          heading: 'Hemis High Altitude Wildlife Sanctuary',
          description: 'A renowned sanctuary of Ladakh, Hemis is popular for Snow Leopards, Shapu, Bharal, Wild Sheeps and Goats. Being the largest park in South Asia and highest in the world, the Hemis High Altitude Wildlife Sanctuary covers an area of about 3,350 sq. Km and is located at 12000 feet from sea level. During winter, the nearby Zanskar River and its tributaries become frozen and the temperature drops typically to -15°C to -20°C at night. Although summer temperatures can reach upto 30°C in the lower elevations, snowfall can occur at any time of year. The best time for mammal and bird viewing is considered September to March, and March to May respctively. Trekking routes are also open from mid June to mid October. Take a jeep or elephant safari to spot various rare animals and explore the dense woods.',
          imagePath: 'assets/Destination/Main/Carousel/hemis.jpg'),
        FeatureCard(
           heading: 'Kishtwar High Altitude National Park',
            description: 'Established in 1981, the Kishtwar National Park is located in Jammu region, on a plateau above the Chenab River and below the Nagin Sheer glacier. The park is unique in terms of offering waterfalls, trekking, and sapphire mines of paddar at an altitudinal range of 1,700 to 4,800 meters above sea level. Along with different types of forest vegetation, one can spot about 15 species of mammals and about 50 species of birds in the Kishtwar park. The 400 sq km park is covered with exposed granite and marble rocks. Mostly people visit Kishtwar park in the months of June To October.',
            imagePath:'assets/Destination/Main/Carousel/kishtwar.jpg'),
        FeatureCard(heading: 'Overa National Park' ,
        description: 
            'This small national park, covering an area of 32.27 sq km, is situated near Pahalgam, 76 km from Srinagar. Set amidst stunning mountain landscapes, grassy hills and deep valleys, the park is best known for a number of pheasant species. Apart from pheasants, there are more than 13 species of rare and endangered mammals and over 80 species of birds in Overa. A major part of the Overa National Park is covered by conifers, Pinus Griffithii, Abies Pindrow, Aesculus Indica, Morus Alba, Juglans Regia.',
           imagePath: 'assets/Destination/Main/Carousel/OveraNational.jpg')
      ]),
    );
  }
}
