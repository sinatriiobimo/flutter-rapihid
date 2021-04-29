import 'package:flutter/material.dart';
import 'package:rapih_app/OrderPage.dart';
import 'StyleScheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios)
        ),
        title: Text("RAPIH.ID", style: TextStyle(
          color: Colors.black
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), 
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 37),
                          Text('Bless This Mess', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0000E4)
                          )),
                          SizedBox(height: 10),
                          Text("We pick your clothes and\ngive theme a new look", style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF1D1F6D)
                          ),)
                        ],
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/banner.png')
                        )
                      )
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Services', style: headingStyle,),
            SizedBox(height: 10,),
            Container(
              height: 200,
              color: Color(0xfff1ffff),
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/services.png')
                      )
                    )
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('What service do you need today ?', style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF1D1F6D)
                          )),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: openOrderPage,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: gradientStyle,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 11, horizontal: 24),
                              child: Text('Place Order', style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),),
                            ),
                          )
                        ],
                      ),
                  ))
                ]
              )
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('AVAILABILITY:  ', style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'poppins',
                        color: Color(0xFF000058),
                        fontWeight: FontWeight.w700
                      )),
                      Text('AVAILABLE', style: contentStyle.copyWith(
                        color: Color(0xFF00A5FF),
                        fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('We are open from 7.00 AM - 8.00 PM', style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'poppins',
                        color: Color(0xFF000058)
                      ))
                ]
              )
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Check the Estimation', style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'poppins',
                        color: Color(0xFF000058),
                        fontWeight: FontWeight.w700
                      )),
                  SizedBox(height: 8),
                  Text('You can check time estimation with price', style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'poppins',
                        color: Color(0xFF000058)
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                  shape: BoxShape.circle
                ),
                child: Text("+", style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                ),),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF0089D3),
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text("Track Order")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text("My Orders")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("Profile")
          ),
        ],
      ),
    );
  }
  void openOrderPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
  }
}