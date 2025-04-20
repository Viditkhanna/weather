import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.url,
    required this.altIconSize,
  });

  final String url;
  final double altIconSize;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (_, _) => Icon(Icons.image, size: altIconSize),
      errorWidget:
          (_, _, _) => Icon(Icons.broken_image_outlined, size: altIconSize),
    );
  }
}
