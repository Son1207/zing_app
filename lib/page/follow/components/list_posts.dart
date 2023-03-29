import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/comment_posts.dart';

// ignore: camel_case_types
class list_posts extends StatefulWidget {
  const list_posts({Key? key}) : super(key: key);
  @override
  list_postsState createState() => list_postsState();
}
// ignore: camel_case_types
class list_postsState extends State<list_posts> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Column(
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
                      child: Image.asset(
                        height: 60.0,
                        width: 60.0,
                        'assets/images/zing_mp3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          Text("Zing MP3"),
                          SizedBox(height: 10),
                          Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB( 16, 10, 16, 0),
                child: Text(
                  "Zing MP3 công bố 10 nghệ sĩ và ca khúc xuất sắc của Vpop năm 2022",maxLines: 4,textScaleFactor: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/images/list_post1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
                child: Row(
                  children: [
                    const Icon(Icons.favorite,color: Colors.purple,),
                    Image.asset(
                      height: 20.0,
                      'assets/images/icon_smile.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      height: 20.0,
                      'assets/images/icon_wow.png',
                      fit: BoxFit.cover,
                    ),
                    const Text('1.1K'),
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
                      icon: const Icon(Icons.favorite_outline,),
                      label: const Text('Thích',),
                      onPressed: () {},
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, // text + icon color
                      ),
                      icon: const Icon(Icons.mode_comment_outlined),
                      label:const Text('Bình luận',),
                      onPressed: (){Navigator.pushNamed(context, Comment_Posts.routeName);},
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
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
                      borderRadius:const BorderRadius.all(Radius.circular(50)),
                      child: Image.asset(
                        height: 60.0,
                        width: 60.0,
                        'assets/images/zing_mp3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          Text("Zing MP3"),
                          SizedBox(height: 10),
                          Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB( 16, 10, 16, 0),
                child: Text(
                  "Học tiếng Anh qua bài hát với 20 ca khúc tiếng Anh hay nhất mọi thời đại!",maxLines: 4,textScaleFactor: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/images/list_post2.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
                child: Row(
                  children: [
                    const Icon(Icons.favorite,color: Colors.purple,),
                    Image.asset(
                      height: 20.0,
                      'assets/images/icon_smile.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      height: 20.0,
                      'assets/images/icon_wow.png',
                      fit: BoxFit.cover,
                    ),
                    const Text('1.1K'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 2,
                  color: const Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, // text + icon color
                      ),
                      icon: const Icon(Icons.favorite_outline,),
                      label: const Text('Thích',),
                      onPressed: () {},
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, // text + icon color
                      ),
                      icon: const Icon(Icons.mode_comment_outlined),
                      label:const Text('Bình luận',),
                      onPressed: (){Navigator.pushNamed(context, Comment_Posts.routeName);},
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
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
                      borderRadius:const BorderRadius.all(Radius.circular(50)),
                      child: Image.asset(
                        height: 60.0,
                        width: 60.0,
                        'assets/images/zing_mp3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          Text("Zing MP3"),
                          SizedBox(height: 10),
                          Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB( 16, 10, 16, 0),
                child: Text(
                  "Cơ hội xuất hiện trên Zing MP3 khi cover bài hát của thần tượng",maxLines: 4,textScaleFactor: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/images/list_post3.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
                child: Row(
                  children: [
                    const Icon(Icons.favorite,color: Colors.purple,),
                    Image.asset(
                      height: 20.0,
                      'assets/images/icon_smile.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      height: 20.0,
                      'assets/images/icon_wow.png',
                      fit: BoxFit.cover,
                    ),
                    const Text('1.1K'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 2,
                  color: const Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, // text + icon color
                      ),
                      icon: const Icon(Icons.favorite_outline,),
                      label: const Text('Thích',),
                      onPressed: () {},
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, // text + icon color
                      ),
                      icon: const Icon(Icons.mode_comment_outlined),
                      label:const Text('Bình luận',),
                      onPressed: (){Navigator.pushNamed(context, Comment_Posts.routeName);},
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
        ],
      )
    );
  }
}
