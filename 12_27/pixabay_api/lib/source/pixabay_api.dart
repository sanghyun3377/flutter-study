import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pixabay_api/dto/pixabay_dto.dart';

class pixabayApi {
  Future<PixabayDto> getPixabayData(String query) async {
    var uri =
        'https://pixabay.com/api/?key=41485575-602fb62855ac57d058062ff6f&q=$query&image_type=photo';
    var url = Uri.parse(uri);
    var source = await http.get(url);
    var json = jsonDecode(source.body);
    var data = PixabayDto.fromMap(json);
    print(data);
    return data;
  }
}
