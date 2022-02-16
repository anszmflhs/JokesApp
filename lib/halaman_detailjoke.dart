import 'package:flutter/material.dart';
import 'package:jokesapp/joke.dart';

class HalamanDetailJoke extends StatefulWidget {
  final bool cekDeviceLayout;
  final Joke joke;

  const HalamanDetailJoke({Key? key,required this.cekDeviceLayout,required this.joke}) : super(key: key);

  @override
  _HalamanDetailJokeState createState() => _HalamanDetailJokeState();
}

class _HalamanDetailJokeState extends State<HalamanDetailJoke> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8.0),
        child: Text(widget.joke.setup ?? 'Joke Belum Dipilih'),
    ),
        Padding(padding: EdgeInsets.all(8.0),
          child: Text(widget.joke.punchline ?? 'Tidak Ada Punchline'),
        ),
      ],
    );

    if (widget.cekDeviceLayout == true) {
      return Center(child: content);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.joke.type ?? 'No Selected Type'),
      ),
      body: Center(child: content),
      backgroundColor: Colors.orange,
    );
  }
}
