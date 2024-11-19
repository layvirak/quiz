import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class ViewProfileScreen extends StatefulWidget {
  final String? singleImage;
  int? currentIndex;
  final GestureTapCallback? ontap;
  final List<String>? multipleImageList;
  ViewProfileScreen({
    this.singleImage,
    this.multipleImageList,
    this.currentIndex,
    final Key? key,
    this.ontap,
  }) : super(
          key: key,
        );

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  var controller = PageController();
  bool isInit = true;

  @override
  Widget build(BuildContext context) {
    if (isInit && widget.singleImage == null) {
      controller = PageController(initialPage: widget.currentIndex!);
      isInit = false;
    }
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Hero(
                  tag: 'hero-custom-tween',
                  createRectTween: (Rect? begin, Rect? end) {
                    return MaterialRectCenterArcTween(
                      begin: begin,
                      end: end,
                    );
                  },
                  flightShuttleBuilder: (
                    BuildContext flightContext,
                    Animation<double> animation,
                    HeroFlightDirection flightDirection,
                    BuildContext fromHeroContext,
                    BuildContext toHeroContext,
                  ) {
                    return const RefreshProgressIndicator();
                  },
                  child: Stack(
                    children: [
                      widget.singleImage != null
                          ? Center(
                              child: PhotoView(
                                minScale:
                                    PhotoViewComputedScale.contained * 0.5,
                                maxScale: PhotoViewComputedScale.covered * 2.5,
                                imageProvider: NetworkImage(
                                  widget.singleImage!,
                                ),
                              ),
                            )
                          : PageView(
                              controller: controller,
                              onPageChanged: (index) {
                                widget.currentIndex = index;
                                setState(() {});
                              },
                              children: widget.multipleImageList!.map((e) {
                                return PhotoView(
                                  minScale:
                                      PhotoViewComputedScale.contained * 0.5,
                                  maxScale:
                                      PhotoViewComputedScale.covered * 2.5,
                                  imageProvider: NetworkImage(
                                    e,
                                  ),
                                );
                              }).toList(),
                            ),
                      Positioned(
                        bottom: 10,
                        top: 10,
                        left: 10,
                        right: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                                // const Spacer(),
                                // IconButton(
                                //   onPressed: () {
                                //     Injection.profileController.profileModel
                                //             .value.image ==
                                //         null;
                                //   },
                                //   icon: Icon(
                                //     Icons.delete,
                                //     color: AppColor.iconColor,
                                //   ),
                                // ),
                                if (widget.singleImage == null)
                                  Text(
                                    '${widget.currentIndex! + 1} of ${widget.multipleImageList!.length}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
