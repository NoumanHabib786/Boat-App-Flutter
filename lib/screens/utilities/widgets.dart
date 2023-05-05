import 'package:boatapp/screens/pages/homepage.dart';
import 'package:boatapp/screens/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

Container Button(var text, var image, var colors, bool iam, Function function) {
  return Container(
    width: double.infinity,
    height: 50,
    margin: EdgeInsets.all(15),
    child: ElevatedButton(
        onPressed: () => function(),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(10),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            textStyle: const MaterialStatePropertyAll(
                TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            backgroundColor: MaterialStatePropertyAll(colors)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iam ? Image.asset(image.toString(), width: 30) : Text(""),
            SizedBox(
              width: 5,
            ),
            Text(text.toString(),style: TextStyle(fontSize: 17),),
          ],
        )),
  );
}

TextFormField textFormField(var text, bool obs, Function funcobs, var icon,
    TextEditingController control, bool iam) {
  return TextFormField(
    controller: control,
    obscureText: obs,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        hintText: text,
        prefixIcon: Icon(icon),
        suffixIcon: InkWell(
            onTap: () => funcobs(),
            child: iam
                ? Icon(obs ? Icons.visibility_off : Icons.visibility)
                : Text("")),
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 1))),
  );
}

Container container_book(var book_name, int rating) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: Colors.grey.shade200,
          spreadRadius: 35,
          blurRadius: 35,
          offset: Offset(20, 0))
    ], color: Colors.white, borderRadius: BorderRadiusDirectional.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  book_name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "(Available by Seat)",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Book Now"))
          ],
        ),
        const Text(
          "SeaView ,Premium LifeStyle",
          style: TextStyle(fontSize: 14, color: Colors.black45),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingStars(
              valueLabelColor: Colors.black,
              valueLabelTextStyle: const TextStyle(
                fontSize: 10,
                  fontWeight: FontWeight.bold, color: Colors.white),
              valueLabelPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              starColor: Colors.blueAccent,
              value: rating.toDouble(),
              starOffColor: Colors.grey,
              valueLabelVisibility: true,
              onValueChanged: (value) {
                rating = value.toInt();
              },
              starBuilder: (index, color) {
                return Icon(
                  Icons.star,
                  color: color,
                );
              },
            ),
            Row(
              children: const [Icon(Icons.person), Text("18")],
            )
          ],
        )
      ],
    ),
  );
}

Future opendialogue(Function function , BuildContext context) =>
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        elevation: 40,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text("Do you want to Logout?"),
        titleTextStyle: TextStyle(fontSize: 20,color: Colors.black),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Cancel")),
          TextButton(onPressed: () => function(), child: Text("Logout")),
        ],
      );
    },);
