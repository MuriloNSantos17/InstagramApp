import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Instagram", style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontFamily: 'Billabong'
        ),),
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            onTap: (){},
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
            onTap: (){},
          ),
        ],
      ),
      body: Column(
        children: [
          Text("Olá"),
        ]

      ),
    );
  }
}
