import 'package:flutter/material.dart';

import '../../../constrants/app_color.dart';

class CustomSubItemDrawerBar extends StatelessWidget {
  final String title;
  final bool isSelect, isShowMore;

  final GestureTapCallback? onTap;
  const CustomSubItemDrawerBar({
    super.key,
    this.title = '',
    this.isSelect = false,
    this.isShowMore = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return !isShowMore
        ? Container()
        : InkWell(
            onTap: onTap,
            child: Container(
              color: isSelect
                  ? AppColor.primaryColor.withOpacity(0.2)
                  : Colors.transparent,
              child: Row(children: [
                Container(
                  width: 5,
                  height: 50,
                  color: isSelect ? AppColor.primaryColor : null,
                ),
                const SizedBox(
                  width: 35,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 14,
                          color: isSelect ? AppColor.primaryColor : null,
                        ),
                  ),
                ),
              ]),
            ),
          );
  }
}
