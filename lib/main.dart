import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainScreen()));
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int programmingLevel = 99;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Flutter_project"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              programmingLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[600],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.jpg"),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[600],
              ),
              Text(
                "NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Gena",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "PROGRAMMING LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "$programmingLevel",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sheluhin_g@ukr.net",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
