import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFD1E1E0),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 192,
                height: 243,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image 6coffe.png"),
                  ),
                ),
              ),
              Text(
                "Caramel Macchiato",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E4A),
                ),
              ),
              Text(
                "We cannot guarantee that any unpackaged \n products served in our stores are allergen-free",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(isActive: true, size: "S"),
                  SizeContainer(size: "M"),
                  SizeContainer(size: "L"),
                ],
              ),
              MyButton()
            ],
          ),
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
        "Pesan Sekarang",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
