import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning/details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFDCD6),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 478,
                decoration: BoxDecoration(
                  color: Color(0xffFFDCD5).withOpacity(0.75),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      child: SvgPicture.asset(
                        "assets/bg.svg",
                        height: 400,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Learn Online \nfrom your home",
                      style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff121212)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Learn a lot of new skills with our\ninteresting lessons by watching\videos and solving tasks",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: "Gilroy",
                          fontSize: 24,
                          color: Color(0xff112745)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        height: 76,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xff2C48BA),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 12),
                          height: 64,
                          child: RaisedButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Details(),
                              ),
                            ),
                            elevation: 0,
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.3,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                                fontSize: 23
                              ),
                            ),
                            color: Color(0xff3657E0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
