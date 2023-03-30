import 'package:flutter/material.dart';

// ignore: camel_case_types
class listen_discover extends StatelessWidget {
  const listen_discover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
      child: SizedBox(
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/listen_2010sEDM.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("2010s EDM"),
                const Text(""),
              ],
            ),

            const SizedBox(width: 20,),
            Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/listen_avatar.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Nhạc Phim Âu Mỹ Mới"),
                const Text("Nhất"),
              ],
            ),

            const SizedBox(width: 20,),
            Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/listen_2010sBallad.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("2010s Ballad"),
                const Text(""),
              ],
            ),

            const SizedBox(width: 20,),
            Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/listen_EDM_dinhcao.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Đỉnh Cao EDM"),
                const Text(""),
              ],
            ),

            const SizedBox(width: 20,),
            Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/listen_2010s_Pop.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("2010s Pop"),
                const Text(""),
              ],
            ),

            const SizedBox(width: 20,),
            Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/listen_au_my.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Nhạc Phim Âu Mỹ"),
                const Text("Chọn Lọc"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}