import 'package:lomhat/module/home/widget/custom_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: const Column(
        children: [
          CustomSlider(
            sliderList: [],
          ),
        ],
      ),
    );
  }
}
