// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookShape2.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../constants.dart';
import '../main.dart';

List<BookTemplate> recents = [];

class BookTemplate extends StatefulWidget {
  String id;
  BookTemplate(this.id, {super.key});

  @override
  State<BookTemplate> createState() => _BookTemplateState();
}

class _BookTemplateState extends State<BookTemplate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            recents.add(BookTemplate(widget.id));
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: Colors.black,
        ),
        title: const Text('K-AIO', style: kHeading),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Theme.of(context).scaffoldBackgroundColor,
              ],
            ),
          ),
          child: Template()),
    ));
  }

  btn(String text1, String text2, IconData icon) {
    return Padding(
      padding: EdgeInsets.all(devW * 0.05),
      child: Column(
        children: [
          Text(
            text1,
            style: kNormalText,
          ),
          Icon(icon),
          Text(text2, style: kNormalText)
        ],
      ),
    );
  }

  Widget Template() {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('books')
            .where('BID', isEqualTo: widget.id.toString())
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return Padding(
                padding: EdgeInsets.all(devW * 0.05),
                child: Column(
                  children: [
                    BookShape2(imagepath: data['Bookimage']),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data['Bookname'],
                          style: kSubHeading,
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColor),
                              onPressed: () async {
                                {
                                  var url = data['Link'];
                                  if (!await canLaunchUrlString(url)) {
                                    await launchUrlString(url);
                                  }
                                }
                              },
                              icon: Icon(
                                Icons.menu_book,
                                color: Colors.black87,
                                size: devW * 0.1,
                              ),
                              label: Text(
                                'READ',
                                style: kNormalTextBold.copyWith(
                                  color: Colors.black87,
                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          data['Author'],
                          style: kNormalText,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        btn('GENRE', data['Genre'], Icons.book_rounded),
                        btn('LENGTH', data['Length'], Icons.menu_book),
                        btn('LANG', data['Language'], Icons.language),
                        Column(
                          children: [
                            LikeButton(
                              padding: const EdgeInsets.only(bottom: 20),
                              size: 4,
                              circleColor:
                                  const CircleColor(start: Colors.red, end: Colors.red),
                              bubblesColor: const BubblesColor(
                                dotPrimaryColor: Colors.red,
                                dotSecondaryColor: Colors.red,
                              ),
                              likeCount: 45,
                              likeCountPadding: const EdgeInsets.only(bottom: 15,left: 7),
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  isLiked ? Icons.favorite : Icons.favorite_border,
                                  color: isLiked ? Colors.red : Colors.black,
                                  size: 40,
                                  
                                );
                              },
                              onTap: (bool isLiked) {
                                // Implement the logic to handle the like/unlike action here.
                                // You can update Firestore, change the state, etc.
                                return Future.value(
                                    !isLiked); // Return the new like state.
                              },
                            ),
                            const Text('LIKES')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: devW * 0.02),
                          child: const Text(
                            'Description',
                            style: kHeading,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      data['Description'],
                      textAlign: TextAlign.justify,
                      style: kNormalText,
                    ),
                  ],
                ),
              );
            }).toList(),
          );
        });
  }
}
