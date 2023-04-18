import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImageView extends StatelessWidget {
  final List<dynamic> pictures;
  final int initialIndex;

  const ImageView({Key? key, required this.pictures, this.initialIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
          leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              }
          )
      ),
      body: PhotoViewGallery.builder(
        itemCount: pictures.length,
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(pictures[index]),
            initialScale: PhotoViewComputedScale.contained,
            minScale: PhotoViewComputedScale.contained * 0.8,
            maxScale: PhotoViewComputedScale.covered * 2,
            heroAttributes: PhotoViewHeroAttributes(tag: pictures[index]),
          );
        },
        scrollPhysics: const BouncingScrollPhysics(),
        loadingBuilder: (context, event) => const Center(
          child: CircularProgressIndicator(),
        ),
        pageController: PageController(initialPage: initialIndex),
      ),
    );
  }
}
