import 'package:flutter/material.dart';
import 'package:rapih_app/LoginPage.dart';
import 'StyleScheme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUpPage(),
    );
  }
}

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png')
                )
              )
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign Up', style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0000D2),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins'
                  ),),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name"
                    )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number"
                    )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Mail Address"
                    )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password"
                    )
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        gradient: gradientStyle
                      ),
                      child: Center(
                        child: Text('SIGN UP', style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'poppins'
                        ),),
                      ),
                    )
                  ),
                  SizedBox(height: 20),
                ]
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?", style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppins'
                ),),
                InkWell(
                  onTap: openLoginPage,
                  child: Text(" LOG IN", style: TextStyle(
                    color: Color(0xFF0000E4),
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700
                  ))
                )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
  void openLoginPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}