import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    "UI/UX",
    "Coding",
    "App Deisgn",
    "Security",
  ];

  List courses = ["App Development", "Ecommerce", "UI Design", "Web Design"];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ferdi Ananta Salman",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/profile.jpg",
                        height: 50,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(color: Color(0xFFF8FAF8)),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search for course",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 42,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: index == 0 ? Color(0xfffb6603) : null,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xfffb6603))),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: index == 0
                                    ? Colors.white
                                    : Color(0xfffb6603)),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.only(
                                  left: 120, right: 15, top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF8FAF8),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    courses[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "24 lesson",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text("4.3"),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xfffb6603),
                                            size: 15,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$25",
                                        style: TextStyle(
                                            color: Color(0xfffb6603),
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: Color(0xfffb6603),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 30, left: 30),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/${courses[index]}.png",
                                    height: 70,
                                    // width: 80,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Popular Course",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: courses.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF8FAF8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              courses[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "24 lesson",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                Row(
                                  children: [
                                    Text("4.3"),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xfffb6603),
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/${courses[index]}.png",
                                  height: 85,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        )),
      ),
    );
  }
}
