import 'package:get_it/get_it.dart';
import 'package:pixabay_api/repository/image_data_repository.dart';

final getIt = GetIt.instance;

void diSetup() {
  // interface
  // repository : singleton
  getIt.registerSingleton<ImageDataRepository>(NetworkImageRepository());

  // viewModel : factory
}
