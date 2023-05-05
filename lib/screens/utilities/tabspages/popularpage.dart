import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:provider/provider.dart';

import '../../../module/tabmodule.dart';
import '../popdesign.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();
}
class _PopularPageState extends State<PopularPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<boat_module>(
      builder: (context, value, child) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: value.list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: PopImage(
                favrtlist: (){
                 setState(() {
                   if(value.favrote.contains(value.suggestions[index].toString())) {

                     value.removefavrt(value.favrote[index]);
                   }
                   else
                   {
                     value.addfavrt(index);
                   }
                   print(value.favrote);
                 });
                  },
                  boat_name: value.list[index][0],
                  image: value.list[index][1]),
            );
          },
        );
      },
    );
  }
}
