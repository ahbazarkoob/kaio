// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/Literature/Poetry/museeki.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/bookshape.dart';
import '../Literature/Book.dart';



class LiteraturePage extends StatefulWidget {
 
  LiteraturePage({super.key});

  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}



class _LiteraturePageState extends State<LiteraturePage> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff85586F), width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff85586F), width: 2)),
                ),
              ),
            ),
            Text('My Books', style: kHeading),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/rahman.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/museeki.jpg'),
                  ],
                )),
            Text(
              'Book Shelf',
              style: kHeading,
            ),
            DefaultTabController(
                      length: 5,
                      child: Expanded(
                        child: 
                            Column(
                              children: [
                                Container(height: 45,
                                decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25.0)),
                                  child: TabBar( indicator: BoxDecoration(
                                                    color: Color(0xff85586F),
                                                    borderRadius:  BorderRadius.circular(25.0)
                                                  ) ,
                                    tabs: [
                                      Tab(text: 'Poetry'),
                                      Tab(text: 'History'),
                                       Tab(text: 'Famous Writers'),
                                      Tab(text: 'Religion'),
                                       Tab(text: 'Folk'),
                                       
                                      
                                    ],
                                    labelColor: Colors.black,
                                    
                                   
                                  ),
                                ),
                                Expanded(
                              child: TabBarView(
                                children: [
                                  Poetry(),
                                  History(),
                                  FamousWriters(),
                                  Religion(),
                                  History()
                                  
                                  
                                ],
                              ),
                            ),
                              ],
                            ),
                            
                          
                      ),
                    ),
            ],
        ),
      ),
    );
  }
}

class Poetry extends StatelessWidget {
  const Poetry({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
       BookShape(name: BookTemplate
       (
          finalPath: 'assets/museeki.jpg', 
          bookName: 'Museeki', 
          author: 'Museeki Kashmiri', 
          link: 'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing', 
          descriptionText: 'descriptionText'), imagepath: 'assets/museeki.jpg'),
      BookShape(
            name: BookTemplate(
                finalPath: 'assets/rasol.jpg',
                bookName: 'Kulliyat-e-Rasol-Mir',
                author: 'Rasol Mir',
                link:
                    'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rasol.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/shamas.jpg',
                bookName: 'Kuliyaat-e-Shamas-Fakir',
                author: 'Shamas Fakir',
                link:
                    'https://drive.google.com/file/d/1oI87TnRSI3nF-Yj6uk0fA_0l-S2if0xT/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/shamas.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/mehjoor.jpg',
                bookName: 'Kulliyaat-e-Mahjoor',
                author: 'Mahjoor',
                link:
                    'https://drive.google.com/file/d/1pZJzBITrxKISL9tRUOuhSqIbH0c4igmJ/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/mehjoor.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/kral.jpg',
                bookName: 'Kulliayt-e-Soch-Kral',
                author: 'Soch Kral',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/kral.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/argami.jpg',
                bookName: 'Argami',
                author: 'Lali Sob Argami',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/argami.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/rahim.jpg',
                bookName: 'Kulliyat-e-Rahim-Sopori',
                author: 'Rahim Sopori',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rahim.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/fakir.jpg',
                bookName: 'Shamas Fakir',
                author: 'Shamas Fakir',
                link: 'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/fakir.jpg'),
        BookShape(
            name: BookTemplate(
                finalPath: 'assets/wali.jpg',
                bookName: 'Gash Kati Aaw',
                author: 'Wali Bhat',
                link: 'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/wali.jpg'),
      ],
    );
  }
}

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
      ],
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
      ],
    );
  }
}

class FamousWriters extends StatelessWidget {
  const FamousWriters({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}

class Religion extends StatelessWidget {
  const Religion({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}
