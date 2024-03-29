import 'package:flutter/material.dart';

class CategoryRadio extends StatelessWidget {
  const CategoryRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
      child: SizedBox(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                  child: const Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                  child: const Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                  child: const Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                  child: const Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                  child: const Text("Live",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}