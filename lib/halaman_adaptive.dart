import 'package:flutter/material.dart';
import 'package:jokesapp/halaman_daftarlistjoke.dart';
import 'package:jokesapp/halaman_detailjoke.dart';
import 'package:jokesapp/joke.dart';

class HalamanAdaptive extends StatefulWidget {
  const HalamanAdaptive({Key? key}) : super(key: key);

  @override
  _HalamanAdaptiveState createState() => _HalamanAdaptiveState();
}

class _HalamanAdaptiveState extends State<HalamanAdaptive> {
  late Joke pilihanJoke;

  @override
  Widget build(BuildContext context) {
    Widget content;
    var ukuranLayar = MediaQuery.of(context).size.shortestSide;
    var orientasiLayar = MediaQuery.of(context).orientation;
    if (orientasiLayar == Orientation.portrait && ukuranLayar < 600) {
      content = buildNotTablet();
    } else {
      content = buildTablet();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Joke App"),
      ),
      backgroundColor: Colors.orange,
      body: content,
    );
  }
}

Widget buildNotTablet() {
  return HalamanListJoke(
    pilihanJokeCallback: (pilihan) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HalamanDetailJoke(
                    cekDeviceLayout: false,
                    joke: pilihan,
                  )));
    },
  );
}

Widget buildTablet() {
  return Row(
    children: <Widget>[
      Flexible(
        child: Material(
          elevation: 16,
          child: HalamanListJoke(
            pilihanJokeCallback: (pilihan) {
              setState(() {
                pilihanJoke = pilihan;
              });
            },
            pilihanJoke: pilihanJoke,
          ),
        ),
      ),
      Flexible(
        child: HalamanDetailJoke(
          cekDeviceLayout: true,
          joke: pilihanJoke,
        ),
      )
    ],
  );
}
