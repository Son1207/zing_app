import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatefulWidget {
  final dynamic pictures;
  final int initialIndex;

  ImageView({required this.pictures, this.initialIndex = 0});

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  late int _currentIndex;
  late List<String> pictureList;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    if (widget.pictures is String) {
      pictureList = [widget.pictures];
    } else if (widget.pictures is List<String>) {
      pictureList = List<String>.from(widget.pictures);
    } else {
      pictureList = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.close, size: 30,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        child: PageView.builder(
          itemCount: pictureList.length,
          controller: PageController(initialPage: widget.initialIndex),
          scrollDirection: Axis.horizontal, // Vuốt sang 2 bên
          onPageChanged: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return PhotoView(
              imageProvider: NetworkImage(pictureList[index]),
              loadingBuilder: (context, event) => Center(
                child: CircularProgressIndicator(),
              ),
              errorBuilder: (context, error, stackTrace) => Center(
                child: Text('Error loading image.'),
              ),
            );
          },
        ),
      ),
    );
  }
}
