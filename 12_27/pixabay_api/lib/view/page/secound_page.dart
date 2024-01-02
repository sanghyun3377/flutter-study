import 'package:flutter/material.dart';
import 'package:pixabay_api/view/screen/serve_screen.dart';
import 'package:pixabay_api/view/viewmodel/first_page_view_model.dart';
import 'package:pixabay_api/view/viewmodel/secound_page_view_model.dart';
import 'package:pixabay_api/view/widget/text_field_widget.dart';
import 'package:provider/provider.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final firstPageViewModel =
    //     Provider.of<FirstPageViewModel>(context); // 뷰모델이랑 연결
    final secoundPageViewModel = context.watch<SecoundPageViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('secoundPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ServeScreen()));
                },
                child: Text('servescreen')),
            TextFieldWidget(
                controller: secoundPageViewModel.searchTextEditingController,
                suffixIconOnPressed: () {
                  context.read<SecoundPageViewModel>().searchImage(
                      secoundPageViewModel.searchTextEditingController.text);
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
                itemCount: secoundPageViewModel.imagedata.length,
                itemBuilder: (context, index) {
                  return Image.network(
                      secoundPageViewModel.imagedata[index].webformatURL);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
