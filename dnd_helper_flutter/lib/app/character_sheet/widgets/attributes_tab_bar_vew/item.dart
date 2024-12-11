import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Item extends ConsumerWidget {
  const Item(this.isFlexible,
      {required this.value, required this.label, super.key});
  final String value;
  final String label;
  final bool isFlexible;

  const Item.simple({required this.value, required this.label, super.key})
      : isFlexible = false;

  const Item.flexible({required this.value, required this.label, super.key})
      : isFlexible = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primary = Theme.of(context).colorScheme.primary;
    final width = MediaQuery.of(context).size.width;
    return isFlexible
        ? width < 700
            ? Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: primary),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: SelectableText(
                      label,
                      style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: primary),
                          left: BorderSide(color: primary),
                          right: BorderSide(color: primary)),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    child: SelectableText(
                      value,
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  )
                ],
              )
            : Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: primary),
                            left: BorderSide(color: primary),
                            top: BorderSide(color: primary)),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: SelectableText(
                          label,
                          style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SelectableText(
                        value,
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    )
                  ],
                ),
              )
        : Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: primary),
                        left: BorderSide(color: primary),
                        top: BorderSide(color: primary)),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: SelectableText(
                      label,
                      style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SelectableText(
                    value,
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                )
              ],
            ),
          );
  }
}
