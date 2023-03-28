import 'package:design2/massagid.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({
    super.key,
  });

//

//
  final titleStyle = TextStyle(
      color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18);
  final subTitle =
      TextStyle(color: Colors.black45, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Active projects", style: titleStyle),
            Text("See all", style: subTitle)
          ]),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagingID()));
            },
            child: Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38, width: 0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Numero 10", style: subTitle),
                            Text("4h", style: subTitle),
                          ]),
                      Text("Blog and social posts", style: titleStyle),
                      SizedBox(height: 10),
                      Row(children: [
                        Icon(Icons.av_timer),
                        Text(" Deadline is today", style: subTitle)
                      ])
                    ])),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.all(10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 0.4),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Grace Anoma", style: subTitle),
                          Text("7h", style: subTitle),
                        ]),
                    Text("New capmain review", style: titleStyle),
                    SizedBox(height: 10),
                    Row(children: [
                      Icon(Icons.av_timer),
                      Text(" Deadline is yesturday", style: subTitle)
                    ])
                  ])),
        ]),
      ),
    );
  }
}
