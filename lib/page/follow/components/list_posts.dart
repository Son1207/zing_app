import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListPosts extends StatefulWidget {
  const ListPosts({Key? key}) : super(key: key);
  @override
  ListPostsState createState() => ListPostsState();
}
class ListPostsState extends State<ListPosts> {
  List<dynamic> data = [];

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
      "number_of_record": "30",
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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          var avatarnguoidang = data[index]['avatar_nguoi_dang'];
          var thumbnail = data[index]['thumbnail'];
          var mota = data[index]['mo_ta'] as String?;
          var nguoidang =data[index]['nguoi_dang'];
          var tongsoluotlike = data[index]['tong_so_luot_like']as int?;
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                  padding: const EdgeInsets.fromLTRB( 16, 10, 16, 0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        child: Image.network(
                          avatarnguoidang,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: 60.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(nguoidang),
                            const SizedBox(height: 10),
                            const Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB( 16, 10, 16, 0),
                  child: Text(mota ?? '',maxLines: 6,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.network(thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
                  child: Row(
                    children: [
                      const Icon(Icons.favorite,color: Colors.purple,),

                      Text(tongsoluotlike?.toString() ?? ''),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB( 16, 10, 16, 0),
                  child: Container(
                    height: 2,
                    color: const Color.fromRGBO(90, 90, 90, 0.1),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB( 0, 10, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black, // text + icon color
                        ),
                        icon: Icon(_isIcon ? Icons.favorite_outline : Icons.favorite,
                            color: _isColor ? Colors.black : Colors.red),
                        label:const Text('Thích',),
                        onPressed: (){setState(() {
                          _isIcon =!_isIcon;
                          _isColor =!_isColor;
                        });},
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black, // text + icon color
                        ),
                        icon: const Icon(Icons.mode_comment_outlined),
                        label:const Text('Bình luận',),
                        onPressed: (){},
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black, // text + icon color
                        ),
                        icon:const Icon(Icons.share_outlined),
                        label:const Text('Chia sẻ',),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
          // return ListTile(
          //   leading: Image.network(thumbnail),
          //   title: Text(mota),
          // );
        },
      ),
    );
  }
}
