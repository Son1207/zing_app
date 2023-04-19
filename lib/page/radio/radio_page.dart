import 'package:flutter/material.dart';
import 'package:zing_app/page/radio/components/category_radio.dart';
import 'package:zing_app/page/search.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB( 0, 10, 0, 0),
        child: Column(
          children:const [
            Search(),
            CategoryRadio(),
          ],
        ),
      ),
    );
  }
}

