import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';

class BuildBottomBar extends StatelessWidget {
  const BuildBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      height: 50.0,
      decoration: const BoxDecoration(color: Color(0xFF1A1819)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Iconify(
            Ri.home_7_fill,
            color: Color(0xFFD17742),
          ),
          const Iconify(
            Ph.handbag_fill,
            color: Color(0xFF4E4F53),
          ),
          const Iconify(
            Ri.heart_2_fill,
            color: Color(0xFF4E4F53),
          ),
          Stack(
            children: [
              const Iconify(
                HeroiconsSolid.bell,
                color: Color(0xFF4E4F53),
              ),
              Positioned(
                  top: 2.0,
                  left: 15.0,
                  child: Container(
                    height: 7.0,
                    width: 7.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.5),
                        color: Colors.red),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
