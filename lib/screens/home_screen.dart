import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:gameon/widget/card_item.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
        actions:const <Widget> [
          Padding(
            padding: EdgeInsets.only(right: 20.1),
            child: Icon(Icons.search
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.1),
            child: Icon(Icons.menu_open_sharp),
          )
        ],
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 4,right: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                        style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                      ),
                        Text('03',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Sun',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('04',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Mon',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(8, 143, 129, 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: Colors.white),
                        ),
                        Text('05',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color:Colors.white),
                        ),
                        Text('Tue',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('06',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Wed',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('07',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Thu',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('08',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Fri',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('10',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Sat',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('11',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Sun',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('12',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Mon',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('13',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Tue',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 59,
                    height: 69,
                    child: Column(
                      children: [
                        Text('Jan',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('14',
                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                        ),
                        Text('Wed',
                          style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: const Color.fromRGBO(3, 57, 52, 1)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 26,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children:  [
                const Icon(Icons.pin_drop_outlined,
                    color: Color.fromRGBO(8, 143, 129, 1)),
                const SizedBox(width: 6,),
                Text('Maharastra, India',
                    style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                ),
                const Spacer(),
                Text('Change >',
                  style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(8, 143, 129, 1)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20),
            child: Divider(
              thickness: 1,
            ),
          ),
          const SizedBox(height: 20,),
          const CardItem(imageUrl: 'https://cricketfacts.in/wp-content/uploads/2020/05/20200516_093757.jpg',name: 'Wankhede International cricket Stadium',city_location: 'Mumbai, Maharashtra',navigation: 'Navigate'),
          const CardItem(imageUrl: 'https://i0.wp.com/www.uniquenewsonline.com/wp-content/uploads/2020/12/Motera-Stadium.png?resize=1024%2C1024&ssl=1',name: 'Narendra Modi Stadium',city_location: 'Gujarat, Ahmedabad',navigation: 'Only 4 Km far.'),
          const CardItem(imageUrl: 'https://cricketfacts.in/wp-content/uploads/2020/05/20200509_220700.jpg',name: 'Arun Jaitley Stadium',city_location: 'Delhi, India',navigation: 'Only 2 Km far.'),
          // const CardItem(),
          // const CardItem(),
        ],
      ),
    );
  }
}
