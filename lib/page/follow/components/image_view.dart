import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatefulWidget {
  final dynamic pictures;
  final int initialIndex;

  const ImageView({
    Key? key,
    required this.pictures,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  late int _currentIndex;
  late List<String> pictureList;
  late PageController _pageController;
  double _dragStart = 0;

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
    _pageController = PageController(initialPage: widget.initialIndex);
    if (pictureList.length <= 1) {
      _pageController = PageController(initialPage: 0);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _handleDragStart(DragStartDetails details) {
    _dragStart = details.globalPosition.dx;
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    double delta = details.globalPosition.dx - _dragStart;
    double sensitivity = 1.0;
    if (delta > sensitivity && _currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _pageController.animateToPage(_currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      _dragStart = details.globalPosition.dx;
    } else if (delta < -sensitivity && _currentIndex < pictureList.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _pageController.animateToPage(_currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      _dragStart = details.globalPosition.dx;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GestureDetector(
        onHorizontalDragStart: _handleDragStart,
        onHorizontalDragUpdate: _handleDragUpdate,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: PageView.builder(
            itemCount: pictureList.length,
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                child: PhotoView(
                  imageProvider: NetworkImage(pictureList[index]),
                  loadingBuilder: (context, event) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Text('Error loading image.'),
                  ),
                ),
              );
            },
            physics: const ClampingScrollPhysics(), // disables bouncing
            pageSnapping: true, // snap to page on release
          ),
        ),
      ),
    );
  }
}
