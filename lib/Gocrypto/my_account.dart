import 'package:flutter/material.dart';
import 'package:untitled5/Gocrypto/profile.dart';

class myaccount extends StatelessWidget {
  const myaccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Center(
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  "Full name",
                  style: TextStyle(color: Colors.white70),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "First",
                    labelStyle: TextStyle(color: Colors.white70),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  "Email Address",
                  style: TextStyle(color: Colors.white70),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Email ",
                    labelStyle: TextStyle(color: Colors.white70),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.white70),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white70),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
