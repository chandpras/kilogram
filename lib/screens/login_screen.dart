import 'package:flutter/material.dart';
import 'package:kilogram/screens/list_post_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController phoneController = TextEditingController();
  bool isphoneValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/logo.png"),
                    SizedBox(height: 40,),
                    Row(
                    children: [
                        Text("Phone Number", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("*", style: TextStyle(color: Colors.red),)
                      ],
                    ),
                    SizedBox(height: 14,),
                    TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call),
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 188, 183, 189)),
                      borderRadius: BorderRadius.circular(8)),
                      errorText: isphoneValid ? null : "Phone number doesn't valid",
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 400,),

                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 53,
                      child:Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Color(0xFF1E90FF)),foregroundColor:MaterialStateProperty.all<Color>(Colors.white),),
                              onPressed: () {
                                setState(() {
                                  isphoneValid = phoneController.text.isNotEmpty;
                                  isphoneValid = phoneController.text.length < 12;
                                });
                                
                                if (!isphoneValid) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PostScreen()));
                                }
                                
                              },
                            child: Text("Continue",style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white),)
                          )
                        ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        )
        ),
    );
  }
}