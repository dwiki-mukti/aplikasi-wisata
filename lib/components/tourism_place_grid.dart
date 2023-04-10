import 'package:flutter/material.dart';
import 'package:tugas_kuliah/models/tourism_place.dart';
import 'package:tugas_kuliah/pages/detail_wisata.dart';

class TourismPlaceGrid extends StatelessWidget {
  const TourismPlaceGrid({super.key, required this.gridCount});

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: tourismPlaceList
            .map((place) => (InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailWisata(place: place);
                    }));
                  },
                  child: Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          place.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: Text(
                          place.location,
                        ),
                      ),
                    ],
                  )),
                )))
            .toList(),
      ),
    );
  }
}
