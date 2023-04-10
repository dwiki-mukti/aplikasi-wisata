import 'package:flutter/material.dart';

var infoTextStyle = const TextStyle(fontFamily: "Oxygen");

class HomeWisata extends StatelessWidget {
  const HomeWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Guo Lowo'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Image.network(
                'https://4.bp.blogspot.com/-2PhWogofKkY/ViT9XkavjRI/AAAAAAAABBM/zaHSHftjPtM/s1600/SND_9703.jpg'),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: const Text(
              'Guo Lowo Sampung',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Staatliches",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(height: 8.0),
                    Text(
                      'Open Everyday',
                      style: infoTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    SizedBox(height: 8.0),
                    Text(
                      '07:00-17:00',
                      style: infoTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(height: 8.0),
                    Text(
                      'Free',
                      style: infoTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: const Text(
              'Goa Lowo Sampung merupakan salah satu dari beberapa goa tempat tinggal manusia purba yang ditemukan di Indonesia. Disebut sebagai Goa Lowo karena dulu banyak Lowo (Kelelawar) yang hidup dalam goa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                        "https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                        "https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                        "https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg"),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
