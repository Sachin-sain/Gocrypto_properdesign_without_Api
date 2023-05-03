import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled5/forgot/verification.dart';

class forgot extends StatefulWidget {
  const forgot({Key? key}) : super(key: key);

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  String dropdownvalue = '+91';
  var items = [
    '+91',
    '+61',
    '+81',
    '+101',
    '+105',
  ];

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
            margin: EdgeInsets.only(top: 10, left: 30),
            padding: EdgeInsets.only(right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Set up 2-step verification ",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your phone number so we can send you the verification code",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                // keyboardType: TextInputType.number,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only number

                style: TextStyle(color: Colors.white),

                decoration: InputDecoration(
                    prefixIcon: DropdownButton(
                      style: TextStyle(color: Colors.black),
                      dropdownColor: Colors.black,
                      underline: Container(
                        color: Colors.black,
                      ),

                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => verification()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )
            ])),
      ),
    );
  }
}
