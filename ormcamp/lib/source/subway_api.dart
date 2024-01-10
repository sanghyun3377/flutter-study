import 'package:dio/dio.dart';
import 'package:ormcamp/model/subway.dart';

class SubwayApi {
  final _dio = Dio();

  Future<List<Subway>> getSubwayData(String station) async {
    final url =
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$station';
    final response = await _dio.get(url);
    final listData = response.data["realtimeArrivalList"] as List<dynamic>;
    final data = listData.map((e) => Subway.fromMap(e)).toList();
    return data;
  }
}
