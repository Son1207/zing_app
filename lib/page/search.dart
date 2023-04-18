import 'package:flutter/material.dart';
import 'package:zing_app/page/detail_account.dart';
import 'package:zing_app/page/detail_notification.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 2, 0, 2, 0),
      child: Row(
        children: [
          TextButton(
            onPressed: (){Navigator.pushNamed(context, DetailAccount.routeName);},
            child: SizedBox(
              height: 40.0,
              width: 40.0,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
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
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic,color: Colors.blue,),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: (){Navigator.pushNamed(context, DetailNotification.routeName);},
              icon: const Icon(Icons.notifications_none_outlined,size: 30,),
          )
        ],
      ),
    );

  }
}