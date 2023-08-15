// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';

class Pilgrim extends StatelessWidget {
  Pilgrim({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [BackgroundImage(), ForegroundImage()],
        ),
      ),
    );
  }

  Widget BackgroundImage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/Destination/Main/kashPilgrims.png')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: devH * 0.4,
          ),
          PilgrimCard(
            'Amarnath Temple',
            'Surrounded by fairly steep hills, the Amarnath temple is considered to be Kashmir\'s oldest existing temple, dating back to the 5th century. This Shiva temple is situated in a narrow gorge on the far end of Lidder Valley at an altitude of 3888 m. The \'Yatra\' to Amarnath, one of the principal Hindu Dhams, starts from Chandanwari (2,895 m), 16 kms from Pahalgam, in the month of Sawan (July to August). The temple is famous for a \'Shiva-Lingam\', (a natural formation of ice, during the months of July/August) believed to wax and wane according the moon\'s cycle',
            'assets/images/amarnath.avif',
          ),
          PilgrimCard(
            'Shankaracharya Temple',
            'Shankaracharya Temple, located in the south-eastern part of Kashmir, is an excellent example to showcase the ancient Kashmiri architecture. Built on the picturesque location of Gopadari Hill, this Shiva temple stands on a solid rock and consists of an octagonal basement of 13 layers. The temple was built in 371 B.C. Since then, it has been repaired and renovated several times, yet it boasts of the architectural style of those times. The main shrine is built in a circular chamber and offers a wonderful view of Kashmir Valley, comprising of enchanting lakes and the majestic Himalayas.',
            'assets/images/shankracharya.jpg',
          ),
          PilgrimCard(
            'Kheer Bhawani',
            'This Hindu shrine, devoted to Goddess Ragnya Devi (a form of Maa Durga Bhagwati) is visited by a number of Muslims as well. The temple is called Kheer Bhawani because of numerous devotees who offer milk and kheer (a desert made of rice, milk and sugar) to the Goddess. Situated 27 km from Srinagar, the temple was built by King Maharana Pratap Singh in 1912.Another major charm of the temple is a hexagonal spring, which changes colour from time to time to various shades like red, pink, orange, green, blue, or milky white.',
            'assets/images/kheerbawani.jpg',
          ),
          PilgrimCard(
            'Sikh Gurudwara Chhatti Padshahi',
            'Chhatti Padshahi Gurudwara is one of the most peaceful and sacred places and the most important Sikh religious place in Kashmir. Located in Rainwadi, Srinagar, it is an important site for Sikh devotees who assemble here to offer prayers. The shrine is located on the southern gate of Hari Parbat Fort, i.e. Kathi Darwaza. This is the most important Gurudwara built by the sixth guru of Sikhs. A gurudwara has been built at every spot he had halted to preach, while travelling through Kashmir  The most important one among these is Chhatti Padshahi gurudwara.',
            'assets/images/chattipadshahi.jpg',
          ),
          PilgrimCard(
            'Sharika Devi Temple',
            'Sharika Devi Temple is situated on Hari Parbat in Srinagar and it is dedicated to Goddess Jagadamba Sharika Bhagwati. The holy idol of Goddess is having 18 arms who is sitting on Shri Chakra. This temple is regarded as one of the sacred sites for Kashmiri Pandits and also holds utmost importance by Hindu followers. The temple is visited by devotees in large number on the birthday of Goddess Sharika Bhagwati.',
            'assets/images/sharikadevi.jpg',
          ),
        ],
      ),
    );
  }

  Widget PilgrimCard(heading, description, imagePath) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: kHeading,
              ),
              SizedBox(
                height: devH * 0.02,
              ),
              Container(
                height: devH * 0.3,
                width: devW * 0.9,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      imagePath,
                    )),
              ),
              SizedBox(
                height: devH * 0.02,
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ));
  }
}
