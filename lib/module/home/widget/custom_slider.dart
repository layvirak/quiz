import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constrants/app_color.dart';
import '../../../utils/widget/custom_cache_image.dart';

class CustomSlider extends StatefulWidget {
  final double? size;
  final double? indicatorRadious;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final List<String> sliderList;
  const CustomSlider({
    Key? key,
    this.size,
    this.indicatorRadious,
    this.height,
    this.margin,
    required this.sliderList,
  }) : super(key: key);

  @override
  CustomSliderState createState() => CustomSliderState();
}

class CustomSliderState extends State<CustomSlider> {
  final controller = PageController(initialPage: 1);

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: widget.height,
          width: double.infinity,
          margin: widget.margin,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CarouselSlider(
              items: List.generate(widget.sliderList.length, (index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CustomCacheImage(
                    imgUrl: widget.sliderList[index],
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
        ),
        widget.sliderList.isEmpty
            ? const SizedBox()
            : Container(
                width: widget.sliderList.length * 22,
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                  left: 3,
                  right: 3,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...widget.sliderList.asMap().entries.map((e) {
                      return AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5, left: 5),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == e.key
                              ? AppColor.primaryColor
                              : Colors.white,
                        ),
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    }).toList(),
                  ],
                )),
      ],
    );
  }
}
