import 'package:flutter/material.dart';
import 'package:shows_app/Homescreen.dart';
import 'package:shows_app/popular1.dart';
import 'package:shows_app/popular_detail.dart';

class popularScreen extends StatelessWidget {
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
        body: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 150),
            itemCount: popularList.length,
            itemBuilder: (context, index) {
              Popular popular = popularList[index];

              return Card(
                child: ListTile(
                  title: Text(popular.title),
                  subtitle: Text(popular.ratings.toString()),
                  leading: Image.network(popular.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PopularDetailsScreen(popular)));
                  },
                ),
              );
            }));
  }
}
