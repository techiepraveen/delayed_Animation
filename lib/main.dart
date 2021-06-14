// @dart=2.9
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  
  Animation _contentAnimation;
  Animation _contentAnimation1;
  Animation _loginAnimation;
  Animation _forgetAnimation;
  Animation _loginwithfacebookAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

   
    _contentAnimation = Tween(begin: 0.0, end: 34.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.20, 0.40, curve: Curves.easeOut)));

    _contentAnimation1 = Tween(begin: 0.0, end: 34.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.75, curve: Curves.easeOut)));

    _loginAnimation = Tween(begin: 0.0, end: 400.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.75, curve: Curves.easeOut)));

    _loginwithfacebookAnimation = Tween(begin: 0.0, end: 400.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.0, 0.95, curve: Curves.easeOut)));

    _forgetAnimation = Tween(begin: 0.0, end: 20.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.95, curve: Curves.easeOut)));

    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: _contentAnimation.value,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign in to continue",
                    style: TextStyle(
                        fontSize: _contentAnimation1.value,
                        fontStyle: FontStyle.italic),
                  )),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              width: _loginAnimation.value,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Enter Name',
                  //hintText: 'Enter dfdfd  Name'
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: _loginwithfacebookAnimation.value,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Enter Password',
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget your Password",
                    style: TextStyle(
                      fontSize: _forgetAnimation.value,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: _loginAnimation.value,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize:  _forgetAnimation.value, color: Colors.white),
                  )),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: _loginwithfacebookAnimation.value,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login with Google",
                    style: TextStyle(fontSize:  _forgetAnimation.value, color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I'm a new user !",style: TextStyle(fontSize: _forgetAnimation.value),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("SIGN UP",style: TextStyle(fontSize: _forgetAnimation.value,color: Colors.red),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

