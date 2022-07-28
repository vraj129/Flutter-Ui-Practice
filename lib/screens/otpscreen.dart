import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gameon/screens/home_screen.dart';
import 'package:gameon/screens/manual_location.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {


  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();
  TextEditingController no3 = TextEditingController();
  TextEditingController no4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 143, 129, 0.76),
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
                color: const Color.fromRGBO(8, 143, 129, 0.76),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo.png'),
                    Text('Gameon',
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
                      child: Text('Enter OTP',
                        style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 57.0,right: 57.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
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
                            child: TextField(
                              autofocus: false,
                              controller: no1,
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: const Color.fromRGBO(8, 143, 129, 1)),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              cursorColor: const Color.fromRGBO(8, 143, 129, 1),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:  Color.fromRGBO(8, 143, 129, 1),
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
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
                            child: TextField(
                              controller: no2,
                              autofocus: false,
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: const Color.fromRGBO(8, 143, 129, 1)),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              cursorColor: const Color.fromRGBO(8, 143, 129, 1),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:  Color.fromRGBO(8, 143, 129, 1),
                                      width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
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
                            child: TextField(
                              controller: no3,
                              autofocus: false,
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: const Color.fromRGBO(8, 143, 129, 1)),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              cursorColor: const Color.fromRGBO(8, 143, 129, 1),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:  Color.fromRGBO(8, 143, 129, 1),
                                      width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
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
                            child: TextField(
                              controller: no4,
                              autofocus: false,
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: const Color.fromRGBO(8, 143, 129, 1)),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              cursorColor: const Color.fromRGBO(8, 143, 129, 1),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:  Color.fromRGBO(8, 143, 129, 1),
                                      width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'OTP Send to 9900265566',
                        style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          color: Color.fromRGBO(8, 143, 129, 1),
                        ),
                        const SizedBox(width: 8,),
                        Text(
                          '00:59',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 66,
                    ),
                    Expanded(
                      child: Center(
                        child: MaterialButton(
                          elevation: 10,
                          onPressed: () async {
                            if(no1.text != '' && no2.text != '' && no3.text != '' && no4.text != '' ){
                              print('Hello');
                              var status = await Permission.location.request();
                              if(status.isGranted){
                                print('accepted');
                                Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen()));
                              }else{
                                Navigator.push(context, MaterialPageRoute(builder:(context) => const ManualLocationScrenn()));
                              }

                            }else {
                              Fluttertoast.showToast(
                                  msg: "Please Enter Otp",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            }
                          },
                          color: const Color.fromRGBO(8, 143, 129, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                          child: Text('Login',
                            style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white),),
                        ),
                      ),
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
