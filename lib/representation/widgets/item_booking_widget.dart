import 'package:demo_app_travo/core/constants/dismension_constants.dart';
import 'package:flutter/material.dart';

class ItemBookingWidget extends StatelessWidget {
  const ItemBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            kItemPadding,
          ),
        ),
      ),
    );
  }
}
