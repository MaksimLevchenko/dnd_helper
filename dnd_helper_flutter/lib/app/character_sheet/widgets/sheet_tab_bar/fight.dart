import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Fight extends ConsumerWidget {
  const Fight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextButton(
                icon: const Icon(Icons.crop_square_rounded),
                onTap: () {},
                value: 4,
                lable: 'КД'),
            IconTextButton(
                icon: const Icon(Icons.crop_square_rounded),
                onTap: () {},
                value: 4,
                lable: 'Инициатива'),
            IconTextButton(
                icon: const Icon(Icons.crop_square_rounded),
                onTap: () {},
                value: 4,
                lable: 'Скорость'),
            IconTextButton(
                icon: const Icon(Icons.crop_square_rounded),
                onTap: () {},
                value: 4,
                lable: 'ХП'),
          ],
        )
      ],
    );
  }
}

class IconTextButton extends ConsumerWidget {
  final String lable;
  final VoidCallback onTap;
  final Icon icon;
  final int value;
  const IconTextButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.lable,
      required this.value});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Stack(
          alignment: const Alignment(0, 0),
          children: [
            IconButton(iconSize: 70, onPressed: onTap, icon: icon),
            Text(value.toString())
          ],
        ),
        Text(lable)
      ],
    );
  }
}
