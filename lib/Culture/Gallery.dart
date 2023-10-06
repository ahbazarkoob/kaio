// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides, prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kaio/constants.dart';



class GalleryPage extends StatefulWidget {
  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  late http.Response apiResp;
  String url =
      'https://api.unsplash.com/collections/68212178/photos/?client_id=HDun6AM7gvQPnGI-B6ei8xIaD5F6Y02ZPUUwDRYDkxU';

  List data = [];
  List<String> imgUrl = [];

  getData() async {
    apiResp = await http.get(Uri.parse(url));
    data = jsonDecode(apiResp.body);
    _assign();
  }

  _assign() {
    for (var i = 0; i < data.length; i++) {
      imgUrl.add(data.elementAt(i)["urls"]["regular"]);
    }
    setState(() {});
  }



  @override
  void initState() {
    super.initState();
    getData();
  }

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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ Colors.white,
                Theme.of(context).scaffoldBackgroundColor,], 
            ),),
          child: imgUrl.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : GridView.builder(
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FullImage(imageUrl: imgUrl.elementAt(index)),
                          ),
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(imgUrl.elementAt(index)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    );
                  },
                ),
        ),
      ),
    );
  }
}

class FullImage extends StatelessWidget {
  final String imageUrl;
  FullImage({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
          // actions: [
          //   IconButton(onPressed: () {
             
          //   }, 
          //   icon: Icon(Icons.download)
          //   )
          //   ],
          // automaticallyImplyLeading: false),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ Colors.white,
                Theme.of(context).scaffoldBackgroundColor,], 
            ),),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.network(imageUrl),
          ),
        ),
      ),
    );
  }
}


