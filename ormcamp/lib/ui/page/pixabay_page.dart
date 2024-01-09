import 'package:flutter/material.dart';

class PixabayPage extends StatelessWidget {
  const PixabayPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return SafeArea(
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            onChanged: (text) {},
            keyboardType: TextInputType.text,
            maxLines: 1,
            maxLength: 10, // 글자수 제한
            validator: (value) {
              // 유효성 검사
              if (value == null || value.isEmpty) {
                return '입력된 값이 없을때 나오는 텍스트';
              }
              return null;
            },
            decoration: InputDecoration(
              // 기본디자인
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xFF4FB6B2),
                ),
              ),
              // 눌렀을때 디자인
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.amber,
                ),
              ),
              hintText: 'Search',
              // 검색아이콘
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () async {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
