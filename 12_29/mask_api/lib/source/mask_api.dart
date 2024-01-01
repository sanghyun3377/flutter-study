import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mask_api/dto/mask_dto.dart';

class MaskApi {
  Future<MaskDto> getmaskData() async {
    var url = Uri.https('gist.githubusercontent.com',
        '/junsuk5/bb7485d5f70974deee920b8f0cd1e2f0/raw/063f64d9b343120c2cb01a6555cf9b38761b1d94/sample.json');

    var response = await http.get(url);
    var json = jsonDecode(utf8.decode(response.bodyBytes));
    var data = MaskDto.fromMap(json);
    return data;
  }
}
