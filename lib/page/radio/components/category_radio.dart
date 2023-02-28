import 'package:flutter/material.dart';

class category_radio extends StatelessWidget {
  const category_radio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/images/rapviet.jpeg',
                      fit: BoxFit.cover,
                    ),

                  ),

                ),
                Container(
                  height: 20.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child: Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/images/kpop.jpg',
                      fit: BoxFit.cover,
                    ),

                  ),

                ),
                Container(
                  height: 20.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child: Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/images/nhac_moi_ngay.jpeg',
                      fit: BoxFit.cover,
                    ),

                  ),

                ),
                Container(
                  height: 20.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child: Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/images/bolero.jpeg',
                      fit: BoxFit.cover,
                    ),

                  ),

                ),
                Container(
                  height: 20.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child: Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/images/us_uk.jpeg',
                      fit: BoxFit.cover,
                    ),

                  ),

                ),
                Container(
                  height: 20.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child: Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}