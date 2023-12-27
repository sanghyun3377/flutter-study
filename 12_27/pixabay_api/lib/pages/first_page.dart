import 'package:flutter/material.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/repository/image_data_repository.dart';

class FristPage extends StatefulWidget {
  const FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  final searchTextEditingController = TextEditingController();
  final repository = NetworkImageRepository();
  List<Hits> imagedata = [];

  Future searchImage(String query) async {
    imagedata = await repository.getHitsData(
        query); // 레포지토리의 getHitsData함수(mapper하는) 실행 그리고 imagedata에 넣어줌
    print(imagedata);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: searchTextEditingController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xFF4FB6B2),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xFF4FB6B2),
                ),
              ),
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFF4FB6B2),
                ),
                onPressed: () {
                  searchImage(searchTextEditingController.text);
                },
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: imagedata.length,
              itemBuilder: (context, index) {
                return Image.network(imagedata[index].webformatURL);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 32,
                mainAxisSpacing: 32,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
