import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.7,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    "@ronaldinho and more 10000 likes",
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
                    SizedBox(
                      width: 10,
                    ),
                    Text('Add a comment....', style:
                    TextStyle(
                      color: Colors.grey,
                    ),),
                    Spacer(),
                    Text('🤣🥰🦖', style:
                    TextStyle(
                      color: Colors.grey,
                    ),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
