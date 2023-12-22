import 'package:flutter/material.dart';

class AavatarWidget extends StatelessWidget {
  const AavatarWidget({super.key, required this.imgURL});
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Image.network(imgURL),
    );
  }
}
