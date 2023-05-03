import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/Gocrypto/Gocrypto.dart';
import 'package:untitled5/sign_up/sign_up.dart';
import 'Screens/1.dart';
import 'forgot/forgotpassword.dart';

void main() {
  runApp(MaterialApp(
    title: "Trade App",
    debugShowCheckedModeBanner: false,
    home: BitQix(),
  ));
}

class BitQix extends StatefulWidget {
  const BitQix({Key? key}) : super(key: key);

  @override
  State<BitQix> createState() => _BitQixState();
}

class _BitQixState extends State<BitQix> {
  bool passenable = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => First()));
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Image.asset("image/logo.png", ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome back!",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You have been missed",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your name';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Colors.black,

                    labelText: "Email address",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(width: 3, color: Colors.white70)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xFF0D47A1),
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                child: TextFormField(
                  key: _formKey,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your password';
                    }
                    return null;
                  },
                  obscureText: passenable,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              //refresh UI
                              if (passenable) {
                                passenable = false;
                              } else {
                                passenable = true;
                              }
                            });
                          },
                          icon: Icon(
                            passenable == true
                                ? Icons.remove_red_eye
                                : Icons.password,
                            color: Colors.white,
                          )),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(width: 3, color: Colors.white70)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 3,
                            color: Color(0xFF0D47A1),
                          ))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => forgot()));
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.blue[900], fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gocrypto()));
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
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
                      width: 3,
                      color: Colors.white,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Image.asset("image/icon.png", )
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sign_up()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blue[900], fontSize: 22),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
