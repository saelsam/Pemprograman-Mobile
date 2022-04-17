import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buah = "";
  String apel = "Apel";
  String jeruk = "Jeruk";
  String naga = "Buah Naga";
  String nanas = "Nanas";
  String pepaya = "Pepaya";
  String salak = "Salak";
  String hasil = "";
  String hasilBeli = "";
  String berat = "";
  int beratBuah = 0;
  int harga = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("posttest3_2009106034_Sael Samuel Rude'"),
      ),
      body: ListView(
        children: [
          Container(
            width: 200,
            height: 500,
            margin: EdgeInsets.only(top: 27),
            decoration: BoxDecoration(
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
            height: 250,
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buah = "Anda Membeli Apel";
                            harga = 24000;
                            hasil = "Berhasil Membeli $apel";
                            print(buah);
                          });
                        },
                        child: Text(
                          "pilih",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buah = "Anda Membeli Jeruk";
                            harga = 27000;
                            hasil = "Berhasil Membeli $jeruk";
                            print(buah);
                          });
                        },
                        child: Text(
                          "pilih",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buah = "Anda Membeli Buah Naga";
                            harga = 20000;
                            hasil = "Berhasil Membeli $naga";
                            print(buah);
                          });
                        },
                        child: Text(
                          "pilih",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buah = "Anda Membeli Nanas";
                            harga = 10000;
                            hasil = "Berhasil Membeli $nanas";
                            print(buah);
                          });
                        },
                        child: Text(
                          "pilih",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buah = "Anda Membeli Pepaya";
                            harga = 10000;
                            hasil = "Berhasil Membeli $pepaya";
                            print(buah);
                          });
                        },
                        child: Text(
                          "pilih",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buah = "Anda Membeli Salak";
                            harga = 20000;
                            hasil = "Berhasil Membeli $salak";
                            print(buah);
                          });
                        },
                        child: Text(
                          "pilih",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
          Text("$hasil"),
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
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    berat = "1KG";
                    beratBuah = 1;
                    harga = harga * beratBuah;
                    print("$buah $berat");
                  });
                },
                child: Text(
                  "1KG",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    berat = "2KG";
                    beratBuah = 2;
                    harga = harga * beratBuah;
                    print("$buah $berat");
                  });
                },
                child: Text(
                  "2KG",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    berat = "3KG";
                    beratBuah = 3;
                    harga = harga * beratBuah;
                    print("$buah $berat");
                  });
                },
                child: Text(
                  "3KG",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              setState(() {
                hasilBeli = "$buah dengan berat $berat seharga Rp$harga";
                print(hasilBeli);
              });
            },
            child: Text("Submit"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              primary: Colors.black,
            ),
          ),
          Text("  $hasilBeli"),
        ],
      ),
    );
  }
}
