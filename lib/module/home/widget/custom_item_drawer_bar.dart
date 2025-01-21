import 'package:flutter/material.dart';

import '../../../constrants/app_color.dart';

class CustomItemDrawerBar extends StatelessWidget {
  final String title, icon;
  final bool isSelect, isHaveChild, isShowMore;
  final GestureTapCallback? onTap;
  const CustomItemDrawerBar({
    super.key,
    this.icon = '',
    this.title = '',
    this.isSelect = false,
    this.isHaveChild = false,
    this.isShowMore = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return !isShowMore
        ? IconButton(
            onPressed: onTap,
            icon: Image.asset(
              icon,
              height: 20,
              width: 20,
              color: isSelect ? AppColor.primaryColor : null,
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(left: 15),
              child: Row(children: [
                Image.asset(
                  icon,
                  height: 20,
                  width: 20,
                  color: isSelect ? AppColor.primaryColor : null,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 14,
                        color: isSelect ? AppColor.primaryColor : null,
                      ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    isSelect ? Icons.expand_more : Icons.chevron_right,
                    size: 17,
                    color: isHaveChild ? Colors.grey : Colors.transparent,
                  ),
                ),
              ]),
            ),
          );
  }
}
