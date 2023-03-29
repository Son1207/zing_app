import 'package:flutter/material.dart';

// ignore: camel_case_types
class recently_personal extends StatelessWidget {
  const recently_personal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child:Image.asset(
                      'assets/images/recently.jpeg',
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              const SizedBox(height: 10,),
              const Text("Bài hát nghe"),
              const Text("gần đây"),
            ],
          ),

          const SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child:Image.asset(
                      'assets/images/zingchart.jpeg',
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              const SizedBox(height: 10,),
              const Text("#zingchart"),
              const Text(""),
            ],
          ),

          const SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child:Image.asset(
                      'assets/images/slide_show_2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              const SizedBox(height: 10,),
              const Text("Những Bài"),
              const Text("Hát Hay..."),
            ],
          ),
        ],
      ),
    );
  }
}