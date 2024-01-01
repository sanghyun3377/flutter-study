import 'package:flutter/material.dart';
import 'package:pixabay_api/view/first_page_view_model.dart';
import 'package:provider/provider.dart';

class FristPage extends StatefulWidget {
  const FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  final searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstPageViewModel = Provider.of<FirstPageViewModel>(context);
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
                  firstPageViewModel
                      .searchImage(searchTextEditingController.text);
                },
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: firstPageViewModel.imagedata.length,
              itemBuilder: (context, index) {
                return Image.network(
                    firstPageViewModel.imagedata[index].webformatURL);
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
