import 'package:flutter/material.dart';

// ignore: camel_case_types
class playlist_personal extends StatelessWidget {
  const playlist_personal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      height: 60.0,
                      width: 60.0,
                      'assets/images/rapviet.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Rap Việt"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Zing MP3",
                          style:
                              TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      height: 60.0,
                      width: 60.0,
                      'assets/images/listen_EDM_dinhcao.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Đỉnh Cao EDM"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Zing MP3",
                          style:
                              TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      height: 60.0,
                      width: 60.0,
                      'assets/images/listen_2010s_Pop.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("2010s Pop"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Zing MP3",
                          style:
                              TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      height: 60.0,
                      width: 60.0,
                      'assets/images/bolero.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Tuyển Tập Bolero"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Zing MP3",
                          style:
                              TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      height: 60.0,
                      width: 60.0,
                      'assets/images/listen_au_my.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Tuyển Tập Nhạc Phim Âu Mỹ"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Zing MP3",
                          style:
                              TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      height: 60.0,
                      width: 60.0,
                      'assets/images/nhac_moi_ngay.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Nhạc Hay Mỗi Ngày"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Zing MP3",
                          style:
                              TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
