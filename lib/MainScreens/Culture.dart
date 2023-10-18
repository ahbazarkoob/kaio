// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/culture.dart';
import 'package:kaio/main.dart';

import 'gallerypage.dart';

class Culture extends StatelessWidget {
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
          children: [_CulturePage(), _GradientWidget(), TopLayerWidget()],
        ),
      ),
    );
  }

  Widget _CulturePage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image.asset(
          fit: BoxFit.cover,
          'assets/images/Culture/Main/culturebackground.png'),
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

class TopLayerWidget extends StatefulWidget {
  @override
  State<TopLayerWidget> createState() => _TopLayerWidgetState();
}

class _TopLayerWidgetState extends State<TopLayerWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: devH * 0.40,
            ),
            CarouselSlider(
              items: cultureCarousel,
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  scrollDirection: Axis.horizontal),
            ),
            Padding(
              padding: EdgeInsets.all(devW * 0.02),
              child: Text(
                'Gallery',
                style: kHeading.copyWith(color: Colors.teal),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => GalleryFetch()));
              },
              child: Card(
                child: Image.asset('assets/logo.png'),
              ),
            )
          ],
        ),
      ),
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

class GalleryCard extends StatefulWidget {
  String url = '';
  GalleryCard({required this.url});

  @override
  State<GalleryCard> createState() => _GalleryCardState();
}

class _GalleryCardState extends State<GalleryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: devW * 0.3,
      width: devW * 0.3,
      child: Image(image: NetworkImage(widget.url)),
    );
  }
}

class GalleryFetch extends StatefulWidget {
  GalleryFetch({Key? key}) : super(key: key);

  @override
  State<GalleryFetch> createState() => _GalleryFetchState();
}

class _GalleryFetchState extends State<GalleryFetch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('gallery').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> data =
                    snapshot.data!.docs[index].data()! as Map<String, dynamic>;
                return GalleryCard(url: data['ImageURL'].toString());
              },
            );
          },
        ),
      ),
    );
  }
}
