import 'package:flutter/material.dart';
import 'package:zing_app/page/radio/components/category_radio.dart';
import 'package:zing_app/page/search.dart';

class radio_page extends StatelessWidget {
  const radio_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB( 0, 40, 0, 0),
        child: Column(
          children:const [
            search(),
            category_radio(),
          ],
        ),
      ),
    );
  }
}

