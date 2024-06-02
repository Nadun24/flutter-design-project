import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Design3 extends StatefulWidget {
  const Design3({super.key});

  @override
  State<Design3> createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  final double profileHeight = 200;
  final double coverHeight = 300;

  String selectButton = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            // White background
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Use Column for vertical layout
              children: [
                buildTop(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                      child: Text(
                    "Rate Your Experience!",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Image.asset("assets/Rate.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Container(
                          width: double.infinity,
                          height: 84,
                          decoration: BoxDecoration(
                              color: Color(0xffEFF2F4),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Write Your Experience",
                              style: TextStyle(
                                color: Color(0xff6C757D),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child:  Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 16.0),
                              child: Text("Would you like to add tip?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              )),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectButton= "1";
                                    });
                                  },
                                  child: Container(
                                    width: 59,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: selectButton=="1"? Color(0xff132026): Color(0xffEFF2F4),
                                      borderRadius: BorderRadius.circular(10),                           ),
                                    child:  Center(
                                      child: Text("Rs 20",
                                      style: TextStyle(
                                        color: selectButton=="1"? Color(0xffFEFEFE): Color(0xff132026),
                                      ),),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectButton="2";
                                    });
                                  },
                                  child: Container(
                                    width: 59,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color:  selectButton=="2"? Color(0xff132026): Color(0xffEFF2F4),
                                      borderRadius: BorderRadius.circular(10),                           ),
                                    child: Center(
                                      child: Text("Rs 30",
                                      style: TextStyle(
                                        color: selectButton=="2"? Color(0xffFEFEFE): Color(0xff132026),
                                      ),),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectButton="3";
                                  });
                                },
                                child: Container(
                                  width: 59,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color:selectButton=="3"? Color(0xff132026): Color(0xffEFF2F4),
                                    borderRadius: BorderRadius.circular(10),                           ),
                                  child:  Center(
                                    child: Text("Rs 20",
                                    style: TextStyle(
                                      color: selectButton=="3"? Color(0xffFEFEFE): Color(0xff132026),
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                        ],

                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xffEFF2F4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Custom Amount"),
                                Icon(Icons.monetization_on_outlined, color: Color(0xffADB5BD),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xffFBDC05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text("Add Review",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff132026),
                            fontWeight: FontWeight.w600,
                          ),)),
                        ),
                      ),

                      const Text("Skip",
                        style: TextStyle(
                          color: Color(0xff132026),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Image.asset("assets/Home.png"),
                      ),

                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack buildTop() {
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 40), child: buildCoverImage()),
        Positioned(
          top: 200, // Adjust this value as needed
          left: 70, // Adjust this value as needed
          child: locationImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget locationImage() => Image.asset(
        "assets/Destination.png",
        width: 200,
        height: 50,
      );

  Widget buildCoverImage() => Container(
        width: double.infinity,
        height: coverHeight,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/Map.png",
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.6), // 60% opacity black overlay
            ),
          ],
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage("assets/Driver.png"),
      );
}
