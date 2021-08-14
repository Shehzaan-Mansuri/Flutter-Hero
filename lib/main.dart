import 'package:flutter/material.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hero Widget',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  DetailScreen();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYXJuC3R9Dv-uOCXjahALhKBVVws0BKxbRRQ&usqp=CAU',
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYXJuC3R9Dv-uOCXjahALhKBVVws0BKxbRRQ&usqp=CAU',
            ),
          ),
        ),
      ),
    );
  }
}