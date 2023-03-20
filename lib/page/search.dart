import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(234, 234, 234, 1.0),
              hintText: "Tìm kiếm bài hát, MV, playlist...",
              prefixIcon: const Icon(Icons.search),
              suffixIcon: const Icon(Icons.mic,color: Colors.blue,),
              ),
            ),

        ),
        GestureDetector(
          onTap: (){
          },
          child: Container(
            height: 50,
            width: 40,
            padding:const EdgeInsets.all(10),
            child:const Icon(Icons.notifications_none_outlined,size: 28,),
          ),
        )
      ],
    );

  }
}