import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:zing_app/page/detail_account.dart';
import 'package:zing_app/page/detail_notification.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 2, 0, 2, 0),
      child: Row(
        children: [
          TextButton(
            onPressed: (){Navigator.pushNamed(context, Detail_Account.routeName);},
            child: Container(
              height: 40.0,
              width: 40.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child:Image.asset(
                  'assets/images/avatar_comment.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(234, 234, 234, 1.0),
                    hintText: "Tìm kiếm bài hát, MV, playlist...",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic,color: Colors.blue,),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: (){Navigator.pushNamed(context, detail_notification.routeName);},
              icon: Icon(Icons.notifications_none_outlined,size: 30,),
          )
        ],
      ),
    );

  }
}