import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height; //.
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Praktikum Pemprograman Mobile"), //.
      ),
      body: ListView(
        children: [
          Container(
            width: 200,
            height: 500,
            margin: EdgeInsets.only(top: 27),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/logo.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            "by : Sael Samuel Rude'",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          Text(
            "\n\n\n Pilih Buah Yang Akan Dibeli : \n",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 200,
                  child: Card(
                      child: Wrap(
                    children: <Widget>[
                      Image.asset("images/apel.jpg"),
                      ListTile(
                        title: Text("Apel Malang"),
                        subtitle: Text("Rp24.000"),
                      ),
                    ],
                  )),
                ),
                Container(
                  width: 200,
                  child: Card(
                      child: Wrap(
                    children: <Widget>[
                      Image.asset("images/jeruk.jpg"),
                      ListTile(
                        title: Text("Jeruk Ponkam"),
                        subtitle: Text("Rp27.000"),
                      ),
                    ],
                  )),
                ),
                Container(
                  width: 200,
                  child: Card(
                      child: Wrap(
                    children: <Widget>[
                      Image.asset("images/naga.jpg"),
                      ListTile(
                        title: Text("Buah Naga Merah"),
                        subtitle: Text("Rp20.000"),
                      ),
                    ],
                  )),
                ),
                Container(
                  width: 200,
                  child: Card(
                      child: Wrap(
                    children: <Widget>[
                      Image.asset("images/nanas.jpg"),
                      ListTile(
                        title: Text("Nanas Madu"),
                        subtitle: Text("Rp10.000"),
                      ),
                    ],
                  )),
                ),
                Container(
                  width: 200,
                  child: Card(
                      child: Wrap(
                    children: <Widget>[
                      Image.asset("images/pepaya.jpg"),
                      ListTile(
                        title: Text("Pepaya California"),
                        subtitle: Text("Rp10.000"),
                      ),
                    ],
                  )),
                ),
                Container(
                  width: 200,
                  child: Card(
                      child: Wrap(
                    children: <Widget>[
                      Image.asset("images/salak.jpg"),
                      ListTile(
                        title: Text("Salak Pondoh"),
                        subtitle: Text("Rp20.000"),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
          Text(
            "\nPilih Berat Buah Yang Akan Dibeli\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF023E4A),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizeContainer(isActive: true, size: "1KG"),
              SizeContainer(size: "2KG"),
              SizeContainer(size: "3KG"),
            ],
          ),
          MyButton()
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF023E4A) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color(0xFF023E4A),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFF023E4A),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF023E4A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Beli Sekarang",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
