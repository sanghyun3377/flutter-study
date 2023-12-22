import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/02_01_siren_order.png'),
    );
  }
}
