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
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            child: const Icon(
              Icons.maps_ugc_outlined,
              size: 30,
            ),
            onTap: (){},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: .3,
                  color: Colors.white,
                )
              )
            ),
            child: ListView.separated(
              itemCount: 12,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,index){
                  return Column(
                    children: [
                      Container(
                        width:60,
                        height: 60,
                        margin: const EdgeInsets.only(top: 7),
                        decoration: BoxDecoration(
                          color: index ==0 ? Colors.grey : null,
                          gradient:  index!=0 ? const LinearGradient(
                               colors: [
                                Color.fromRGBO(250, 126, 30, 1),
                                Color.fromRGBO(214, 41, 118,1)
                              ]): null,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Text('Ronaldo'),
                    ],
                  );
              }, separatorBuilder: (_,index){
                return SizedBox(width: 10,);
            },
            ),
          )
        ]

      ),
    );
  }
}
