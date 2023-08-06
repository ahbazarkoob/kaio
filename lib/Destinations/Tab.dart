// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class DestinationTab extends StatelessWidget {
  const DestinationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Color(0xff85586F),
                      borderRadius: BorderRadius.circular(25.0)),
                  tabs: [
                    Tab(text: 'Paper-Mache'),
                    Tab(text: 'Carpets, Rugs and Mats'),
                    Tab(text: 'Embroidery Work'),
                    Tab(text: 'Copper Work'),
                  ],
                  labelColor: Colors.black,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text('North'),
                    Text('North'),
                    Text('North'),
                    Text('North'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}