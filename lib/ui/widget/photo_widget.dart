import 'package:flutter/material.dart';

import '../../model/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(photo.previewUrl),
        ),
      ),
    );
  }
}
