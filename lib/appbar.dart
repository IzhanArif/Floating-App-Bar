import 'package:flutter/material.dart';

class FloatingAppBarrr extends StatefulWidget {
  const FloatingAppBarrr({Key? key}) : super(key: key);

  @override
  State<FloatingAppBarrr> createState() => _FloatingAppBarrrState();
}

class _FloatingAppBarrrState extends State<FloatingAppBarrr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "APP BAR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.search),
            title: Text("Search Items"),
            floating: true,
            elevation: 30,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                        title: Text("Item $index"),
                      ),
                  childCount: 100))
        ],
      ),
    );
  }
}
