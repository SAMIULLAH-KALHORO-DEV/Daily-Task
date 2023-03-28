import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_container.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  List<String> ImageList = [
    "assets/profile1.jpg",
    "assets/profile2.jpg",
    "assets/profile3.jpg",
    "assets/profile4.jpg",
    "assets/profile5.jpg",
  ];
// 
  final titleStyle = TextStyle(
      color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18);
  final subTitle =
      TextStyle(color: Colors.black45, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF4F1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                width: 60,
                                height: 60,
                                image: AssetImage(
                                  "assets/profile2.jpg",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(" Hi, Kira!"),
                          ],
                        ),
                        Icon(
                          Icons.notifications,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Tasks for today:",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text("5 available",
                          style: Theme.of(context).textTheme.titleMedium)
                    ]),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              suffixIcon: Icon(Icons.search))),
                    ),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Last connections", style: titleStyle),
                          Text("See all", style: subTitle)
                        ]),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var i = 0; i < ImageList.length; i++)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                              width: 60,
                              height: 60,
                              image: AssetImage(ImageList[i]),
                              fit: BoxFit.fill,
                            ),
                          )
                      ],
                    ),
                    SizedBox(height: 40),
                  ]),
            ),
            BottomContainer()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          elevation: 0,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.doc_chart_fill), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.work_history), label: ""),
          ]),
    );
  }
}
