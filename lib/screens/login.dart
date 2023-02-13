import 'package:flutter/material.dart';
import 'package:task/screens/chatapp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ok = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 250,width: 300,child: Image.asset('image/whatsApp_logo.jpeg')),
              Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xfff2eff6),
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    TextFormField(
                      obscureText: ok,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: 'PassWord',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              if (ok) {
                                ok = false;
                                setState(() {});
                              } else {
                                ok = true;
                                setState(() {});
                              }
                            },
                            child: Icon(Icons.remove_red_eye)),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      onFieldSubmitted: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a valid password!';
                        }
                        return null;
                      },
                    ),
                    GestureDetector(onTap: null,child: Text('Forgot Password?')),
                    FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => const Chat()));},
                        label: Text('        LOGIN        '),
                        backgroundColor: Color(0xff0CD15B)),
                    GestureDetector(onTap: null,child: Text('SIGNUP')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}