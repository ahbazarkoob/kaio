// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/MainScreen.dart';
import 'package:kaio/main.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: CustomScrollView(
          slivers: [
            CustomAppBar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  OurServices(),
                ],
              ),
            ),
          ],
        ),
        endDrawer: AppDrawer(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(300.0);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 20,
      title: Text(
        'K-AIO',
        style: kTitle,
      ),
      automaticallyImplyLeading: false,
      backgroundColor: (Theme.of(context).primaryColor), //GREEN
      expandedHeight: 300.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Theme.of(context).scaffoldBackgroundColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text('Discover Kashmir:\n Heritage, Culture, and More',
                      textAlign: TextAlign.center, style: kSubHeading),
                ),
                Text(
                  'Discover your Kashmiri heritage with Kaio, the mobile app that immerses you in the rich literature, delicious cuisines, exquisite handicrafts, breathtaking destinations, and vibrant culture of Kashmir.',
                  textAlign: TextAlign.justify,
                  style: kNormalText,
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
      actionsIconTheme: IconThemeData(
          color: Color(0xff473144), size: 25),
    );
  }
}

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Our Services',
              style: kSubHeading,
            ),
          ),
          Column(children: ServiceList)
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  String service = '', description = '', imagePath;
  var nextpage;
  ServiceCard(
      {super.key,
      required this.service,
      required this.description,
      required this.imagePath,
      required this.nextpage});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10.0, left: 10.0, top: 15.0, bottom: 5.0),
              child: Image(
                image: AssetImage(widget.imagePath),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Discover Your Kashmiri ${widget.service}',
                    style: kSubHeading,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    widget.description,
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                ),
                ElevatedButton(
                  style: button,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => widget.nextpage));
                  },
                  child: Text(
                    'Explore More',
                    style: kNormalText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: devH*0.1,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Theme.of(context).primaryColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                    color: Color(0xff473144),
                    ),
                    onPressed: () {
                      Scaffold.of(context).closeEndDrawer();
                    },
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: devW*0.15),
                    child: Text('K-AIO', style: kTitle),
                  ),
                ],
              ),
            ),
          ),
       Container(
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
        child: Column(children: items,))
        ],
      ),
    );
  }
}


class DrawerItems extends StatelessWidget {
  IconData icon;
  String title;
  var nextpage;
 DrawerItems({required this.icon, required this.title,required this.nextpage});

  @override
  Widget build(BuildContext context) {
   return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (_) => nextpage));
    },
  );
}
}

