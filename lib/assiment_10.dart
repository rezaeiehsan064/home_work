import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Myapp()),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecandPage(),),);
          }, icon: const Icon(Icons.navigate_next),
          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        title:
          Text('Anna Avetistiy' ),

        elevation: 0.0,
        toolbarHeight: 100.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(100.0),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(padding: EdgeInsets.only(
            bottom: 300.0,
          ),
            child: Center(
              child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 80,),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    'Ehsan Rezaei',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    'Birth day',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    '0093793402334',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    'Aconunts',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    'rezaeiehsan@gmail.com',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.password,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    'Passwored',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecandPage extends StatefulWidget {
  const SecandPage({Key? key}) : super(key: key);

  @override
  State<SecandPage> createState() => _SecandPageState();
}

class _SecandPageState extends State<SecandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: SafeArea(child:
       Column(
         children: [
           Row(
             children: [
               BackButton(
                 onPressed: () {
                   Navigator.pop(context);
                 },
               ),
               SizedBox(
                 width: 290,
               ),
               IconButton(
                 onPressed: () {
                   Navigator.push(
                       context, MaterialPageRoute(builder: (b) => Third()));
                 },
                 icon: Icon(Icons.arrow_forward),
               ),
             ],
           ),
           SizedBox(height: 100),
           Text(
             "Instagram",
             style: TextStyle(
               fontFamily: 'RAVIE',
               fontSize: 30,
             ),
           ),
           SizedBox(
             height: 25,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: TextField(
               decoration: InputDecoration(
                   hintText: "ehsan.hasin",
                   border: OutlineInputBorder(),
                   hintStyle: TextStyle(color: Colors.black)),
             ),
           ),
           SizedBox(height: 5),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: TextField(
               decoration: InputDecoration(
                 hintText: "Password",
                 border: OutlineInputBorder(),
               ),
             ),
           ),
           Row(
             children: [
               SizedBox(
                 width: 235,
                 height: 40,
               ),
               SizedBox(),
               Text(
                 "Forgot passwold?",
                 style: TextStyle(fontSize: 15, color: Colors.lightBlue),
               ),
             ],
           ),
           ElevatedButton(
             onPressed: () {},
             child: Text(
               'Log in',
               style: TextStyle(fontSize: 18),
             ),
             style: ElevatedButton.styleFrom(
               primary: Colors.blue[300],
               shape:
               RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
               minimumSize: Size(345, 60),
             ),
           ),
           Row(
             children: [
               SizedBox(height: 30),
               Text(
                 '     ________________________',
                 style: TextStyle(color: Colors.black12),
               ),
               SizedBox(
                 width: 14,
               ),
               Text("Or"),
               Text('     _______________________',
                   style: TextStyle(color: Colors.black12)),
             ],
           ),
           SizedBox(
             height: 26,
           ),
           Row(
             children: [
               SizedBox(
                 width: 112,
               ),
               Container(
                   height: 20,
                   width: 20,
                   child: Image.network(
                     'image/ph.jpg',
                   )),
               Text(
                 "Log in with Facebook",
                 style: TextStyle(color: Colors.lightBlue, fontSize: 16),
               ),
             ],
           ),
           SizedBox(
             height: 125,
           ),
           Text('___________________________________________________________',
               style: TextStyle(color: Colors.black12)),
           SizedBox(
             height: 12,
           ),
           Row(
             children: [
               SizedBox(
                 width: 80,
               ),
               Text(
                 "Don't have an account?",
                 style:
                 TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
               ),
               Text(
                 " Sine Up.",
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.lightBlueAccent,
                     fontSize: 16),
               )
             ],
           )
         ],
       )
       ),
    );
  }
}
class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bodycal();
  }
}

int num = 0;
int a = 0;
int alama = 0;
int o = 0;

class Bodycal extends StatefulWidget {
  const Bodycal({Key? key}) : super(key: key);

  @override
  State<Bodycal> createState() => _BodycalState();
}

class _BodycalState extends State<Bodycal> {
  Widget Bodyca(String btnText, Color tcolor, Color pcolor) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (o == 1) {
            num = 0;
            o = 0;
          }
          if (btnText == '1') {
            num = num * 10 + 1;
          } else if (btnText == '2') {
            num = num * 10 + 2;
          } else if (btnText == '3') {
            num = num * 10 + 3;
          } else if (btnText == '4') {
            num = num * 10 + 4;
          } else if (btnText == '5') {
            num = num * 10 + 5;
          } else if (btnText == '6') {
            num = num * 10 + 6;
          } else if (btnText == '7') {
            num = num * 10 + 7;
          } else if (btnText == '8') {
            num = num * 10 + 8;
          } else if (btnText == '9') {
            num = num * 10 + 9;
          } else if (btnText == 'AC') {
            num = 0;
            a = 0;
            alama = 0;
          } else if (btnText == '+') {
            a = num;
            alama = 1;
            o++;
          } else if (btnText == '--') {
            a = num;
            alama = 2;
            o++;
          } else if (btnText == '=') {
            if (alama == 1) {
              num = num + a;
            } else if (alama == 2) {
              num = a - num;
            }
          }
        }); // Add your login logic here
      },
      style: ElevatedButton.styleFrom(
        primary: tcolor, // Dark blue color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // More circular corners
        ),
        minimumSize: Size(78, 78), // Button size
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: pcolor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
                SizedBox(
                  width: 290,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (b) => Myapp()));
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "$num",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 85,
                  ),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bodyca('AC', Colors.white70, Colors.black),
                Bodyca('+/-', Colors.white70, Colors.black),
                Bodyca('%', Colors.white70, Colors.black),
                Bodyca('/', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bodyca('7', Colors.white24, Colors.white),
                Bodyca('8', Colors.white24, Colors.white),
                Bodyca('9', Colors.white24, Colors.white),
                Bodyca('*', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bodyca('4', Colors.white24, Colors.white),
                Bodyca('5', Colors.white24, Colors.white),
                Bodyca('6', Colors.white24, Colors.white),
                Bodyca('--', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bodyca('1', Colors.white24, Colors.white),
                Bodyca('2', Colors.white24, Colors.white),
                Bodyca('3', Colors.white24, Colors.white),
                Bodyca('+', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //eleva(0)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num = num * 10 + 0;
                      if (o == 1) {
                        num = 0;
                        o = 0;
                      }
                    });
                    // Add your login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white24, // Dark blue color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(40), // More circular corners
                    ),
                    minimumSize: Size(171, 78), // Button size
                  ),
                  child: Text(
                    "0             ",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Bodyca('.', Colors.white24, Colors.white),
                Bodyca('=', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}

