import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/list_news_video.dart';

class new_videos extends StatelessWidget {
  const new_videos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB( 0, 20, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: 10,
              color: Color.fromRGBO(90, 90, 90, 0.1),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB( 8, 0, 0, 0),
                  child: TextButton(
                    onPressed: (){Navigator.pushNamed(context, List_News_Video.routeName);},
                    child: Container(
                      height: 160.0,
                      width: 100.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child:Image.asset(
                          'assets/images/new.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextButton(
                    onPressed: (){Navigator.pushNamed(context, List_News_Video.routeName);},
                    child: Container(
                      height: 160.0,
                      width: 100.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child:Image.asset(
                          'assets/images/new1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextButton(
                    onPressed: (){Navigator.pushNamed(context, List_News_Video.routeName);},
                    child: Container(
                      height: 160.0,
                      width: 100.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child:Image.asset(
                          'assets/images/new2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                TextButton(
                  onPressed: (){Navigator.pushNamed(context, List_News_Video.routeName);},
                  child: Container(
                    height: 160.0,
                    width: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child:Image.asset(
                        'assets/images/new3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )

        ],
      )

    );
  }
}