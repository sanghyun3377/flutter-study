import 'package:mask_api/mapper/dto_to_store.dart';
import 'package:mask_api/model/mask_api.dart';
import 'package:mask_api/source/mask_api.dart';

abstract interface class MaskDataRepository {
  Future<List<Store>> getStoreData();
}

class NetworkMaskDataRepository implements MaskDataRepository {
  var maskDataApi = MaskApi();

  @override
  Future<List<Store>> getStoreData() async {
    var result = await maskDataApi.getmaskData();
    return result.stores?.map((e) => e.toStore()).toList() ?? [];
  }
}
