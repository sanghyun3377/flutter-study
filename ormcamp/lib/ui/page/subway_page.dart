import 'package:flutter/material.dart';
import 'package:ormcamp/ui/page/subway_page_view_model.dart';
import 'package:provider/provider.dart';

class SubwayPage extends StatefulWidget {
  const SubwayPage({super.key});

  @override
  State<SubwayPage> createState() => _SubwayPageState();
}

class _SubwayPageState extends State<SubwayPage> {
  var controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewmodel = context.watch<SubwayPageViewModel>();
    return Scaffold(
      appBar: AppBar(title: const Text('지하철검색')),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
            onChanged: (text) {},
            keyboardType: TextInputType.text,
            maxLines: 1,
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
                  color: Colors.red,
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
                  viewmodel.searchSubway(controller.text);
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: viewmodel.subwayData.length, //item 개수
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Text(viewmodel.subwayData[index].statnNm),
                    title: Text(viewmodel.subwayData[index].trainLineNm),
                    trailing: Text(viewmodel.subwayData[index].arvlMsg2),
                  );
                }),
          )
        ],
      ),
    );
  }
}
