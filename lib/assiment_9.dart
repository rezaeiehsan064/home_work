import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          MyApp(),
        ],
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var fisrt;
  var secand;
  var result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Calculator Application",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (text) {
              secand = text;
            },
            decoration: InputDecoration(
                labelText: "First number",
                hintText: "First number",
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (text) {
              fisrt = text;
            },
            decoration: InputDecoration(
                labelText: "First number",
                hintText: "First number",
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  int ifn = int.parse(fisrt);
                  int isn = int.parse(secand);
                  result = ifn + isn;
                });
              },
              child: Text("Calculate")),
          SizedBox(
            height: 10,
          ),
          Text("Result = $result"),
        ],
      ),
    );
  }
}
