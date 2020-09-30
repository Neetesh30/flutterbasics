import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome To Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to flutter"),

        ),
        body: Center(
          child: Text("Hello To flutters "),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  child: UserAccountsDrawerHeader(
                      accountName: Text("Neetesh"),
                      accountEmail: Text("xyz@test.com"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent
                  ),
              ),
              ListTile(
                title: Text("List No 1"),
                subtitle: Text("my sub list  information"),
                leading: Icon(Icons.person),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("List No 2"),
                subtitle: Text("my sub list  information"),
                leading: Icon(Icons.star),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

