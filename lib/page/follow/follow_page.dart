import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';
import 'package:zing_app/page/follow/components/comment_posts.dart';
import 'dart:convert';
import 'package:zing_app/page/follow/components/category_follow.dart';
import 'package:zing_app/page/follow/components/new_videos.dart';
import 'package:zing_app/page/search.dart';

// ignore: camel_case_types
class follow_page extends StatefulWidget {
  static String routeName = "/follow_page";
  const follow_page({Key? key}) : super(key: key);
  @override
  list_postsState createState() => list_postsState();
}

// ignore: camel_case_types
class list_postsState extends State<follow_page> {
  List<dynamic> data = [];
  late VideoPlayerController _controller;

  bool _isColor = true;
  bool _isIcon = true;

  @override
  void initState() {
    super.initState();
    getDataFromServer();
  }

  Future<void> getDataFromServer() async {
    final url = Uri.parse(
        'http://m-grac.bsp.vn:8002/api/grac-mobile-app/v1.0.1/getVideoPostList');
    final response = await http.post(url, body: {
      "order_by": "DESC",
      "current_page": "1",
      "number_of_record": "45",
      "secret_key": "{{secret_key}}"
    });

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      setState(() {
        data = responseData['data'];
      });
    } else {
      throw Exception('Failed to load data from server');
    }
  }

  @override
  void dispose() {
    super.dispose();
    // add this
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: getDataFromServer,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: const [
                    search(),
                    category_follow(),
                    new_videos(),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var avatarnguoidang = data[index]['avatar_nguoi_dang'];
                  var video_url = data[index]['video_url'];
                  var thumbnail = data[index]['thumbnail'as String?];
                  List<dynamic> pictures = data[index]['pictures'];

                  var mota = data[index]['mo_ta'] as String?;
                  var nguoidang = data[index]['nguoi_dang'];
                  var tongsoluotlike = data[index]['tong_so_luot_like'] as int?;
                  final VideoPlayerController _controller =
                      VideoPlayerController.network(video_url);

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Container(
                          height: 10,
                          color: const Color.fromRGBO(90, 90, 90, 0.1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                              child: Image.network(
                                avatarnguoidang,
                                height: 50.0,
                                width: 50.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(nguoidang),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Đề xuất cho bạn",
                                    style: TextStyle(
                                        color: Color.fromRGBO(90, 90, 90, 0.9)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                        child: Text(
                          mota ?? '',
                          maxLines: 6,
                        ),
                      ),

                      // FutureBuilder(
                      //   future: _controller.initialize(),
                      //   builder: (context, snapshot) {
                      //     if (snapshot.connectionState == ConnectionState.done) {
                      //       return AspectRatio(
                      //         aspectRatio: _controller.value.aspectRatio,
                      //         child: VideoPlayer(_controller),
                      //       );
                      //     } else {
                      //       return Center(child: CircularProgressIndicator());
                      //     }
                      //   },
                      // ),
                      pictures.isEmpty
                          ? (thumbnail != null ? Image.network(thumbnail.toString()) : Container())
                          : Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: pictures.length == 1
                            ? SizedBox(
                          child: Image.network(
                            pictures[0],
                            fit: BoxFit.cover,
                          ),
                        )
                            : pictures.length == 2
                            ? Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Image.network(
                                  pictures[0],
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.network(
                                  pictures[1],
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        )
                            : SizedBox(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: pictures.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.network(
                                  pictures[index],
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              color: Colors.purple,
                            ),
                            Text(tongsoluotlike?.toString() ?? ''),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                        child: Container(
                          height: 2,
                          color: const Color.fromRGBO(90, 90, 90, 0.1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.black, // text + icon color
                              ),
                              icon: Icon(
                                  _isIcon
                                      ? Icons.favorite_outline
                                      : Icons.favorite,
                                  color: _isColor ? Colors.black : Colors.red),
                              label: const Text(
                                'Thích',
                              ),
                              onPressed: () {
                                setState(() {
                                  _isIcon = !_isIcon;
                                  _isColor = !_isColor;
                                });
                              },
                            ),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.black, // text + icon color
                              ),
                              icon: const Icon(Icons.mode_comment_outlined),
                              label: const Text(
                                'Bình luận',
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Comment_Posts.routeName);
                              },
                            ),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.black, // text + icon color
                              ),
                              icon: const Icon(Icons.share_outlined),
                              label: const Text(
                                'Chia sẻ',
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                childCount: data.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
