import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Comment_Posts extends StatefulWidget {
  static String routeName="/comments";

  const Comment_Posts({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<Comment_Posts> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Quốc Thiên',
      'pic': 'assets/images/avatar_comment1.jpeg',
      'message': ':)',
      'date': '2023-21-03 09:15:34'
    },
    {
      'name': 'Thanh Thanh',
      'pic': 'https://xsgames.co/randomusers/avatar.php?g=female',
      'message': 'Ngon lành!',
      'date': '2023-02-03 18:56:11'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://xsgames.co/randomusers/avatar.php?g=male',
      'message': 'Very Good',
      'date': '2023-17-01 20:43:14'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const  BoxDecoration(
                      color: Colors.blue,
                      borderRadius:  BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: const TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bình luận"),
        backgroundColor: Colors.redAccent,
      ),
      body: CommentBox(
        userImage: CommentBox.commentImageParser(
            imageURLorPath: "assets/images/avatar_comment.jpeg"),
        labelText: 'Nhập bình luận...',
        errorText: 'Bình luận không được để trống',
        withBorder: false,
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            print(commentController.text);
            setState(() {
              var value = {
                'name': 'Hoài Sơn',
                'pic':'assets/images/avatar_comment.jpeg',
                'message': commentController.text,
                'date': 'Vừa xong'
              };
              filedata.insert(0, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          } else {
            print("Không hợp lệ");
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: Colors.blue.shade100,
        textColor: Colors.black,
        sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.black),
        child: commentChild(filedata),
      ),
    );
  }
}