import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  static const String id="signin_page";
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1),
            ]
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Instagram",style: TextStyle(fontSize: 45, fontFamily: "Billabong", color: Colors.white),
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white.withOpacity(0.2)
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 17,color: Colors.white54),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
            ),

            Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do'nt have an account", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 10,),
                  Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
