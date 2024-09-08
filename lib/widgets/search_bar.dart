import 'package:coffee_house_1/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 30,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorPalette().searchBarFill),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              hintText: 'Find your coffee...',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: const Color(0xff52555A)),
              fillColor: ColorPalette().searchBarFill,
              contentPadding: const EdgeInsets.fromLTRB(10, 2, 5, 12),
              border: InputBorder.none,
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Iconify(
                  Ri.search_2_fill,
                  size: 20,
                  color: Color(0xff52555A),
                ),
              ),
              prefixIconConstraints:
                  const BoxConstraints(maxHeight: 30, maxWidth: 35),
              prefixIconColor: const Color(0xff52555A)),
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: const Color(0xff52555A)),
        ),
      ),
    );
  }
}
