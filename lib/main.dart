import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'TaskPro Admin Console'),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title, 
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 1),
            Text(
              'LOGIN TO TASKPRO ADMIN CONSOLE',
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            SizedBox(height: 80),
            Container(
              width: 450,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username'
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 450,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'
                ),
              obscureText: true,
              ),
            ),
            SizedBox(height: 30),
            ButtonTheme(
              minWidth: 200.0,
              height: 50.0,
              child: FlatButton(
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.amber,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              child: Text(
                'Forget your username/password?',
                style: TextStyle(
                  color: Colors.amber,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {print("popup message");},
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
