

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../module/tabmodule.dart';
class CustomSearchDelegate extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(

        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    final provider = Provider.of<boat_module>(context ,listen: true);
    for (var fruit in provider.suggestions) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        provider.suggestions.add(fruit);
      }
    }
    return Center(child: Text(query));
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    // List matchQuery = [];
     final provider = Provider.of<boat_module>(context ,listen: true);

    // for (var fruit in provider.suggestions) {
    //   if (fruit.toLowerCase().contains(query.toLowerCase())) {
    //     matchQuery.add(fruit);
    //   }
    // }
    return ListView.builder(
      itemCount: provider.list.length,
      itemBuilder: (context, index) {
        var result = provider.list[index][0];
        return ListTile(
          onTap:    () {
            query = result ;
          },
          title: Text(result),
        );
      },
    );
  }
}
