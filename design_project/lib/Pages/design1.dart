import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Design1 extends StatelessWidget {
  const Design1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //app bar design
              const Padding(
                padding:  EdgeInsets.all(16.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        // Arrow icon
                        Icon(
                          Icons.arrow_back,
                          size: 24,
                        ),
                      ],
                    ),
                    // setting label
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //white space
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              
              //design body content
              const Padding(
                padding:  EdgeInsets.all(16.0),
                child:  Text(
                  "Information",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info_outline),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About Us",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Learn more about us",style: TextStyle(color: Color(0xff6C757D)),),
                            ],
                          ),
                        )
                      ],
                    ),
                     Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/translate.png", width: 24),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Language",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("English",style: TextStyle(color: Color(0xff6C757D))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding:  EdgeInsets.all(16.0),
                child:  Text(
                  "Security",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 32),
               const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock),
                         Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Change Password",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Update your login credentials",style: TextStyle(color: Color(0xff6C757D))),
                            ],
                          ),
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.delete,color: Color(0xffEB3243)),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Request to Delete Account",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffEB3243),
                                ),
                                ),
                              Text("Permanently remove your account",style: TextStyle(color: Color(0xff6C757D))),
                            ],
                          ),
                        )
                      ],
                    ),
                     Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 120,),
                  Image.asset("assets/SkyLine1.png",scale: 0.8),
                  Image.asset("assets/Home.png"),
                ],
              )
            ],
          
        ),
      ),
    );
  }
}
