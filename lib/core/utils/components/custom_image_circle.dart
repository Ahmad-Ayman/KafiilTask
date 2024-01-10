import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../helpers/app_color.dart';
import '../helpers/assetsManager.dart';

class CustomImageCircle extends StatelessWidget {
  const CustomImageCircle({Key? key, required this.imageLink})
      : super(key: key);
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83 + 20, // container width + circle radius
      height: 83,
      child: Stack(
        children: [
          Container(
              width: 83,
              height: 83,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.mainColor, width: 1),
                  shape: BoxShape.circle),
              child: CachedNetworkImage(
                imageUrl: imageLink,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: Container(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
                ),
                errorWidget: (context, url, error) => AspectRatio(
                  aspectRatio: 2 / 3,
                  child: Image.asset(
                    AssetsManager.noImageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            right: 10,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColor.mainColor,
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
