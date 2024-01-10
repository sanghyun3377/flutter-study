import 'package:ormcamp/model/subway.dart';
import 'package:ormcamp/source/subway_api.dart';

abstract interface class SubwayDataRepository {
  Future<List<Subway>> getSubwayData(String station);
}

class NetworkSubwayRepository implements SubwayDataRepository {
  var subwayApi = SubwayApi();
  @override
  Future<List<Subway>> getSubwayData(String station) async {
    var res = await subwayApi.getSubwayData(station);
    return res;
  }
}
