import 'package:demo1/data/models/gif_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class HomeGifTile extends StatelessWidget {
  const HomeGifTile({super.key, required this.gif});

  final GifModel gif;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(2),
      child: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CircularProgressIndicator(),
            CachedNetworkImage(
              imageUrl: gif.images!.original!.url!,

              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Colors.black.withOpacity(0.1),
                highlightColor: Colors.black.withOpacity(0.2),
                child: Image.network(url),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
