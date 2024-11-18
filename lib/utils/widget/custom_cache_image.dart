import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../../constrants/app_logo.dart';

class CustomCacheImage extends StatelessWidget {
  const CustomCacheImage({
    super.key,
    this.imgUrl,
  });
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return imgUrl == null || imgUrl == ''
        ? Image.asset(
            AppImage.defaultImage,
            fit: BoxFit.cover,
          )
        : CachedNetworkImage(
            imageUrl: imgUrl!,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: CircularProgressIndicator(
                color: AppColor.primaryColor,
                value: downloadProgress.progress,
              ),
            ),
          );
  }
}
