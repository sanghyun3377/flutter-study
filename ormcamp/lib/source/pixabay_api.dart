// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:ormcamp/core/result.dart';
import 'package:ormcamp/dto/pixabay_dto.dart';

class PixabayApi {
  final _dio = Dio();

  Future<Result<PixabayDto>> getPixabayData(String query) async {
    try {
      final url =
          'https://pixabay.com/api/?key=41485575-602fb62855ac57d058062ff6f&q=$query&image_type=photo';
      final response = await _dio.get(url);
      final data = PixabayDto.fromMap(response.data);
      return Result.success(data);
    } catch (e) {
      return const Result.error('네트워크 에러발생');
    }
  }
}
