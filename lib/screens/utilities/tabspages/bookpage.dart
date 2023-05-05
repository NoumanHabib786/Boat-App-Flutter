import 'package:boatapp/screens/utilities/popdesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

import '../../../module/tabmodule.dart';
import '../widgets.dart';

class BookPage extends StatefulWidget {
  final String image_tag;
  final String book_name;

  const BookPage({Key? key, required this.image_tag, required this.book_name})
      : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  int rating = 0;

  void raintingfunc(value) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book boat"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Hero(
                tag: widget.image_tag,
                child: Image.asset(
                  widget.image_tag,
                  fit: BoxFit.cover,
                )),
          ),
          container_book(
            widget.book_name,
            rating,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Packeges",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  padding: EdgeInsets.only(left: 130, top: 20, right: 15),
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 20)
                    ],
                    borderRadius: BorderRadiusDirectional.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Min. Booking",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "799.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Text(
                        "with one hour of boating",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(""),
                            ElevatedButton(
                                style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(0),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.transparent),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            side: BorderSide(
                                                color: Colors.black,
                                                width: 1,
                                                strokeAlign: 2)))),
                                onPressed: () {},
                                child: Text(
                                  "Select",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ]),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 120,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade50,
                        blurRadius: 10,
                        spreadRadius: 5)
                  ]),
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(widget.image_tag, fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Overview",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              maxLines: 4,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              "Experienced software developer with a passion for creating clean and efficient code that delivers exceptional user experiences"
              """ Skilled in a variety of programming languages and frameworks, including Python, JavaScript, React, and Node.js.Dedicated to staying up-to-date with the latest industry trends and technologies, with a commitment to lifelong learning and professional development.""",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(30)),
            height: 300,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.image_tag,
                  fit: BoxFit.fill,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Features",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_forward_outlined),
                    Text(
                      "This is our best boat",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_forward_outlined),
                    Text(
                      "This is our best boat",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_forward_outlined),
                    Text(
                      "This is our best boat",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "About Boat",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.image_tag,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 160,
                  color: Colors.black12,
                  child: const ReadMoreText(
                    "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) ',",
                    trimLines: 10,
                    trimMode: TrimMode.Line,
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){ showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    elevation: 30,
                    title: Text("Please Confirm !"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("cancel")),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                padding: EdgeInsets.all(20),
                                content:
                                Text("Thanks For Booking Us :)"),
                                elevation: 20,
                                duration: Duration(seconds: 2),
                              ));
                            });
                          },
                          child: Text("Book Now")),
                    ],
                  );
                },
              );}, child: Text("Book Now")),
            ),
          )
        ],
      ),
    );
  }
}
