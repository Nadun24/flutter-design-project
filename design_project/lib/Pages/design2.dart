import 'package:design_project/PromoCard.dart';
import 'package:flutter/material.dart';

class Design2 extends StatefulWidget {
  const Design2({Key? key}) : super(key: key);

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
                        child: Image.asset("assets/cancel.png"),
                      ),
                      const Text(
                        "Voucher",
                        style: TextStyle(color: Color(0xffffffff), fontSize: 18),
                      ),
                      const SizedBox(width: 40),
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
                        child: ListView(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 36.0),
                              child: Text(
                                "Voucher Available",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 22),
                            PromoCard(
                              title: "\$1,00 discount",
                              description: "You just need to pay \$8,00",
                              validity: "valid until September 19, 2021",
                              isSelected: promoApplied == "1",
                              onTap: () {
                                setState(() {
                                  promoApplied = "1";
                                });
                              },
                            ),
                            PromoCard(
                              title: "10% Cashback Guaranteed",
                              description: "Cashback will go to your balance",
                              validity: "valid until September 26, 2021",
                              isSelected: promoApplied == "2",
                              onTap: () {
                                setState(() {
                                  promoApplied = "2";
                                });
                              },
                            ),
                            PromoCard(
                              title: "\$1,00 discount",
                              description: "You just need to pay \$8,00",
                              validity: "valid until September 19, 2021",
                              isSelected: promoApplied == "3",
                              onTap: () {
                                setState(() {
                                  promoApplied = "3";
                                });
                              },
                            ),
                            PromoCard(
                              title: "10% Cashback Guaranteed",
                              description: "Cashback will go to your balance",
                              validity: "valid until September 26, 2021",
                              isSelected: promoApplied == "4",
                              onTap: () {
                                setState(() {
                                  promoApplied = "4";
                                });
                              },
                            ),
                            PromoCard(
                              title: "\$1,00 discount",
                              description: "You just need to pay \$8,00",
                              validity: "valid until September 19, 2021",
                              isSelected: promoApplied == "5",
                              onTap: () {
                                setState(() {
                                  promoApplied = "5";
                                });
                              },
                            ),
                          ],
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

const kTextColor = Color(0xff000000);
