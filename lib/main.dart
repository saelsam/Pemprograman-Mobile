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
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black //here you can give the text color
            ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fruit Shop by Sael"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              height: 400,
              width: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 400,
                    child: Card(
                        child: Wrap(
                      children: <Widget>[
                        Image.asset("images/apel.jpg"),
                        ListTile(
                          title: Text("Apel Malang"),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 400,
                    child: Card(
                        child: Wrap(
                      children: <Widget>[
                        Image.asset("images/jeruk.jpg"),
                        ListTile(
                          title: Text("Jeruk Ponkam"),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 400,
                    child: Card(
                        child: Wrap(
                      children: <Widget>[
                        Image.asset("images/naga.jpg"),
                        ListTile(
                          title: Text("Buah Naga Merah"),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 400,
                    child: Card(
                        child: Wrap(
                      children: <Widget>[
                        Image.asset("images/nanas.jpg"),
                        ListTile(
                          title: Text("Nanas Madu"),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 400,
                    child: Card(
                        child: Wrap(
                      children: <Widget>[
                        Image.asset("images/pepaya.jpg"),
                        ListTile(
                          title: Text("Pepaya California"),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 400,
                    child: Card(
                        child: Wrap(
                      children: <Widget>[
                        Image.asset("images/salak.jpg"),
                        ListTile(
                          title: Text("Salak Pondoh"),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 192,
                  height: 40,
                  margin: EdgeInsets.only(top: 30),
                ),
                Text(
                  "Sam Fruit Shop",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF023E4A),
                  ),
                ),
                Text(
                  "Kesegaran dan Kebersihan Buah Selalu Dijaga",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            ElevatedButton(
              child: Text(
                "ORDER",
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (_) {
                    return Secondpage();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
          ],
        ));
  }
}

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  int _index = 0;
  List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Order",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  List<Widget> tabBody = [
    Container(
      margin: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 50),
      color: Colors.white,
      child: ListView(
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
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "1KG",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "2KG",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "3KG",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text("Beli"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              primary: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.white,
      child: ListView(
        children: [
          Text(
            "\nRegister\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          Text(
            " Nama Depan",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.text,
            //controller: controllerBelakang,
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: " Masukkan nama depan",
              border: OutlineInputBorder(),
            ),
          ),
          Text(
            " \nNama Belakang",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.text,
            //controller: controllerBelakang,
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: " Masukkan nama belakang",
              border: OutlineInputBorder(),
            ),
          ),
          Text(
            " \nNo Handphone",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            //controller: controllerBelakang,
            decoration: InputDecoration(
              icon: Icon(Icons.phone),
              labelText: "08xx",
              border: OutlineInputBorder(),
            ),
          ),
          Text(
            " \nEmail",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            //controller: controllerBelakang,
            decoration: InputDecoration(
              icon: Icon(Icons.mail),
              labelText: " contoh : name@gmail.com",
              border: OutlineInputBorder(),
            ),
          ),
          Text(
            " \nPassword",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            //controller: controllerBelakang,
            //membuat bintang saat input text
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              labelText: "",
              border: OutlineInputBorder(),
            ),
          ),
          Text(
            " \nConfirm Password",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              labelText: "",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Submit",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruit Shop by Sael"),
      ),
      body: tabBody.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
