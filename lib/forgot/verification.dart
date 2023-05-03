import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled5/forgot/success_verify.dart';

class verification extends StatelessWidget {
  const verification({Key? key}) : super(key: key);

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
            )),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Verification Code",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter 4-digit code the we just send to your phone number +91 xxxxxxx",
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu

                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue,
                          )),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true, fillColor: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue,
                          )),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true, fillColor: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue,
                          )),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true, fillColor: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "Resend Code ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                    Text(
                      "29:58",
                      style: TextStyle(color: Colors.blue[900]),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => success()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Verify",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
