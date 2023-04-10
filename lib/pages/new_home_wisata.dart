import 'package:flutter/material.dart';
import 'package:tugas_kuliah/components/tourism_place_grid.dart';
import 'package:tugas_kuliah/components/tourusm_place_list.dart';

var infoTextStyle = const TextStyle(fontFamily: "Oxygen");

class NewHomeWisata extends StatelessWidget {
  const NewHomeWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return const TourismPlaceGrid(gridCount: 4);
          } else {
            return const TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}
