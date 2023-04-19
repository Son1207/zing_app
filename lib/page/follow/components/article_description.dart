import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ArticleDescription extends StatelessWidget {
  final String? moTa;

  const ArticleDescription({Key? key, this.moTa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: ExpandableText(
        moTa ?? '',
        expandText: 'Xem thêm',
        maxLines: 3,
        linkColor: Colors.grey,
      ),
    );
  }
}
