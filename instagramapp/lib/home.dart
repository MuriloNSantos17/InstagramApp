import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramapp/widgets/story.widget.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        children:  [
          const Story(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (_,index){
                  return ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: size.height * 0.7,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children:  [
                                CircleAvatar(
                                  backgroundColor: Colors.pink,
                                  radius: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Tirano Sauro",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.more_vert_outlined,
                                      size: 30,
                                    ),
                                ),

                              ],
                            ),
                          ),
                          Expanded(child:
                          Image.asset("assets/images/heineken.jpeg",
                              fit: BoxFit.fill
                          )),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    
                                    children: const [
                                      Icon(
                                        Icons.favorite_border,
                                        size:30,
                                      ),
                                       SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.mode_comment_outlined,
                                        size:30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.send_outlined,
                                        size:30,
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.bookmark_border,
                                        size:30,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "@ronaldinho 10000 likes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                  )),
                                  const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Tirano Sauro",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          )
                                        ),
                                        TextSpan(
                                            text: " Heineken é vida",
                                        )
                                      ]
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                       CircleAvatar(
                                         backgroundColor: Colors.pink,
                                         radius: 10,
                                       ),

                                    ],
                                  )
                                ],
                            ),
                          ),
                        ],
                      ),
                  );
                },
                separatorBuilder: (_,index){
                  return const SizedBox(height: 25,);
                },
                itemCount: 20),
          )
        ]

      ),
    );
  }
}
