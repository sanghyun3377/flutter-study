import 'package:flutter/material.dart';
import 'package:pixabay_api/view/page/first_page_view_model.dart';
import 'package:pixabay_api/view/widget/text_field_widget.dart';
import 'package:provider/provider.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final firstPageViewModel =
    //     Provider.of<FirstPageViewModel>(context); // 뷰모델이랑 연결
    final firstPageViewModel = context.watch<FirstPageViewModel>();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextFieldWidget(
              controller: firstPageViewModel.searchTextEditingController,
              suffixIconOnPressed: () {
                context.read<FirstPageViewModel>().searchImage(
                    firstPageViewModel.searchTextEditingController.text);
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
              itemCount: firstPageViewModel.imagedata.length,
              itemBuilder: (context, index) {
                return Image.network(
                    firstPageViewModel.imagedata[index].webformatURL);
              },
            ),
          ),
        ],
      )),
    );
  }
}
