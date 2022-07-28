import 'package:flutter/material.dart';
import 'package:gameon/screens/ground_details.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  final String? imageUrl,name,city_location,navigation;
  const CardItem({Key? key,this.imageUrl,this.name,this.city_location, this.navigation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) =>  GroundsDetails(imageURL: imageUrl,name: name)));
      },
      child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(14.0),
                    child: ClipRRect(
                     borderRadius: BorderRadius.circular(11.0),
                      child:  Image(
                        height: 105,
                        width: 96,
                        image: NetworkImage(imageUrl!),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 14),
                      Text("20 Over",
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color:  const Color.fromRGBO(3, 57, 52, 1))
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            width: 60,
                            height: 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromRGBO(8, 143, 129, 1),
                            ),
                            child: Center(
                              child: Text('10:00 am',
                                  style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white)
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            width: 60,
                            height: 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 201, 201, 201)
                              )
                            ),
                            child: Center(
                              child: Text('1:00 pm',
                                  style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromARGB(255, 201, 201, 201))
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            width: 60,
                            height: 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromRGBO(8, 143, 129, 1),
                            ),
                            child: Center(
                              child: Text('4:00 pm',
                                  style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 11),
                      Text("30 Over",
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color:  const Color.fromRGBO(3, 57, 52, 1))
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            width: 60,
                            height: 21,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(252, 252, 108, 1)
                                )
                            ),
                            child: Center(
                              child: Text('2:00 pm',
                                  style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromARGB(252, 252, 108, 1))
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            width: 60,
                            height: 21,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(255, 201, 201, 201)
                                )
                            ),
                            child: Center(
                              child: Text('4:00 pm',
                                  style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromARGB(255, 201, 201, 201))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Text(name!,
                  style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromRGBO(3, 57, 52, 1)),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 14,top: 9),
                    child: const Icon(Icons.pin_drop_outlined,
                        color: Color.fromRGBO(134, 134, 134, 1)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 9),
                    child: Text(city_location!,
                      style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color.fromRGBO(
                          134, 134, 134, 1.0)),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 14),
                    child: Text('Pitch type : Mat',
                      style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: const Color.fromRGBO(3, 57, 52, 1)),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children:  [
                      const Icon(
                        Icons.assistant_direction_outlined,
                          color: Color.fromRGBO(8, 143, 129, 1)
                      ),
                      const SizedBox(width: 8,),
                      Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Text(navigation!,
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color:const Color.fromRGBO(8, 143, 129, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
