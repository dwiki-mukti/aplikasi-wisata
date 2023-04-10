import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailScreen(title: 'Wisata Guo Lowo'),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Image.network(
                // 'https://awsimages.detik.net.id/community/media/visual/2022/10/31/telaga-ngebel-ponorogo-4.jpeg?w=4000',
                'https://4.bp.blogspot.com/-2PhWogofKkY/ViT9XkavjRI/AAAAAAAABBM/zaHSHftjPtM/s1600/SND_9703.jpg'),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'Guo Lowo Sampung',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
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
                    Text('Open Everyday'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    SizedBox(height: 8.0),
                    Text('07:00-17:00'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(height: 8.0),
                    Text('Free'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Goa Lowo Sampung merupakan salah satu dari beberapa goa tempat tinggal manusia purba yang ditemukan di Indonesia. Disebut sebagai Goa Lowo karena dulu banyak Lowo (Kelelawar) yang hidup dalam goa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      )),
    );
  }
}
