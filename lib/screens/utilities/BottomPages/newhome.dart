import 'package:boatapp/Allcolor.dart';
import 'package:boatapp/screens/pages/login_screen.dart';
import 'package:boatapp/screens/utilities/tabspages/popularpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../pages/signin_screen.dart';
import '../tabspages/search.dart';
import '../widgets.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  List list = ["Popular", "Discover", "Domestic", "Explore"];
  List _bottom = [
    PopularPage(),
    Center(
      child: Text("person"),
    ),
    Center(
      child: Text("person"),
    ),
    Center(
      child: Text("person"),
    ),
  ];
  bool col = false;

  void toggle() {
    setState(() {
      col = !col;
    });
  }

  void back() {
    setState(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: IconButton(
                  onPressed: () {
                    // setState(() {
                    //   Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => LoginScreen(),
                    //       ));
                    // });
                    setState(() {
                      opendialogue(
                          () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              )),
                          context);
                    });
                  },
                  icon: Icon(
                    Icons.login_outlined,
                  )),
            )
          ],
          automaticallyImplyLeading: false,
          title: const Text("Boat App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15)),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          onTap: () {
                            showSearch(
                                context: context, delegate: CustomSearchDelegate());
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 20,
                              ),
                              border: InputBorder.none,
                              hintText: 'Search for boats in your area',
                              disabledBorder: InputBorder.none),
                        )),
                  ),
                  SvgPicture.asset('icons/filter.svg',width: 30,)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 30,
                child: TabBar(
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    indicator: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(10)),
                    tabs: [
                      for (final tab in list) Tab(text: tab),
                    ]),
              ),
              Expanded(
                  child: TabBarView(children: [
                for (final tabs in _bottom)
                  Tab(
                    child:
                        Padding(padding: EdgeInsets.only(top: 15 , left: 20 , right: 20), child: tabs),
                  )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
