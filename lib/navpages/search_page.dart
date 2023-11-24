import 'package:flutter/cupertino.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sản phẩm all'),
          centerTitle: true,
          actions: [
            Icon(Icons.shopping_bag_outlined),
            SizedBox(width: 20),

          ],
        ),
    );
  }

}

