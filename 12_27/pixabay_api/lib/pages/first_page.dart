import 'package:flutter/material.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/repository/image_data_repository.dart';

class FristPage extends StatefulWidget {
  const FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  @override
  Widget build(BuildContext context) {
    final searchTextEditingController = TextEditingController();
    final repository = NetworkImageRepository();
    List<Hits> data = [];

    Future searchImage(String query) async {
      data = await repository.getHitsData(query);
      print(data);
      setState(() {});
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
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
              )),
          Expanded(
            child: GridView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Text('테스트');
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
