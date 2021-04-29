import 'package:flutter/material.dart';
import 'package:rapih_app/StyleScheme.dart';

class TrackOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: trackOrderPage(),

    );
  }
}

class trackOrderPage extends StatefulWidget {
  @override
  _trackOrderPageState createState() => _trackOrderPageState();
}

class _trackOrderPageState extends State<trackOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios)
        ),
        title: Text("Track Order", style: TextStyle(
          color: Colors.black
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), 
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Order Number 1001", style: headingStyle),
            Text("Order Confirmed, Ready to Pick", style: contentStyle.copyWith(
              color: Colors.grey,
              fontSize: 15,
            ),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 1,
              color: Colors.grey
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 13, top: 55),
                  width: 4,
                  height: 400,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    statusWidget("confirmed", "Confirmed", true),
                    statusWidget("onBoard2", "Picked Up", false),
                    statusWidget("servicesImg", "In Process", false),
                    statusWidget("shipped", "Shipped", false),
                    statusWidget("Delivery", "Delivered", false),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     border: Border.all(
                       color: Color(0xFF0000FE)
                     )
                   ),
                   child: Text("Cancel Order", style: contentStyle.copyWith(
                     color: Color(0xFF0000FE)
                   ),),
                 ),
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     color: Color(0xFF0000FE)
                   ),
                   child: Text("My Orders", style: contentStyle.copyWith(
                     color: Colors.white
                   ),),
                 )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF069BEE),
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
  Container statusWidget(String img, String status, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? Color(0xFF0000FE) : Colors.white,
              border: Border.all(
                color: (isActive) ? Colors.transparent : Color(0xFF0000FE),
                width: 3
              )
            ),
          ),
          SizedBox(width: 50),
          Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
              Text(status, style: contentStyle.copyWith(
                color: (isActive) ? Color(0xFF0000FE) : Colors.black
              ),)
            ],
          )
        ],
      )
    );
  }
}