import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_posts extends StatelessWidget {
  const list_posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:10),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 10,
                  color: Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        children: [
                          Text("Zing MP3"),
                          SizedBox(height: 10),
                          Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Zing MP3 công bố 10 nghệ sĩ và ca khúc xuất sắc của Vpop năm 2022",maxLines: 4,textScaleFactor: 1.5,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(

                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    'assets/images/list_post1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(Icons.favorite,color: Colors.purple,),
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
                    Text('1.1K'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 2,
                  color: Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_outline,),
                          SizedBox(width: 5,),
                          Text("Thích"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.mode_comment_outlined),
                          SizedBox(width: 5,),
                          Text("Bình luận"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text("Chia sẻ"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),

          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 10,
                  color: Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        children: [
                          Text("Zing MP3"),
                          SizedBox(height: 10),
                          Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Học tiếng Anh qua bài hát với 20 ca khúc tiếng Anh hay nhất mọi thời đại!",maxLines: 4,textScaleFactor: 1.5,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(

                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    'assets/images/list_post2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(Icons.favorite,color: Colors.purple,),
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
                    Text('1.1K'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 2,
                  color: Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_outline,),
                          SizedBox(width: 5,),
                          Text("Thích"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.mode_comment_outlined),
                          SizedBox(width: 5,),
                          Text("Bình luận"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text("Chia sẻ"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),

          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 10,
                  color: Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        children: [
                          Text("Zing MP3"),
                          SizedBox(height: 10),
                          Text("Đề xuất cho bạn",style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Cơ hội xuất hiện trên Zing MP3 khi cover bài hát của thần tượng",maxLines: 4,textScaleFactor: 1.5,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(

                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    'assets/images/list_post3.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(Icons.favorite,color: Colors.purple,),
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
                    Text('1.1K'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 2,
                  color: Color.fromRGBO(90, 90, 90, 0.1),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_outline,),
                          SizedBox(width: 5,),
                          Text("Thích"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.mode_comment_outlined),
                          SizedBox(width: 5,),
                          Text("Bình luận"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text("Chia sẻ"),
                        ],
                      ),
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
