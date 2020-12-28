import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState () => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Novel'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: DrawerHeader(
                child: Row(
                  children: <Widget>[
                    CupertinoPageScaffold(
                      navigationBar: CupertinoNavigationBar(

                      ),
                    ),
                  ],
              ),
              ),
              height: 119,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('Focus / Priority'),
              onTap: (){
                //update state
              }
            ),
            ListTile(
                title: Text('All'),
                onTap: (){
                  //update state
                }
            ),ListTile(
                title: Text('Pending Requests to Me'),
                onTap: (){
                  //update state
                }
            ),ListTile(
                title: Text('Sent'),
                onTap: (){
                  //update state
                }
            ),
          ],
        )
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Page'),
          ],
        ),
      ),
    );
  }

}