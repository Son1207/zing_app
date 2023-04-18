import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';
import 'package:zing_app/page/follow/components/comment_posts.dart';
import 'dart:convert';
import 'package:zing_app/page/follow/components/category_follow.dart';
import 'package:zing_app/page/follow/components/new_videos.dart';
import 'package:zing_app/page/follow/components/posts_layout.dart';
import 'package:zing_app/page/search.dart';

class FollowPage extends StatefulWidget {
  static String routeName = "/follow_page";
  const FollowPage({Key? key}) : super(key: key);
  @override
  FollowPageState createState() => FollowPageState();
}

// ignore: camel_case_types
class FollowPageState extends State<FollowPage> {
  List<dynamic> data = [];
  late VideoPlayerController _controller;

  bool _isColor = true;
  bool _isIcon = true;

  //lấy api từ server thông qua phương thức post
  @override
  void initState() {
    super.initState();
    getDataFromServer();
  }

  Future<void> getDataFromServer() async {
    final url = Uri.parse(
        'http://m-grac.bsp.vn:8002/api/grac-mobile-app/v1.0.1/getPostList');
    final response = await http.post(url, body: {
      "order_by": "DESC",
      "current_page": "1",
      "number_of_record": "5",
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
                    Search(),
                    CategoryFollow(),
                    NewVideos(),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  List<dynamic> pictures = data[index]['pictures'];
                  var avatarNguoiDang = data[index]['avatar_nguoi_dang'];
                  //var video_url = data[index]['video_url'];
                  var thumbnail = data[index]['thumbnail']as String?;
                  var moTa = data[index]['mo_ta'] as String?;
                  var tongSoLuotComment = data[index]['tong_so_luot_comment'];
                  var nguoiDang = data[index]['nguoi_dang'];
                  var tongSoLuotLike = data[index]['tong_so_luot_like'] as int?;
                  //final VideoPlayerController _controller =VideoPlayerController.network(video_url);

                  final likeCount = tongSoLuotLike != null ? tongSoLuotLike + 1 : 0;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              borderRadius: const BorderRadius.all(Radius.circular(80)),
                              child: Image.network(
                                avatarNguoiDang,
                                height: 50.0,
                                width: 50.0,
                                fit: BoxFit.cover,
                              ),
                              // :Image.asset(
                              //   'assets/images/zing_mp3.png', // ảnh mặc định
                              //   height: 50.0,
                              //   width: 50.0,
                              // ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(nguoiDang),
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
                          moTa ?? '',
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

                      //Xử lý Layout hiển thị hình ảnh trong bài Post
                      //từ 1 đến 5 ảnh
                      pictures.isEmpty
                          ? (thumbnail != null ? Image.network(thumbnail.toString()) : Container())
                          : PostsLayout(pictures: pictures),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.purple,
                                ),
                                Text(tongSoLuotLike?.toString() ?? ''),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(230, 20, 16, 0),
                            child: Row(
                              children: [
                                Text(tongSoLuotComment?.toString() ?? ''),
                                const SizedBox(width: 5,),
                                const Text('bình luận'),
                              ],
                            ),
                          ),
                        ],
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
                                  likeCount;
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
                                    context, CommentPosts.routeName);
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


