import 'package:flutter/material.dart';

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
                        "https://gubukinspirasi.com/wp-content/uploads/2022/04/Reog-Ponorogo.webp"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                        "https://awsimages.detik.net.id/community/media/visual/2022/04/05/alun-alun-ponorogo-3_169.jpeg?w=1200"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                        "https://img.inews.co.id/media/822/files/inews_new/2023/04/04/masjid_kuno_ponorogi.jpg"),
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
