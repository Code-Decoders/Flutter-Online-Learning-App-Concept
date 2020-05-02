import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD0C8),
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: false,
                  elevation: 0,
                  backgroundColor: Color(0xffFFDCD6),
                  expandedHeight: 400,
                  automaticallyImplyLeading: false,
                  title: Container(
                    height: 50, 
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          CupertinoIcons.back,
                          size: 30,
                          color: Color(0xfff37776),
                        ),
                      ),
                    ),
                  ),
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "assets/bg2.png",
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                )
              ];
            },
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 23),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(54)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Interior Design",
                          style: TextStyle(
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.bold,
                              fontSize: 33,
                              color: Color(0xff121212)),
                        ),
                        Text(
                          "\$50",
                          style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 31,
                              color: Color(0xff191919)),
                        ),
                      ],
                    ),
                    Text(
                      "University Of Toronto",
                      style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 20,
                          color: Color(0xff414141)),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/star.svg"),
                        Padding(
                          padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                          child: Text(
                            "4.5",
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 17,
                                color: Color(0xffff7c65),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset("assets/timer.svg"),
                        Padding(
                          padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                          child: Text(
                            "64 Hours",
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 17,
                                color: Color(0xffff7c65),
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTile(
                      title: "Design Basic",
                      duration: "5:35 mins",
                      selected: true,
                    ),
                    CustomTile(
                      title: "What is interior design?",
                      duration: "8:30 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    SizedBox(
                      height: 130,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -5),
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 15),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(54),
                    topRight: Radius.circular(54),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 78,
                      decoration: BoxDecoration(
                          color: Color(0xffC8D1F2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 64,
                        margin: EdgeInsets.only(bottom: 12),
                        child: RaisedButton(
                          onPressed: () {},
                          elevation: 0,
                          child: SvgPicture.asset(
                            "assets/bag.svg",
                            color: Color(0xff3657e0).withOpacity(0.81),
                          ),
                          color: Color(0xffD9E1FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 78,
                        decoration: BoxDecoration(
                            color: Color(0xff2C48BA),
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: 64,
                          margin: EdgeInsets.only(bottom: 12),
                          child: RaisedButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Color(0xffffffff),
                              ),
                            ),
                            color: Color(0xff3657E0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final bool selected;
  final String title;
  final String duration;
  const CustomTile({
    this.selected = false,
    this.title,
    this.duration,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            margin: EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: selected ? Color(0xfff56c6b) : Color(0xffffeaea),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: SvgPicture.asset(
                  "assets/play.svg",
                  color: selected ? Colors.white : Color(0xfff56c6b),
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w500,
              fontSize: 21,
              color: Color(0xff000000),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          subtitle: Text(
            duration,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Gilroy",
              fontSize: 18,
              color: Color(0xff777777),
            ),
          ),
        ),
        Divider(
          indent: 80,
          height: 20,
          color: Color(0xffD9D9D9).withOpacity(0.69),
          thickness: 1.5,
        )
      ],
    );
  }
}
