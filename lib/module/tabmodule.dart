import 'package:flutter/foundation.dart';

class boat_module with ChangeNotifier {
  List list = [
    ["Sultan Boat", "assets/boat.jpg"],
    ["York Boat", 'assets/boat1.jpg'],
    ["Havana Boat", 'assets/boat2.jpg'],
    ["Shah Boat", 'assets/boat3.jpg'],
    ["Nouman Boat", 'assets/boat4.jpg'],
    ["Ali Boat", 'assets/boat.jpg'],
    ["Sea Boat", 'assets/boat1.jpg'],
    ["Cizean Boat", 'assets/boat3.jpg'],
    ["Atlanta Boat", 'assets/boat2.jpg'],
    ["Mughal's Boat", 'assets/boat1.jpg'],
    ["Own Boat", 'assets/boat.jpg'],
    ["Mirza's Boat", 'assets/boat4.jpg'],
    ["Sultan Boat", 'assets/boat1.jpg'],
  ];

  List suggestions = [
    "Sultan Boat",
    "York Boat",
    "Havana Boat",
    "Shah Boat",
    "Nouman Boat",
    "Ali Boat",
    "Sea Boat",
    "Cizean Boat",
    "Atlanta Boat",
    "Mughal's Boat",
    "Own Boat",
    "Mirza's Boat",
    "Mirza's Boat",
  ];

  List favrote = [];

  get favrotelist => favrote;


  void addfavrt(int index){
    favrote.add(list[index][0]);
    notifyListeners();
  }
  void removefavrt(int index){
    favrote.remove(favrote[index].toString());
    notifyListeners();
  }
}
