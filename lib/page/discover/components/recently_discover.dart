import 'package:flutter/material.dart';

class recently_discover extends StatelessWidget {
  const recently_discover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB( 16, 20, 16, 0),
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    height: 100.0,
                    width: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
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
          ),

          const SizedBox(width: 20,),
          Container(
            child: Column(
              children: [
                Container(
                    height: 100.0,
                    width: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
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
          ),
        ],
      ),
    );
  }
}