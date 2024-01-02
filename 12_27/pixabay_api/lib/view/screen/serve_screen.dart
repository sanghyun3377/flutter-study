import 'package:flutter/material.dart';
import 'package:pixabay_api/view/viewmodel/serve_screen_view_model.dart';
import 'package:pixabay_api/view/widget/text_field_widget.dart';
import 'package:provider/provider.dart';

class ServeScreen extends StatelessWidget {
  const ServeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final serveScreenViewModel = context.watch<ServeScreenViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('서브스크린'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextFieldWidget(
              controller: serveScreenViewModel.searchTextEditingController,
              suffixIconOnPressed: () {
                context.read<ServeScreenViewModel>().searchImage(
                    serveScreenViewModel.searchTextEditingController.text);
                // firstPageViewModel.searchImage(
                //     firstPageViewModel.searchTextEditingController.text);
              }),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 32,
                mainAxisSpacing: 32,
              ),
              itemCount: serveScreenViewModel.imagedata.length,
              itemBuilder: (context, index) {
                return Image.network(
                    serveScreenViewModel.imagedata[index].webformatURL);
              },
            ),
          ),
        ],
      )),
    );
  }
}
