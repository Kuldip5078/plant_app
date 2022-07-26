import 'package:flutter/material.dart';


import '../home/bottom_nav_drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(Icons.arrow_back_ios_new),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Hello",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Let’s Learn More About Plants",
                style: TextStyle(fontSize: 16, color: Color(0XFF495566)),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                  decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(fontSize: 15, color: Color(0XFF6A6F7D)),
              )),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                  decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 15, color: Color(0XFF6A6F7D)),
              )),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    //fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: ischecked,
                    onChanged: (bool? value) {
                      setState(() {
                        ischecked = value!;
                      });
                    },
                  ),
                  const Text("Remember me"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11,
                        color: Color(0XFF6A6F7D)),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0XFF2DDA93),
                  ),
                  child:const  Text("LOGIN"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) =>const  BottomNaviDrawer())));
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don’t Have Account?",
                    style: TextStyle(
                        color: Color(0XFF6A6F7D), fontFamily: 'SF Pro Text'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0XFF2DDA93),
                        fontFamily: 'SF Pro Text',
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
             
            ],
          ),
        ));
  }
}
