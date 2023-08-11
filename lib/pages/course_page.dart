import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Image.asset("assets/Web Design.png"),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Web Design\nCourse",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$25,99",
                                  style: TextStyle(
                                      color: Color(0xfffb6603e),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4.3",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xfffb6603e),
                                      size: 20,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "24",
                                        style: TextStyle(
                                            color: Color(0xfffb6603e),
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "Classes",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "2 Hours",
                                        style: TextStyle(
                                            color: Color(0xfffb6603e),
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "Time",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "100",
                                        style: TextStyle(
                                            color: Color(0xfffb6603e),
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "Seats",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Gabung ke kursus Web Development, di kursus ini kamu akan mempelajari html, css, bootstrap",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 17),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 1.3,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Color(0xfffb6603),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 6,
                                spreadRadius: 4)
                          ]),
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                CupertinoIcons.multiply,
                color: Colors.black45,
                size: 25,
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  color: Color(0xfffb6603),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Join Course",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
