import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Column(
          children: [
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
            ListTile(
              title: Text("title 1"),
              subtitle: Text('this is title 1'),
            ),
          ],
        ),
      ),
    );
  }
}
