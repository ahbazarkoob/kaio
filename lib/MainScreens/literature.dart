// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print, unused_element

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
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
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Color(0xff85586F),
                            borderRadius: BorderRadius.circular(25.0)),
                        tabs: [
                          Tab(text: 'Poetry'),
                          Tab(text: 'Prose'),
                          Tab(text: 'History'),
                          Tab(text: 'New'),
                        ],
                        labelColor: Colors.black,
                      ),
                    ),
                    Container(
                      height: devH * 0.40,
                      width: devW * 0.85,
                      child: TabBarView(
                        children: [
                          Poetry(),
                          Prose(),
                          History(),
                          New(),
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

class Poetry extends StatefulWidget {
  const Poetry({super.key});

  @override
  State<Poetry> createState() => _PoetryState();
}

class _PoetryState extends State<Poetry> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(
            name: BookTemplate(
              genre: 'POETRY',
              lang: 'KASHMIRI',
              pages: '200',
                finalPath: 'assets/museeki.jpg',
                bookName: 'Museeki',
                author: 'Museeki Kashmiri',
                link:
                    'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/museeki.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/rasol.jpg',
                bookName: 'Kulliyat-e-Rasol-Mir',
                author: 'Rasol Mir',
                link:
                    'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rasol.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/shamas.jpg',
                bookName: 'Kuliyaat-e-Shamas-Fakir',
                author: 'Shamas Fakir',
                link:
                    'https://drive.google.com/file/d/1oI87TnRSI3nF-Yj6uk0fA_0l-S2if0xT/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/shamas.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/mehjoor.jpg',
                bookName: 'Kulliyaat-e-Mahjoor',
                author: 'Mahjoor',
                link:
                    'https://drive.google.com/file/d/1pZJzBITrxKISL9tRUOuhSqIbH0c4igmJ/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/mehjoor.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/kral.jpg',
                bookName: 'Kulliayt-e-Soch-Kral',
                author: 'Soch Kral',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/kral.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/argami.jpg',
                bookName: 'Argami',
                author: 'Lali Sob Argami',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/argami.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/rahim.jpg',
                bookName: 'Kulliyat-e-Rahim-Sopori',
                author: 'Rahim Sopori',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rahim.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/fakir.jpg',
                bookName: 'Shamas Fakir',
                author: 'Shamas Fakir',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/fakir.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/wali.jpg',
                bookName: 'Gash Kati Aaw',
                author: 'Wali Bhat',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/wali.jpg'),
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
        BookShape(
            name: BookTemplate(
               genre: 'HISTORY',
              lang: 'KASHMIRI',
              pages: '200',
              author: 'Alastair Lamb',
              bookName: 'Kashmir- A Disputed Legacy',
              descriptionText: '',
              finalPath: 'assets/KashmirAlas.jpg',
              link:
                  'https://drive.google.com/file/d/12P49VpcwBhX0Zd2WGw3La91YMdgpJnwa/view?usp=sharing',
            ),
            imagepath: 'assets/KashmirAlas.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'HISTORY',
              lang: 'KASHMIRI',
              pages: '200',
              author: 'Mridu Rai',
              bookName: 'Hindu Rulers, Muslim Subjects',
              descriptionText: '',
              finalPath: 'assets/HinduRulers.jpg',
              link:
                  'https://drive.google.com/file/d/1fqKP6Ngkko9KgvBXCOuGXR0gdIMQwrTZ/view?usp=sharing',
            ),
            imagepath: 'assets/HinduRulers.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'HISTORY',
              lang: 'KASHMIRI',
              pages: '200',
              author: 'Prem Nath Bazaz',
              bookName: 'The History Of Struggle for Freedom in Kashmir',
              descriptionText: '',
              finalPath: 'assets/Struggle.jpg',
              link:
                  'https://drive.google.com/file/d/1DSNEBDY3gOabEWSauYNs46NYXD7Smjhj/view?usp=sharing',
            ),
            imagepath: 'assets/Struggle.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'HISTORY',
              lang: 'KASHMIRI',
              pages: '200',
              author: 'S.R Bakshi',
              bookName: 'Kashmir: History and People',
              descriptionText: '',
              finalPath: 'assets/KashmirHistory.jpg',
              link:
                  'https://drive.google.com/file/d/1L51gNjpzZfTGeowlRNO86bfpjBILL5k4/view?usp=sharing',
            ),
            imagepath: 'assets/KashmirHistory.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'HISTORY',
                lang: 'KASHMIRI',
                pages: '200',
                author: 'Rajataranggini(Translation)',
                bookName: 'Jogesh Chunder Dutt',
                descriptionText: '',
                finalPath: 'assets/Rajantarangni.jpg',
                link:
                    'https://drive.google.com/file/d/1-_LjlaMk65876p_ofw72FflpVGkirLxg/view?usp=sharing'),
            imagepath: 'assets/Rajantarangni.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'HISTORY',
              lang: 'KASHMIRI',
              pages: '200',
              author: 'Walter R. Lawrence',
              bookName: 'The Valley Of Kashmir',
              descriptionText: '',
              finalPath: 'assets/ValleyOfKashmir.jpg',
              link:
                  'https://drive.google.com/file/d/1gyRXbPRPZqJ2p8raAA58H2X0Dl1HkdQg/view?usp=sharing',
            ),
            imagepath: 'assets/ValleyOfKashmir.jpg'),
      ],
    );
  }
}

class Prose extends StatelessWidget {
  const Prose({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/RaaiTraai.jpg',
                bookName: 'RAAI TRAAI',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1ajbDTWWI5JG_aev3nW4OxuV_P85bgz4t/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/RaaiTraai.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/TyothPazr.jpg',
                bookName: 'TIYUTH PAZAR',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1hewjHCXvfQXcyMHUiqo_IF0ixU2gLwDd/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/TyothPazr.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/Akhyaadakhqayamat.jpg',
                bookName: 'AKH YAAD AKH QAYAMAT',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1B0UfQpedtLBr-QDXKzBNUpMNevEjtcy4/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/Akhyaadakhqayamat.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/Hawas.jpg',
                bookName: 'HAWAS',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/15zBPvr9eZlCY5GQOviXhx78GRRbyAQzA/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/Hawas.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/rahman.jpg',
                bookName: 'KHEWAT',
                author: 'Rahman Rahi',
                link:
                    'https://drive.google.com/file/d/1GWL9f-xYvtYrupI7C62qV-UyRsox4wEX/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rahman.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/DiltiDewar.jpg',
                bookName: 'DIL TI DEWAR',
                author: 'Lateef Aashiq',
                link:
                    'https://drive.google.com/file/d/1Jnub_OBe36yZCV7UxO1y6OgWHqmsIkh3/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/DiltiDewar.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/Yetinooresarearzwasamaa.jpg',
                bookName: 'YATI NOOR SER ARAZ O SAMA',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1Zhi9paW8rq16fZo4ky8jfv5pz5LD8SEg/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/Yetinooresarearzwasamaa.jpg'),
      ],
    );
  }
}

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/thecollaborator.jpg',
                bookName: 'THE COLLABORATOR',
                author: 'Mirza Waheed',
                link:
                    'https://drive.google.com/file/d/1HiGfnZE7ruFbMx653-FdsO5JCFsQJRw7/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/thecollaborator.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/curfewednight.jpg',
                bookName: 'CURFEWED NIGHT',
                author: 'Basharat Peer',
                link:
                    'https://drive.google.com/file/d/1WrH65LWqxfbvL2-aqQRM1pR09XjJHpQR/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/curfewednight.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/ourmoonhasbloodclots.jpg',
                bookName: 'OUR MOON HAS BLOOD CLOTS',
                author: 'Rahul Pandita',
                link:
                    'https://drive.google.com/file/d/1HiGfnZE7ruFbMx653-FdsO5JCFsQJRw7/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/ourmoonhasbloodclots.jpg'),
        BookShape(
            name: BookTemplate(
               genre: 'POETRY',
                lang: 'KASHMIRI',
                pages: '200',
                finalPath: 'assets/kashmiradisputedlegacy.jpg',
                bookName: 'KASHMIR A DISPUTED LEGACY',
                author: 'Alstair Lamb',
                link:
                    'https://drive.google.com/file/d/1CNo2fpz57D5MliyuojW_ShssQSkDmS6m/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/kashmiradisputedlegacy.jpg'),
      ],
    );
  }
}


