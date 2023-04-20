import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zing_app/page/follow/components/article_description.dart';
import 'package:zing_app/page/follow/components/comment_posts.dart';
import 'dart:convert';
import 'package:zing_app/page/follow/components/category_follow.dart';
import 'package:zing_app/page/follow/components/new_videos.dart';
import 'package:zing_app/page/follow/components/post_video.dart';
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
      "number_of_record": "7",
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: getDataFromServer,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                  var videoUrl = data[index]['video_url'];
                  var thumbnail = data[index]['thumbnail'] as String?;
                  var moTa = data[index]['mo_ta'] as String?;
                  var tongSoLuotComment = data[index]['tong_so_luot_comment'];
                  var nguoiDang = data[index]['nguoi_dang'];
                  var tongSoLuotLike = data[index]['tong_so_luot_like'] as int?;
                  var ngayDang = data[index]['ngay_dang'];

                  final likeCount =
                      tongSoLuotLike != null ? tongSoLuotLike + 1 : 0;
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
                                  const BorderRadius.all(Radius.circular(80)),
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
                                  Row(
                                    children: [
                                      Text(nguoiDang),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: CircleAvatar(
                                          radius: 2,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text('Quan tâm',style: TextStyle(
                                            color: Colors.purple,
                                        fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(ngayDang,
                                      style: const TextStyle(
                                          color: Color.fromRGBO(90, 90, 90, 0.9)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //mô tả của bài Post
                      ArticleDescription(moTa: moTa),

                      //Xử lý Layout hiển thị hình ảnh trong bài Post
                      //từ 1 đến 5 ảnh
                      pictures.isEmpty
                          ? (thumbnail != null
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PostVideo(videoUrl: videoUrl),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Image.network(thumbnail.toString()),
                                      const Positioned.fill(
                                        child: Icon(
                                          Icons.play_arrow_sharp,
                                          color: Colors.white,
                                          size: 70.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container())
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
                                const SizedBox(
                                  width: 5,
                                ),
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
