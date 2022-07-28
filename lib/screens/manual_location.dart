import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameon/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class ManualLocationScrenn extends StatefulWidget {
  const ManualLocationScrenn({Key? key}) : super(key: key);

  @override
  State<ManualLocationScrenn> createState() => _ManualLocationScrennState();
}

class _ManualLocationScrennState extends State<ManualLocationScrenn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 143, 129, 0.9),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children:<Widget> [
              Container(
                child: Image.asset('assets/img.png'),
              ), //Container
              Container(
                width: MediaQuery.of(context).size.width,
                height: 235,
                color: const Color.fromRGBO(8, 143, 129, 0.9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo.png'),
                    Text('Lorem ipsum dolor sit amet.',
                      style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),)
                  ],
                ),
              ),
              //Container
            ],
          ),
          Expanded(
            child: Card(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text('Enter Your Location',
                        style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text('OK, at least enter your location so that',
                      style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1)),
                      ),
                    ),
                    Center(
                      child: Text('we can personalise your experience.',
                        style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Address',
                            style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                          ),
                        ),
                        const Text('*',
                        style: TextStyle(
                          color: Color.fromRGBO(190, 0, 0, 1),
                        ),)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(8, 143, 129, 0.08),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffeeeeee),
                                  blurRadius: 10,
                                  offset: Offset(0,4),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: const Color.fromRGBO(8, 143, 129, 0.4))
                          ),
                        child: const TextField(
                          decoration: InputDecoration(
                            labelText: "Write Here.....",
                            icon: Icon(Icons.pin_drop_outlined,
                            color: Color.fromRGBO(8, 143, 129, 1)),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(127, 168, 156, 1),
                              fontSize: 14,
                              fontFamily: 'poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Center(
                      child: MaterialButton(
                        elevation: 10,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen()));
                        },
                        color: const Color.fromRGBO(8, 143, 129, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                        child: Text('Continue',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white),),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                            "You agree to our ",
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:const Color.fromRGBO(127, 168, 156, 1)),
                        ),
                        Text(
                          "Terms of Service",
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color.fromRGBO(8, 143, 129, 1),decoration: TextDecoration.underline),
                        ),
                        Text(
                          " and ",
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:const Color.fromRGBO(127, 168, 156, 1)),
                        ),
                        Text(
                          "Privacy policy",
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color.fromRGBO(8, 143, 129, 1),decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
