import 'package:flutter/material.dart';
import 'package:shows_app/Homescreen.dart';
import 'package:shows_app/popular1.dart';

class PopularDetailsScreen extends StatelessWidget {
  final Popular popular;

  PopularDetailsScreen(this.popular);

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  popular.imageUrl,
                  height: 400,
                  width: 400,
                  alignment: Alignment.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                ),
                Text(
                  popular.ratings.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                ),
                Text(
                  popular.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
