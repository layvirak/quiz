import 'package:flutter/material.dart';

class CustomMatchTypeCard extends StatelessWidget {
  final String? answer;
  const CustomMatchTypeCard({super.key, this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 0.5,
            color: Theme.of(context).primaryColor.withValues(alpha: 0.5),
          )
        ],
      ),
      child: Text(
        answer ?? '',
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
