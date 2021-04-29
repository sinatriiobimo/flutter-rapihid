import 'package:flutter/material.dart';
import 'package:rapih_app/OrderConfirmPage.dart';
import 'package:rapih_app/StyleScheme.dart';

class PickUpTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pickUpTimePage(),
    );
  }
}

class pickUpTimePage extends StatefulWidget {
  @override
  _pickUpTimePageState createState() => _pickUpTimePageState();
}

class _pickUpTimePageState extends State<pickUpTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios)
        ),
        title: Text("Select Date & Time", style: TextStyle(
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
            Text("Pick Up Date", style: headingStyle),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Sat", "01 May", true),
                  dateWidget("Sun", "02 May", false),
                  dateWidget("Mon", "03 May", false),
                  dateWidget("Tue", "04 May", false),
                  dateWidget("Wed", "05 May", false),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 15,),
            Text("Pick Up Time", style: headingStyle),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 AM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            SizedBox(height: 30,),
             Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 15,),
            Text("Delivery Date", style: headingStyle),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Sat", "01 May", true),
                  dateWidget("Sun", "02 May", false),
                  dateWidget("Mon", "03 May", false),
                  dateWidget("Tue", "04 May", false),
                  dateWidget("Wed", "05 May", false),
                ],
              ),
            ),
            SizedBox(height: 30,),
             Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 15,),
            Text("Delivery Time", style: headingStyle),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 AM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            SizedBox(height: 70),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount Payable', style: headingStyle.copyWith(fontSize: 18),),
                Text('\Rp. 25.000', style: headingStyle,)
              ],
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderConfirmPage()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                  gradient: gradientStyle
                ),
                child: Center(
                  child: Text('PLACE ORDER', style: TextStyle(
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
  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Color(0xFF1D1F6D) : Color(0xFFE8F7FF).withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: contentStyle.copyWith(
            color: (isActive) ? Color(0xFFE8F7FF) : Color(0xFF1D1F6D),
            fontWeight: FontWeight.w700
          ))
        ],
      ),
    );
  }
  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Color(0xFF1D1F6D) : Color(0xFFE8F7FF).withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day, style:contentStyle.copyWith(
            color: (isActive) ? Color(0xFFE8F7FF) : Color(0xFF1D1F6D),
            fontSize: 20,
            fontWeight: FontWeight.w800
          ),),
          Text(date, style:contentStyle.copyWith(
            color: (isActive) ? Color(0xFFE8F7FF) : Color(0xFF1D1F6D),
            fontSize: 15,
            fontWeight: FontWeight.w800
          ),),

        ],
      ),
    );
  }
}