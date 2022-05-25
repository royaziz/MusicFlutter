import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("ONE OK ROCK",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('https://celotehdinihari.com/wp-content/uploads/2019/01/10-Lagu-Slow-Dari-One-Ok-Rock-Yang-Harus-Ada-Di-Playlist-Kamu.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(
                        icon: new Icon(Icons.audiotrack),
                        text: "Song",
                      ),
                      new Tab(icon: new Icon(Icons.photo), text: "Galery"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            Song(),
            Galery(),
          ]),
        ),
      ),
    );
  }
}

class Song extends StatelessWidget {
  final List lagu = [
    "One OK Rock - The Beginning",
    "One OK Rock - Clock Strikes",
    "One OK Rock - Answer is Near",
    "One OK Rock - Heartache",
    "One OK Rock - We Are",
    "One OK Rock - Renegades",
    "One OK Rock - Re:make",
    "One OK Rock - Cry Out",
    "One OK Rock - Kanzaku Kankaku Dreamer",
    "One OK Rock - Wherever You Are",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(lagu[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + lagu[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: lagu.length,
      ),
    );
  }
}

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://celotehdinihari.com/wp-content/uploads/2019/01/10-Lagu-Slow-Dari-One-Ok-Rock-Yang-Harus-Ada-Di-Playlist-Kamu.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://imgsrv2.voi.id/mRZD6IZZ9Plsz8njGbANBTsbQVgc-7fpcIBHq437JtI/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy9hOTllYjhkNS1kZTcyLTQ0YWEtYTQyNS0xZmI0NTdmZTU4MDcvMjAyMDAxMTMxNjUzLW1haW4uY3JvcHBlZF8xNTc4OTA5MjAxLmpwZw.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 2',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://img.jakpost.net/c/2017/09/22/2017_09_22_32945_1506056777._large.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 3',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://imgsrv2.voi.id/5xkAsCXnkaBJXoG2kPUFharTaCDkMX5cc9-KxnLAzis/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy9hOWYxYjgxZi0xYTQwLTQ3ZTgtOTY1Mi0xOGY4YWU1OWQ5YWQvMjAyMDAzMTcxMTUxLW1haW4uY3JvcHBlZF8xNTg0NDIwNzAzLmpwZw.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 4',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "http://globalradio.co.id/manage/kcfinder/upload/images/one-ok-rock-los-angeles-live-music-and-entertainment-photography-by-grizzlee-martin-%40GRIZZLEEMARTIN-6.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 5',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://www.mldspot.com/storage/generated/June2021/OneOKRock.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 6',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://cdn0-production-images-kly.akamaized.net/5TCnkBZY53AinMRa80uyJ8q0J-U=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2846/original/one-ok-rock-131125b.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 7',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://kokujapan.com/wp-content/uploads/2020/08/bg4.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 8',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://writeinoctober.files.wordpress.com/2019/08/img_20190816_014411.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 9',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://hypeabis.id/assets/content/20210730213253000000oneokrockspotify.jpeg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 10',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://lh3.googleusercontent.com/--HjLINRQt3w/WeEZ-2ThVNI/AAAAAAAAErU/RCJ0nH7EWTUOAshVwCTpBXUmvFVnln_GQCHMYCw/s1600/1-one-ok-rock-los-angeles-music-and-entertainment-photography-by-grizzlee-martin.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 11',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://borneo24.com/wp-content/uploads/2020/07/AR-200629974.jpgMaxW780imageVersion16by9NCS_modified20200620044122.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'One Ok Rock 12',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
