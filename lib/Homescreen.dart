import 'package:flutter/material.dart';
import 'package:shows_app/popular1.dart';
import 'package:shows_app/popular_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shows_app/popular_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    Key? key,
  }) : super(key: key);
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final urlImages = [
    'https://cachecow.eu/min/mal/1247/120579.jpg'
        'https://cachecow.eu/min/mal/1820/120520.jpg'
        'https://cachecow.eu/min/mal/1182/119308.jpg'
        'https://cachecow.eu/min/mal/1427/120586.jpg'
        'https://cachecow.eu/min/mal/1132/120388.jpg'
        'https://cachecow.eu/min/mal/1247/120579.jpg'
        'https://cachecow.eu/min/mal/1446/118840.jpg'
        'https://cachecow.eu/min/mal/1321/117508.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(171, 0, 0, 0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(155, 16, 17, 17),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Image.asset('applogo.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.home, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 500,
              autoPlay: true,
              reverse: true,
              autoPlayInterval: Duration(seconds: 2),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              pageSnapping: false,
              enableInfiniteScroll: false,
            ),
            items: [
              Container(
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('slider6.webp'),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('slider2.webp'),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('slider3.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('slider4.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('slider7.webp'),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('slider8.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => popularScreen()),
              );
            },
            // style: ButtonStyle(backgroundColor: ),
            child: const Text(
              'Popular Anime',
            ),
          )
        ],
      ),
    );
  }
}
