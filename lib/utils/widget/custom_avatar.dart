import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';
import '../../constrants/app_logo.dart';

class CustomAvatar extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? boderColor;
  final GestureTapCallback? ontap;

  final String? imageUrl;
  final bool isEdit;
  const CustomAvatar({
    Key? key,
    this.height,
    this.width,
    this.boderColor,
    this.borderRadius,
    this.ontap,
    this.isEdit = false,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: borderRadius != null
              ? null
              : Border.all(
                  width: 1,
                  color: boderColor ?? AppColor.primaryColor,
                ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius ?? 10000),
              child: imageUrl == null || imageUrl == ''
                  ? Image.asset(
                      AppImage.defaultProfile,
                      fit: BoxFit.cover,
                      height: height,
                      width: width,
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl!,
                      fadeInCurve: Curves.easeIn,
                      height: height,
                      width: width,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Image.asset(
                        AppImage.defaultProfile,
                        fit: BoxFit.cover,
                        height: height,
                        width: width,
                      ),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                    ),
            ),
            if (isEdit)
              Positioned(
                right: 5,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primaryColor,
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
