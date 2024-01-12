import 'package:get_it/get_it.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/repository/image_data_repository.dart';
import 'package:ormcamp/ui/page/pixabay_page_view_model.dart';
import 'package:ormcamp/ui/screen/main_screen_view_model.dart';
import 'package:ormcamp/use_case/search_image_use_case.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageDataRepository>(NetworkImageDataRepository());

  getIt.registerFactory(() => MainScreenViewModel());

  getIt.registerSingleton<SearchImageUseCase>(
      SearchImageUseCase(repository: getIt<ImageDataRepository>()));

  getIt.registerFactory(() =>
      PixabayPageViewModel(searchImageUseCase: getIt<SearchImageUseCase>()));

  getIt.registerSingleton<Hits>(Hits(
      tags: 'tags',
      previewURL: 'previewURL',
      downloads: 0,
      likes: 0,
      comments: 0));
}
