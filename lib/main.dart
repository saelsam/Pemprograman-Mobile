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
    var tinggi = MediaQuery.of(context).size.height; //.
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Posttest 1 Sael"), //.
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: lebar,
                height: tinggi / 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //.
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                child: const Text(
                  "Selamat Datang",
                  style: TextStyle(
                    //.
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: lebar,
                height: tinggi / 2,
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  //.
                  color: Colors.white,
                  border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      top: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      )),
                ),
                child: Column(
                  children: [
                    const Text(
                      "\nSilahkan masukkan Username dan Password Anda\n",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "contoh: Saelsam",
                        labelText: "Username Anda",
                        icon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        icon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                    RaisedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                width: lebar,
                height: tinggi / 4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //.
                  color: Colors.blue,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                child: const Text(
                  "by : Sael Samuel Rude'",
                  style: TextStyle(
                    //.
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
