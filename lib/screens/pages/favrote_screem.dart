import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../module/tabmodule.dart';

class FavroteScreen extends StatefulWidget {
  const FavroteScreen({Key? key}) : super(key: key);

  @override
  State<FavroteScreen> createState() => _FavroteScreenState();
}

class _FavroteScreenState extends State<FavroteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Favrotes"),
        centerTitle: true,
      ),
      body: Consumer<boat_module>(
        builder: (context, value, child) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: value.favrote.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  minVerticalPadding: 10,
                  enabled: true,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.5,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  trailing: InkWell(
                    onTap: () {
                      value.removefavrt(index);
                    },
                    child: Icon(Icons.delete),
                  ),
                  leading: Icon(Icons.person),
                  title: Text(value.favrote[index], style: TextStyle(fontWeight: FontWeight.w700),),
                  subtitle: const Text(
                      'hey i like this post for you thanks for sharing this awesome view '),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
