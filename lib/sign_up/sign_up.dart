import 'package:flutter/material.dart';
import 'package:untitled5/main.dart';

import '../Gocrypto/Gocrypto.dart';

class sign_up extends StatefulWidget {
  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  var value = false;

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
          child: Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "It only take a minute to create your account ",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "First",
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.black,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(width: 3, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: Color(0xFF0D47A1),
                                  ),
                                  borderRadius: BorderRadius.circular(14.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "Last",
                              labelStyle: TextStyle(color: Colors.white70),
                              filled: true,
                              fillColor: Colors.black,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(width: 3, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: Color(0xFF0D47A1),
                                  ),
                                  borderRadius: BorderRadius.circular(14.0)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Email address",
                        labelStyle: TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              side: BorderSide(
                                color: Colors.blue,
                              )),
                          activeColor: Colors.blue[900],
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ), //Checkbox
                        Text(
                          "I agree the Cryptoline ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Terms of Service ",
                          style:
                              TextStyle(color: Color(0xFF0D47A1), fontSize: 18),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "and",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Privacy Policy",
                          style:
                              TextStyle(color: Color(0xFF0D47A1), fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Gocrypto()));
                      },
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      // alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.white70,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.network(
                          //   "data:image/png;base64,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",
                          //   height: 20,
                          // ),
                          Flexible(
                              child: Image.asset("image/icon.png")
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          Text(
                            "Already registered? ",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BitQix()));
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Color(0xFF0D47A1), fontSize: 20),
                              ))
                        ],
                      ),
                    )
                  ])),
        ));
  }
}
