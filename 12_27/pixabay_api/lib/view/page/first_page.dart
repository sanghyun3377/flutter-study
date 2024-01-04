import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pixabay_api/%08core/result_event.dart';
import 'package:pixabay_api/view/viewmodel/first_page_view_model.dart';
import 'package:pixabay_api/view/widget/text_field_widget.dart';
import 'package:provider/provider.dart';

class FristPage extends StatefulWidget {
  const FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  StreamSubscription? subscription;
  @override
  void initState() {
    Future.microtask(() {
      subscription =
          context.read<FirstPageViewModel>().streamController.listen((event) {
        switch (event) {
          case ShowSnackBar():
            final snackBar = SnackBar(content: Text(event.message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          case ShowDialog():
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Text(event.message),
                  );
                });
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final firstPageViewModel =
    //     Provider.of<FirstPageViewModel>(context); // 뷰모델이랑 연결
    final firstPageViewModel = context.watch<FirstPageViewModel>();
    final state = firstPageViewModel.mainState;
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
              itemCount: state.imagedata.length,
              itemBuilder: (context, index) {
                return Image.network(state.imagedata[index].webformatURL);
              },
            ),
          ),
        ],
      )),
    );
  }
}
