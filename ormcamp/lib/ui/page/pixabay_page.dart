import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ormcamp/di_setup.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/ui/page/pixabay_page_view_model.dart';
import 'package:provider/provider.dart';

class PixabayPage extends StatefulWidget {
  const PixabayPage({super.key});

  @override
  State<PixabayPage> createState() => _PixabayPageState();
}

class _PixabayPageState extends State<PixabayPage> {
  var controller = TextEditingController();
  StreamSubscription? subscription;
  @override
  void initState() {
    Future.microtask(() {
      subscription =
          context.read<PixabayPageViewModel>().streamController.listen((event) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(event)),
        );
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pixabayPageViewModel = context.watch<PixabayPageViewModel>();
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
                onPressed: () async {
                  pixabayPageViewModel.searchImage(controller.text);
                },
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: pixabayPageViewModel.hitsdata.length, //item 개수
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                    childAspectRatio: 2 / 3, //item 의 가로 1, 세로 2 의 비율
                    mainAxisSpacing: 20, //수평 Padding
                    crossAxisSpacing: 10, //수직 Padding
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    //item 의 반목문 항목 형성
                    final imageItem = pixabayPageViewModel.hitsdata[index];
                    return GestureDetector(
                        onTap: () {
                          Hits hits = getIt<Hits>();
                          hits.previewURL = imageItem.previewURL;
                          hits.comments = imageItem.comments;
                          hits.likes = imageItem.likes;
                          hits.tags = imageItem.tags;
                          hits.downloads = imageItem.downloads;
                          context.push(Uri(
                            path: '/image-detail', // 내가 임의로 설정
                          ).toString());
                        },
                        child: Image.network(imageItem.previewURL));
                  }))
        ],
      ),
    );
  }
}
