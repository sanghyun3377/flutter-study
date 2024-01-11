import 'package:get_it/get_it.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/repository/image_data_repository.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageDataRepository>(NetworkImageDataRepository());
  getIt.registerSingleton<Hits>(Hits(
      tags: 'tags',
      previewURL: 'previewURL',
      downloads: 0,
      likes: 0,
      comments: 0));
}
