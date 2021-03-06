import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class PaymentWindow extends StatefulWidget {
  @override
  _PaymentWindowState createState() => _PaymentWindowState();
}

class _PaymentWindowState extends State<PaymentWindow> {
  int cnt1, cnt2;

  @override
  void initState() {
    super.initState();
    cnt1 = 0;
    cnt2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.36,
      margin: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CART TOTAL',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '₹35465',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.002,
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(
              height: height * 0.002,
            ),
            Text(
              'SHIPPING',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: Column(
                children: [
                  Container(
                    height: height * 0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              cnt2 = cnt2 + 1;
                              cnt1 = 0;
                            });
                            if (cnt2 == 2) {
                              setState(() {
                                cnt2 = 0;
                              });
                            }
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: cnt2 == 1
                                        ? Colors.teal
                                        : Colors.transparent,
                                    border: Border.all(color: Colors.grey)),
                              ),
                              cnt2 == 1
                                  ? Transform.translate(
                                      offset: Offset(2, -10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 45,
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.7,
                          color: cnt2 == 1 ? Colors.black : Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Premium Next Day Shipping ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        cnt2 == 1 ? Colors.white : Colors.black,
                                  ),
                                ),
                                Text(
                                  '₹31',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        cnt2 == 1 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              cnt1 = cnt1 + 1;
                              cnt2 = 0;
                            });
                            if (cnt1 == 2) {
                              setState(() {
                                cnt1 = 0;
                              });
                            }
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: cnt1 == 1
                                        ? Colors.teal
                                        : Colors.transparent,
                                    border: Border.all(color: Colors.grey)),
                              ),
                              cnt1 == 1
                                  ? Transform.translate(
                                      offset: Offset(2, -10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 45,
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.7,
                          color: cnt1 == 1 ? Colors.black : Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Basic Shipping',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        cnt1 == 1 ? Colors.white : Colors.black,
                                  ),
                                ),
                                Text(
                                  '₹31',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        cnt1 == 1 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '₹35131',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: RetroButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Payment & Address',
                        style: TextStyle(
                          fontFamily: 'pix M 8pt',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: RelicColors.primaryBlack,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
                upperColor: Colors.white,
                lowerColor: Colors.black,
                height: height * 0.052,
                width: width * 0.8,
                borderColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
