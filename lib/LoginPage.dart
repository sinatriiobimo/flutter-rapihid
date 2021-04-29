import 'package:flutter/material.dart';
import 'package:rapih_app/StyleScheme.dart';
import 'SignUpPage.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png')
                )
              )
            ),
            SizedBox(height: 50),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to Rapih.id', style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF0000E4),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins'
                  ),),
                  Text("Please log In to your account", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email"
                    )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password"
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password", style: TextStyle(
                        color: Colors.grey
                      ))
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: openHomePage,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        gradient: gradientStyle
                      ),
                      child: Center(
                        child: Text('LOGIN', style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'poppins'
                        ),),
                      ),
                    )
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                      )),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("OR"),
                        ),
                      ),

                       Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                      ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5
                          )
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/googleLogo.png')
                            )
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5
                          )
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/fbLogo.png')
                            )
                          ),
                        ),
                      ),
                    ],
                  )
                ]
            )
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?", style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppins'
                ),),
                InkWell(
                  onTap: openSignUpPage,
                  child: Text(" SIGN UP", style: TextStyle(
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
  void openSignUpPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }
  void openHomePage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}