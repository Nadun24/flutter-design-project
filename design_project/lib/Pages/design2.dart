import 'package:design_project/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Design2 extends StatefulWidget {
  const Design2({super.key});
  @override
  _Design2State createState() => _Design2State();
}

class _Design2State extends State<Design2> {
 String promoApplied = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff8F00FF),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffffffff),
                        ),
                        child:  Image.asset("assets/cancel.png"),
                      ),
                      const Text(
                        "Voucher",
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 18),
                      ),
                      const SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text("Have a promo code? enter it here"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 36.0),
                                  child: Text(
                                    "Voucher Available",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 22.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration:const  BoxDecoration(
                                      color: Color(0xffEDEDED),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 36.0, vertical: 22),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "\$1,00 discount",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Text(
                                            "You just need to pay \$8,00",
                                            style: TextStyle(
                                              color: kTextColor,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Row(
                                                children: [
                                                  Icon(
                                                    Icons.watch_later_outlined,
                                                    color: Color(0xffCACACA),
                                                    size: 18,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: Text(
                                                      "valid until September 19, 2021",
                                                      style: TextStyle(
                                                        color: kTextColor,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 18.0,
                                                    vertical: 9),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      promoApplied = "1";
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 84,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: promoApplied=="1"
                                                          ? Colors.grey
                                                          : Colors.black,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Use This",
                                                        style: TextStyle(
                                                            color: promoApplied == "1"
                                                                ? Colors.black
                                                                : Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEDEDED),
                                    border: Border.all(
                                      color: Color(0xffFAFAFA), // Border color
                                      width: 1.0, // Border width
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 36.0, vertical: 22),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "10% Cashback Guaranteed",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const Text(
                                          "Cashback will go to your balance",
                                          style: TextStyle(
                                            color: kTextColor,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  color: Color(0xffCACACA),
                                                  size: 18,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10.0),
                                                  child: Text(
                                                    "valid until September 26, 2021",
                                                    style: TextStyle(
                                                      color: kTextColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 18.0, vertical: 9),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    promoApplied = "2";
                                                  });
                                                },
                                                child: Container(
                                                  width: 84,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                    color: promoApplied == "2"
                                                        ? Colors.grey
                                                        : Colors.black,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Use This",
                                                      style: TextStyle(
                                                          color: promoApplied == "2"
                                                              ? Colors.black
                                                              : Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEDEDED),
                                    border: Border.all(
                                      color: Color(0xffFAFAFA), // Border color
                                      width: 1.0, // Border width
                                    ),
                                  ),
                                  child: Padding(
                                    padding:const  EdgeInsets.symmetric(
                                        horizontal: 36.0, vertical: 22),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "\$1,00 discount",
                                          style: TextStyle(
                                            
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            
                                          ),
                                        ),
                                        const Text(
                                          "You just need to pay \$8,00",
                                          style: TextStyle(
                                            color: kTextColor,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  color: Color(0xffCACACA),
                                                  size: 18,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10.0),
                                                  child: Text(
                                                    "valid until September 19, 2021",
                                                    style: TextStyle(
                                                      color: kTextColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 18.0, vertical: 9),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    promoApplied = "3";
                                                  });
                                                },
                                                child: Container(
                                                  width: 84,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                    color: promoApplied == "3"
                                                        ? Colors.grey
                                                        : Colors.black,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Use This",
                                                      style: TextStyle(
                                                          color: promoApplied == "3"
                                                              ? Colors.black
                                                              : Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEDEDED),
                                    border: Border.all(
                                      color: Color(0xffFAFAFA), // Border color
                                      width: 1.0, // Border width
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 36.0, vertical: 22),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "10% Cashback Guaranteed",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const Text(
                                          "Cashback will go to your balance",
                                          style: TextStyle(
                                            color: kTextColor,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  color: Color(0xffCACACA),
                                                  size: 18,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10.0),
                                                  child: Text(
                                                    "valid until September 26, 2021",
                                                    style: TextStyle(
                                                      color: kTextColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:const  EdgeInsets.symmetric(
                                                  horizontal: 18.0, vertical: 9),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    promoApplied = "4";
                                                  });
                                                },
                                                child: Container(
                                                  width: 84,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                    color: promoApplied == "4"
                                                        ? Colors.grey
                                                        : Colors.black,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Use This",
                                                      style: TextStyle(
                                                          color: promoApplied == "4"
                                                              ? Colors.black
                                                              : Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEDEDED),
                                    border: Border.all(
                                      color: const Color(0xffFAFAFA), // Border color
                                      width: 1.0, // Border width
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 36.0, vertical: 22),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "\$1,00 discount",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const Text(
                                          "You just need to pay \$8,00",
                                          style: TextStyle(
                                            color: kTextColor,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  color: Color(0xffCACACA),
                                                  size: 18,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10.0),
                                                  child: Text(
                                                    "valid until September 19, 2021",
                                                    style: TextStyle(
                                                      color: kTextColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 18.0, vertical: 9),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    promoApplied = "5";
                                                  });
                                                },
                                                child: Container(
                                                  width: 84,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                    color: promoApplied == "5"
                                                        ? Colors.grey
                                                        : Colors.black,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Use This",
                                                      style: TextStyle(
                                                          color: promoApplied =="5"
                                                              ? Colors.black
                                                              : Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ),
                        ),
                      ),
                    ),
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
