import 'package:boatapp/screens/utilities/tabspages/bookpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:provider/provider.dart';

import '../../module/tabmodule.dart';

class PopImage extends StatefulWidget {
  final image;
  final String boat_name;
  Function favrtlist;

  PopImage(
      {Key? key, this.image, required this.boat_name, required this.favrtlist})
      : super(key: key);

  @override
  State<PopImage> createState() => _PopImageState();
}

class _PopImageState extends State<PopImage> {
  int rating = 0;
  bool favrt = true;

  @override
  Widget build(BuildContext context) {
    String imagepath = widget.image;
    final pro = Provider.of<boat_module>(context);
    void favrt_toggle() {
      setState(() {
        if (favrt) {
          widget.favrtlist();
          favrt = false;
        } else {
          favrt = true;
        }
      });
    }

    String boat_book_name = widget.boat_name;
    void herotap() {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  BookPage(image_tag: imagepath, book_name: boat_book_name),
            ));
      });
    }

    return Stack(
      children: [
        InkWell(
          onTap: () => herotap(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
                tag: imagepath,
                child: Image.asset(
                  width: double.infinity,
                  imagepath,
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 1.3, top: 10),
          child: InkWell(
            onTap: () => setState(() {
              widget.favrtlist();
            }),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black45,
              child: Icon(
                favrt ? Icons.favorite_border_outlined : Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 200),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        boat_book_name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "(Available by Seat)",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () => herotap(), child: const Text("Book Now"))
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RatingStars(
                    starColor: Colors.blueAccent,
                    value: rating.toDouble(),
                    starOffColor: Colors.grey,
                    valueLabelVisibility: true,
                    onValueChanged: (value) {
                      setState(() {
                        rating = value.toInt();
                      });
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
        ),
      ],
    );
  }
}
