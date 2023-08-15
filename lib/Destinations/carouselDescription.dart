// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:kaio/main.dart';
// import 'package:kaio/widgets/destinationFeature.dart';

// class Wildlife extends StatelessWidget {
//   Wildlife({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [BackgroundImage(backgroundImage: ''), ForegroundImage()],
//         ),
//       ),
//     );
//   }

//   Widget BackgroundImage({required String backgroundImage}) {
//     return SizedBox(
//       height: devH * 0.5,
//       width: devW,
//       child: Image(fit: BoxFit.cover, image: AssetImage(backgroundImage)),
//     );
//   }

//   Widget ForegroundImage() {
//     return SingleChildScrollView(
//       child: Column(children: [
//         SizedBox(
//           height: devH * 0.4,
//         ),
//       ListView.builder(
//         itemCount: wildlife.length,
//         itemBuilder: (context, index) {
//           return wildlife;
// },)
//       ]),
//     );
//   }
// }

// List<FeatureCard> wildlife = [];
