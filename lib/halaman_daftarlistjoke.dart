import 'package:flutter/material.dart';
import 'package:jokesapp/joke.dart';

class HalamanListJoke extends StatefulWidget {
  final Joke pilihanJoke;
  final ValueChanged<Joke> pilihanJokeCallback;
  const HalamanListJoke({Key? key, required this.pilihanJoke, required this.pilihanJokeCallback}) : super(key: key);

  @override
  _HalamanListJokeState createState() => _HalamanListJokeState();
}

class _HalamanListJokeState extends State<HalamanListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jokesList.map((jokes) {
        return Container(
          child: ListTile(
            title: Text(
              jokes.setup,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => widget.pilihanJokeCallback(jokes),
            selected: widget.pilihanJoke == jokes,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), shape: BoxShape.rectangle
          ),
        );
    },
    ).toList());
  }
}
