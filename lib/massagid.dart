import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagingID extends StatefulWidget {
  MessagingID({super.key});

  @override
  State<MessagingID> createState() => _MessagingIDState();
}

class _MessagingIDState extends State<MessagingID> {
  //
  double value = 1;

  //
  final titleStyle = TextStyle(
      color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18);

  final subTitle =
      TextStyle(color: Colors.black45, fontWeight: FontWeight.w500);
  List<String> ImageList = [
    "assets/profile1.jpg",
    "assets/profile2.jpg",
    "assets/profile3.jpg",
    "assets/profile4.jpg",
    "assets/profile5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1EDC0),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.9, color: Colors.black45),
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(CupertinoIcons.multiply),
                  ),
                ),
                Icon(CupertinoIcons.line_horizontal_3_decrease, size: 30)
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 150, left: 150),
              child:
                  Divider(height: 5, color: Color(0xFFACC49B), thickness: 5)),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.1,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Messaging ID",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 30)),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your daily plan", style: titleStyle),
                          Text("${value.toInt()}", style: titleStyle),
                        ],
                      ),
                      Slider(
                          divisions: 10,
                          min: 1,
                          max: 100,
                          autofocus: true,
                          // divisions: 10,
                          thumbColor: Colors.white,
                          activeColor: Colors.black,
                          inactiveColor: Colors.black12,
                          value: value.toDouble(),
                          onChanged: (newvalue) {
                            setState(() => value = newvalue);
                          }),
                      Text("4 of 6 completed", style: subTitle),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 80,
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFE7AB),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("17", style: titleStyle),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.task_outlined),
                                      Text(" Tasks finished", style: subTitle),
                                    ],
                                  )
                                ]),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 80,
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFE7AB),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("3,2", style: titleStyle),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.av_timer_sharp),
                                      Text(" Tracked hours", style: subTitle),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text("Overview", style: titleStyle),
                      SizedBox(height: 10),
                      Text(
                        maxLines: 3,
                        strutStyle: StrutStyle(
                          height: 1.5,
                        ),
                        "Messaging ID framework development for the marketing branch and the publicity bureau and implemented a draft on the frameowrk",
                        style: subTitle,
                      ),
                      SizedBox(height: 30),
                      Text("Meembers connected", style: titleStyle),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var i = 0; i < ImageList.length; i++)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                width: 50,
                                height: 50,
                                image: AssetImage(ImageList[i]),
                                fit: BoxFit.fill,
                              ),
                            )
                        ],
                      ),
                    ])),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          elevation: 0,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.work_history), label: ""),
          ]),
    );
  }
}
