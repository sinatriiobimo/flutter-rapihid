import 'package:flutter/material.dart';
import 'PickUpTimePage.dart';
import 'StyleScheme.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderPage(),
    );
  }
}

class orderPage extends StatefulWidget {
  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios)
        ),
        title: Text("Select Clothes", style: TextStyle(
          color: Colors.black
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), 
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryWidget("man", "Men", true),
                categoryWidget("girl", "Women", false),
                categoryWidget("child", "Kids", false),
                categoryWidget("oldman", "Others", false),
              ]
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    clothWidget('cloth1', 'Trouser', '1500'),
                    clothWidget('cloth2', 'Jeans', '1000'),
                    clothWidget('cloth3', 'Jackets', '2500'),
                    clothWidget('cloth4', 'Shirt', '1000'),
                    clothWidget('cloth5', 'T-Shirt', '500'),
                    clothWidget('cloth6', 'Blazer', '2500'),
                    clothWidget('cloth7', 'Coats', '2500'),
                    clothWidget('cloth8', 'Kurta', '500'),
                    clothWidget('cloth9', 'Sweater', '1000'),
                  ],
                ),
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Your Basket', style: headingStyle),
                    Text('7 Items added', style: contentStyle,)
                  ],
                ),
                Text('\Rp. 20.000', style: headingStyle,)
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PickUpTimePage()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                  gradient: gradientStyle
                ),
                child: Center(
                  child: Text('SELECT DATE & TIME', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Container clothWidget(String img, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Color(0xfff1ffff),
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$img.png')
                    )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: heading2Style,),
                    Text("Rp.$price", style: heading2Style.copyWith(color: Colors.grey, fontSize: 14),),
                    Text("Add Note", style: contentStyle.copyWith(color: Color(0xFF2C96D1)))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                        colors: [Color(0xFF212482), Color(0xFF151765)],
                        stops: [0,1],
                        begin: Alignment.topCenter
                      ),
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text('-', style: headingStyle.copyWith(color: Colors.white),),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text("1", style: headingStyle.copyWith(
                          fontSize: 25
                        ),),
                      )
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                        colors: [Color(0xFF212482), Color(0xFF151765)],
                        stops: [0,1],
                        begin: Alignment.topCenter
                      ),
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text('+', style: headingStyle.copyWith(color: Colors.white),),
                      ),
                    ),
                  ],
                )
              ],
            )
          ),
          SizedBox(height: 15),
        ],
      )
    );
  }
  Column categoryWidget(String img, String name, bool isActive) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: (isActive) ? null : Colors.grey.withOpacity(0.3),
            gradient: (isActive) ? LinearGradient(
                        colors: [Color(0xFF212482), Color(0xFF151765)],
                        stops: [0,1],
                        begin: Alignment.topCenter
                      ) : null,
            shape: BoxShape.circle
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$img.png'),
                  fit: BoxFit.contain
                )
              ),
            ),),
        ),
        SizedBox(height: 7),
        Text(name, style: heading2Style.copyWith(fontSize: 16))
      ],
    );
  }
}