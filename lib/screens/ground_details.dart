

import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class GroundsDetails extends StatelessWidget {
  final String? name;

  final String? imageURL;
   GroundsDetails({Key? key,this.imageURL,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(8, 143, 129, 1),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        backgroundColor: const Color.fromRGBO(8, 143, 129, 1),
        title: Text('Grounds',
            style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white)
        ),
      ),
      drawer:Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(8, 143, 129, 1),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      body: mainBody(),
    );
  }
  Widget mainBody(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children:   [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Icon(Icons.calendar_month_outlined,
                    color: Color.fromRGBO(8, 143, 129, 1)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20,left: 8.5),
                child: Text('Sunday, 21 June 2021',
                style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 22,),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 42,right: 42,bottom: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child:  Image(
                  height: 292,
                  image: NetworkImage(imageURL!),
                ),
              ),
            ),
          ),
           Container(
             margin: EdgeInsets.only(left: 20),
               child: Text(name!,
                   style:GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1))
               ),
           ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child:Row(
              children: [
                const Icon(Icons.pin_drop_outlined,
                    color: Color.fromRGBO(8, 143, 129, 1)),
                const SizedBox(width: 6,),
                Text('Navigate',
                  style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1),decoration: TextDecoration.underline),
                ),
                const Spacer(),
                Text('Pitch type : Mat',
                  style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                ),
              ],
            ) ,
          ),
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child:Row(
              children: [
                Container(
                  height: 23,
                  width: 23,
                  decoration:  BoxDecoration(
                      color: const Color.fromRGBO(8, 143, 129, 0.08),
                      borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(Icons.fastfood_sharp,
                      color: Color.fromRGBO(8, 143, 129, 1),
                  size: 18,),
                ),
                const SizedBox(width: 8,),
                Container(
                  height: 23,
                  width: 23,
                  decoration:  BoxDecoration(
                    color: const Color.fromRGBO(8, 143, 129, 0.08),
                      borderRadius: BorderRadius.circular(4.0)
                  ),
                  child: const Icon(Icons.wash,
                    color: Color.fromRGBO(8, 143, 129, 1),
                    size: 18,),
                ),
                const Spacer(),
                Container(
                  decoration:  BoxDecoration(
                    color: const Color.fromRGBO(8, 143, 129, 0.08),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children:  [
                         const Icon(
                            Icons.assistant_direction_outlined,
                            color: Color.fromRGBO(8, 143, 129, 1)
                        ),
                        const SizedBox(width: 8,),
                        Text('2 Km far.',
                            style:GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ) ,
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Card(
              elevation: 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 13,left: 12),
                        child: Text('For 20 overs',
                        style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(top: 13,right: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: const Color.fromRGBO(8, 143, 129, 1))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9.0,right: 11,top: 2,bottom: 2),
                          child: Text('10:00 am',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    margin: const EdgeInsets.only(right: 90),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          child: Text(
                              'Team 1 : ',
                            style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1)),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Team 2 : ',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color.fromRGBO(127, 168, 156, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 84),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Mumbai Indians',
                            style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Available',
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    margin: const EdgeInsets.only(right: 76),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(238, 238, 238, 1.0),
                            borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5,left: 15,bottom: 4,right: 13),
                            child: Text(
                              'Booked',
                              style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromRGBO(3, 57, 52, 1)),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(8, 143, 129, 0.08),
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5,left: 15,bottom: 4,right: 13),
                            child: Text(
                              'Available',
                              style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromRGBO(8, 143, 129, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const Padding(
                    padding: EdgeInsets.only(left: 13,right: 11),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text('Ball provided',
                        style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromRGBO(3, 57, 52, 1)) ,
                        ),
                        CustomCheckBox(
                          shouldShowBorder: false,
                          borderRadius: 4,
                          checkBoxSize: 14,
                          uncheckedFillColor: const Color.fromRGBO(244, 244, 244, 1),
                          checkedFillColor: const Color.fromRGBO(244, 244, 244, 1),
                          checkedIconColor: const Color.fromRGBO(8, 143, 129, 1),
                          borderColor: const Color.fromRGBO(231, 231, 231, 1),
                          value: true, onChanged: (bool? value) {  },
                        ),
                        Text('Umpire provided',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromRGBO(3, 57, 52, 1)) ,
                        ),
                        CustomCheckBox(
                          shouldShowBorder: false,
                          borderRadius: 4,
                          checkBoxSize: 14,
                          uncheckedFillColor: const Color.fromRGBO(244, 244, 244, 1),
                          checkedIconColor: const Color.fromRGBO(8, 143, 129, 1),
                          borderColor: const Color.fromRGBO(231, 231, 231, 1),
                          value: false, onChanged: (bool? value) {  },
                        ),
                        Text('Ball Detail : ',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)) ,
                        ),
                        Text('Tennis',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)) ,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 17,),
                  Container(
                    margin: const EdgeInsets.only(left: 17.49),
                    child: Row(
                      children: [
                        const Text('₹',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(8, 143, 129, 1),
                          ),
                        ),
                        Text(' 3000',
                        style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(right: 12,bottom: 12),
                          child: MaterialButton(
                            elevation: 10,
                            onPressed: () {},
                            color: const Color.fromRGBO(8, 143, 129, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Text('Book now',
                              style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Card(
              elevation: 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 13,left: 12),
                        child: Text('For 30 overs',
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(top: 13,right: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: const Color.fromRGBO(8, 143, 129, 1))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9.0,right: 11,top: 2,bottom: 2),
                          child: Text('3 :00 am',
                            style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    margin: const EdgeInsets.only(right: 90),
                    child: Row(
                      children: [
                        const Spacer(),
                        Container(
                          //margin: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(8, 143, 129, 1),
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5,left: 15,bottom: 4,right: 13),
                            child: Text(
                              'Available',
                              style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    margin: const EdgeInsets.only(right: 76),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(8, 143, 129, 1),
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5,left: 15,bottom: 4,right: 13),
                            child: Text(
                              'Available',
                              style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const Padding(
                    padding: EdgeInsets.only(left: 13,right: 11),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text('Ball provided',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromRGBO(3, 57, 52, 1)) ,
                        ),
                        CustomCheckBox(
                          shouldShowBorder: false,
                          borderRadius: 4,
                          checkBoxSize: 14,
                          uncheckedFillColor: const Color.fromRGBO(244, 244, 244, 1),
                          checkedFillColor: const Color.fromRGBO(244, 244, 244, 1),
                          checkedIconColor: const Color.fromRGBO(8, 143, 129, 1),
                          borderColor: const Color.fromRGBO(231, 231, 231, 1),
                          value: true, onChanged: (bool? value) {  },
                        ),
                        Text('Umpire provided',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromRGBO(3, 57, 52, 1)) ,
                        ),
                        CustomCheckBox(
                          shouldShowBorder: false,
                          borderRadius: 4,
                          checkBoxSize: 14,
                          uncheckedFillColor: const Color.fromRGBO(244, 244, 244, 1),
                          checkedIconColor: const Color.fromRGBO(8, 143, 129, 1),
                          borderColor: const Color.fromRGBO(231, 231, 231, 1),
                          value: false, onChanged: (bool? value) {  },
                        ),
                        Text('Ball Detail : ',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)) ,
                        ),
                        Text('Tennis',
                          style:GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)) ,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 17,),
                  Container(
                    margin: const EdgeInsets.only(left: 17.49),
                    child: Row(
                      children: [
                        const Text('₹',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(8, 143, 129, 1),
                        ),
                        ),
                        Text(' 3000',
                          style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(right: 12,bottom: 12),
                          child: MaterialButton(
                            elevation: 10,
                            onPressed: () {},
                            color: const Color.fromRGBO(8, 143, 129, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Text('Book now',
                              style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
