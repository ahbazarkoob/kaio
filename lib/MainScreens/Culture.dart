// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Culture/gallery.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/culture.dart';
import 'package:kaio/main.dart';

// PageController controller = PageController();

class Culture extends StatelessWidget {
  // final controller = PageController();
  // int selectedPage = 0;

  Culture({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
              title: Text(
                'Kaio',
                style: kSubHeading,
              ),
              backgroundColor: Theme.of(context).primaryColor,
            ),
        body: Stack(
          children: [_DestinationPage(), _GradientWidget(), _topLayerWidget()],
        ),
      ),
    );
  }

  Widget _DestinationPage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child:
          Image.asset(fit: BoxFit.cover, 'assets/images/Culture/Main/culturebackground.png'),
    );
  }

  Widget _GradientWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: devH * 0.6,
          width: devW,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffd1d1cd), Colors.transparent],
                  stops: [0.65, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ));
  }
}




  
class _topLayerWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: devH * 0.40,
            ),
            CultureFeatures(),
            SizedBox(
              height: devH * 0.01,
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gallery',
                        style: kHeading,
                      ),
                      SizedBox(width: devW*1.5,),
                       GestureDetector(onTap: () {
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                         child: Text(
                          'View More',
                          style: kNormalTextBold,
                                           ),
                       ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:[
                        gallerycontainer(imagePath: 'assets/gulmarg.jpg',),
                        gallerycontainer(imagePath: 'assets/story1.jpg',),
                        gallerycontainer(imagePath: 'assets/gulmarg.jpg',),
                      ] ,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}







class CultureFeatures extends StatelessWidget {
  const CultureFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: cultureCarousel,
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              scrollDirection: Axis.horizontal),
        ),
      ],
    );
  }
}

class carouselContainer extends StatefulWidget {
  String imagePath;
  var NextPage;

  carouselContainer({required this.imagePath, required this.NextPage});

  @override
  State<carouselContainer> createState() => _carouselContainerState();
}

class _carouselContainerState extends State<carouselContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.NextPage),
        );
      },
      child: Container(
        margin: EdgeInsets.all(devW * 0.03),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: devW * 0.8,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(widget.imagePath),
        ),
      ),
    );
  }
}




class gallerycontainer extends StatelessWidget {
  String imagePath;
  gallerycontainer ({required this.imagePath});

  @override
  
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(devW * 0.03),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: devW * 0.6,
        height: devH * 0.23,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(imagePath),
        ),
      );
  }
}



