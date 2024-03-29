import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: ImageSlideshow(
          width: double.infinity,
          height: 200,
          initialPage: 0,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,
          children: [
            Image.asset(
              'assets/images/slide_show_1.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/slide_show_2.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/slide_show_3.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/slide_show_4.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/slide_show_5.jpeg',
              fit: BoxFit.cover,
            ),Image.asset(
              'assets/images/slide_show_6.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/slide_show_7.jpeg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),

    );
  }
}