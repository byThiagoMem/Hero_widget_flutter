import 'package:flutter/material.dart';
import 'package:hero/constants/images.dart';

class PhotoPage extends StatelessWidget {
  final int index;
  const PhotoPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Hero(
              tag: 'image$index',
              child: Image.network(
                Images.images[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
