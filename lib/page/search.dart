import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black,height: 1.0,),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(234, 234, 234, 1.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide.none,
        ),
        hintText: "Tìm kiếm bài hát, MV, playlist...",
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.mic,color: Colors.blue,),
      ),

    );
  }
}