import 'package:flutter/material.dart';

import 'order_preview.dart';

class paymentmethod extends StatefulWidget {
  const paymentmethod({Key? key}) : super(key: key);

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  @override
  bool light = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment Method",
          style: TextStyle(color: Colors.white),
        ),
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 15),
            height: 350,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ListTile(
                    title: Text(
                      "Credit Card ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.white70,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 35,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child:Image.asset("image/visa.png",height: 100,width: 100, )
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset("image/master.png", height: 30,width: 30,)
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset("image/paypal.png", height: 100,width: 100,)
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
               Container(

               ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "+add new card",
                    style: TextStyle(color: Colors.blue[900], fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.white12,
              child: ListTile(
                title: Text(
                  "Google Pay",
                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                ),
                trailing: Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.white12,
              child: ListTile(
                title: Text(
                  "Mobile Banking",
                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                ),
                trailing: Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Send receipt to your email",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                Switch(
                  // This bool value toggles the switch.
                  value: light,
                  activeColor: Colors.blue[900],
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      light = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => order_preview()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                "Continue",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
