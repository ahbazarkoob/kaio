// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/MainScreens/Culture.dart';
import 'package:kaio/MainScreens/destinations.dart';
import 'package:kaio/MainScreens/handicrafts.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/mainScreen.dart';

List<ServiceCard> ServiceList = [
  ServiceCard(
      nextpage: LiteraturePage(),
      service: 'Literature',
      imagePath: 'assets/images/MainScreen/kliterature.png',
      description:
          'Embarking on a journey to discover Kashmiri literature is to open a door to a world where language becomes a bridge connecting hearts and minds across time and space.Discovering Kashmiri literature is like embarking on a journey through the captivating landscapes of both the region and the human experience.'),
  ServiceCard(
      nextpage: Cuisine(),
      service: 'Cuisines',
      description:
          'Embarking on a journey to discover Kashmiri cuisine is akin to unraveling a symphony of flavors and traditions. Rooted in the fertile valleys of the Himalayas, Kashmiri cuisine is a harmonious blend of aromatic spices, delicate herbs, and locally sourced ingredients. ',
      imagePath: 'assets/images/MainScreen/kcuisine.png'),
  ServiceCard(
      nextpage: Handicraft(),
      service: 'Handicrafts',
      description:
          'Embarking on a journey to discover Kashmiri handicrafts is like stepping into a realm of timeless artistry and intricate craftsmanship. Nestled in the heart of the Himalayas, Kashmir has been a cradle of creativity for centuries, producing exquisite handwoven Pashmina shawls, intricately carved walnut woodwork, vibrant papier-mâché artifacts, and intricate embroidered textiles.',
      imagePath: 'assets/images/MainScreen/khandicrafts.png'),
  ServiceCard(
      nextpage: Destination(),
      service: 'Destinations',
      description:
          'Embarking on a journey to discover Kashmiri destinations is like stepping into a realm of natural beauty and cultural richness. From the serene Dal Lake, where houseboats gently glide on mirrored waters, to the majestic vistas of Gulmarg\'s snow-covered peaks, every corner of this region is a testament to nature\'s artistry.',
      imagePath: 'assets/images/MainScreen/kdestinations.png'),
  ServiceCard(
      nextpage: Culture(),
      service: 'Culture',
      description:
          'Embarking on a journey to discover Kashmiri culture is like unveiling a mosaic of traditions, art, and spirituality that have flourished in the lap of the Himalayas. The culture is a symphony of diverse influences, blending Persian, Central Asian, and Indian elements to create a tapestry that is uniquely Kashmiri.',
      imagePath: 'assets/images/MainScreen/kculture.png'),
];

List<DrawerItems> items = [
  DrawerItems(
      icon: Icons.book, title: 'Literature', nextpage: LiteraturePage()),
  DrawerItems(icon: Icons.restaurant, title: 'Cuisine', nextpage: Cuisine()),
  DrawerItems(
      icon: Icons.handyman, title: 'Handicrafts', nextpage: Handicraft()),
  DrawerItems(
      icon: Icons.location_on, title: 'Destinations', nextpage: Destination()),
  DrawerItems(
      icon: Icons.theater_comedy, title: 'Culture', nextpage: Culture()),
];
