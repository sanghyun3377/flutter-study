// ignore_for_file: public_member_api_docs, sort_constructors_first
class Store {
  String addr;
  String code;
  String createdAt;
  double lat;
  double lng;
  String name;
  String remainStat;
  String stockAt;
  String type;
  Store({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

  @override
  String toString() {
    return 'Store(addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remainStat: $remainStat, stockAt: $stockAt, type: $type)';
  }
}
