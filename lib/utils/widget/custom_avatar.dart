import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../constrants/app_logo.dart';
import '../../constrants/app_color.dart';
import 'custom_loading.dart';

class CustomAvatar extends StatelessWidget {
  final String? image;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool? noneborderRadius;
  final bool? boxContain;
  final bool? noneborder;
  final Color? colorBorder;
  final double borderWidth;
  final bool defaultProfile;
  final GestureTapCallback? ontap;

  const CustomAvatar({
    super.key,
    this.image,
    this.noneborder = false,
    this.boxContain = false,
    this.width,
    this.borderWidth = 0.5,
    this.height,
    this.colorBorder,
    this.borderRadius,
    this.defaultProfile = false,
    this.noneborderRadius,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: noneborderRadius == true
              ? BorderRadius.circular(0)
              : BorderRadius.circular(borderRadius ?? 10),
          border: noneborder != false
              ? Border.all(
                  width: borderWidth,
                  color: Colors.transparent,
                )
              : Border.all(
                  width: borderWidth,
                  color: colorBorder ?? AppColor.primaryColor,
                ),
        ),
        height: height ?? 100,
        width: width ?? 100,
        child: image != null &&
                image != "" &&
                image!.contains("/private/") == false
            ? ClipRRect(
                borderRadius: noneborderRadius == true
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(borderRadius ?? 10),
                child: CachedNetworkImage(
                    imageUrl: image!,
                    fit: boxContain == false ? BoxFit.cover : BoxFit.contain,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            const CustomLoading(),
                    errorListener: (error) {
                      // print("=> $error");
                    },
                    errorWidget: (context, url, error) {
                      return ClipRRect(
                        borderRadius: noneborderRadius == true
                            ? BorderRadius.circular(0)
                            : BorderRadius.circular(borderRadius ?? 10),
                        child: Image.asset(
                          defaultProfile
                              ? AppImage.defaultProfile
                              : AppImage.defaultImage,
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
              )
            : ClipRRect(
                borderRadius: noneborderRadius == true
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(borderRadius ?? 10),
                child: Image.asset(
                  defaultProfile
                      ? AppImage.defaultProfile
                      : AppImage.defaultImage,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
