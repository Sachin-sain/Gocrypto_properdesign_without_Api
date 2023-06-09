import 'package:flutter/material.dart';
import 'package:untitled5/Gocrypto/market.dart';
import 'package:untitled5/Gocrypto/profile.dart';
import 'package:untitled5/Gocrypto/selectcrypto.dart';
import 'package:untitled5/Gocrypto/sell.dart';
import 'package:untitled5/forgot/gocrypto.dart';
import 'package:untitled5/main.dart';

class exchange extends StatelessWidget {
  const exchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Exchange",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BitQix()));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gocrypto()));
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
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 400,
                  color: Colors.black38,
                  child: Card(
                    color: Colors.white12,
                    child: Container(
                      height: 90,
                      width: 300,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sell()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text(
                                "Sell",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => market()));
                  },
                  child: Container(
                    color: Colors.white12,
                    height: 250,
                    width: 360,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "You Send",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "0.14689",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 30),
                              child: Row(
                                children: [
                                  Image.asset("image/eth.png", height: 30,width: 30,),
                                  SizedBox(width: 5,),
                                  Text(
                                    "ETH",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white70,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: Icon(
                          Icons.unfold_less_outlined,
                          color: Colors.blue[900],
                          size: 30,
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "You Recieve",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "22878.12",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 30),
                              child: Row(
                                children: [
                                Image.asset("image/dai.png", height: 30,width: 30,),
                                  SizedBox(width: 5,),
                                  Text(
                                    "DAI",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white70,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1 ETH=12.489 DAI",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 220,
                      color: Colors.white12,
                      child: ListTile(
                        leading: Image.asset("image/dollar.png",height: 30,width: 30,),
                        title: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 30, top: 5),
                                child: Text(
                                  "Exchange free",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 80, top: 0),
                                child: Text(
                                  "0.08%",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 125,
                      color: Colors.white12,
                      alignment: Alignment.center,
                      child: Text(
                        "32",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Click here for",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "For this transaction fee will be taken",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => selectcrypto()));
                  },
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      "Exchange Now",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Gocrypto()));
                      },


                      child: Image.asset("image/home.png", height: 30,width: 30,)

                  )

              ),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => market()));
                  },
                ),
              ),
              Expanded(

                  child:GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>exchange()));
                      },
                      child: Image.asset("image/exchange.png", height: 30,width: 30,))

              ),
              Expanded(
                child: GestureDetector(
                  child: Image.asset("image/profile.png", height: 30,width: 30,),

                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
