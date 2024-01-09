// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:ormcamp/dto/pixabay_dto.dart';

class PixabayApi {
  final Dio _dio;

  const PixabayApi({
    required Dio dio,
  }) : _dio = dio;

  Future<PixabayDto> getPixabayData(String query) async {
    final url =
        'https://pixabay.com/api/?key=41485575-602fb62855ac57d058062ff6f&q=$query&image_type=photo';
    final response = await _dio.get(url);
    final data = PixabayDto.fromMap(response.data);
    // print('픽사베이 api데이터 $data');
    return data;
  }
}
