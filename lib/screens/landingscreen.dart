import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameon/screens/otpscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
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
             flex: 2,
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
                       child: Text('Hi!',
                         style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                       ),
                     ),
                     const SizedBox(
                       height: 8,
                     ),
                     Center(
                       child: Text(
                         'Let’s Get Started.',
                         style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1)),
                       ),
                     ),
                     const SizedBox(
                       height: 40,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children:  [
                           Text('Enter Phone Number',
                             style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           Container(

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
                             child: InternationalPhoneNumberInput(
                               onInputChanged: (value){},
                               cursorColor: Colors.black,
                               formatInput: false,
                               selectorConfig: const SelectorConfig(
                                 selectorType: PhoneInputSelectorType.BOTTOM_SHEET
                               ),
                               inputDecoration: InputDecoration(
                                 contentPadding: const EdgeInsets.only(bottom: 15,left: 0),
                                 border: InputBorder.none,
                                 hintText: '9900265566',
                                 hintStyle: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color.fromRGBO(127, 168, 156, 1))
                               ),
                             ),
                           )
                         ],

                       ),
                     ),
                     const SizedBox(
                       height: 120,
                     ),
                     Center(
                       child: MaterialButton(
                         elevation: 10,
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder:(context) => OtpScreen()));
                         },
                         color: const Color.fromRGBO(8, 143, 129, 1),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8),

                         ),
                         padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                         child: Text('Get OTP',
                         style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white),),
                       ),
                     ),
                     const SizedBox(height: 17,),
                     Center(
                         child: Text(
                             'Have a Pin?',
                           style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1),decoration: TextDecoration.underline),
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
