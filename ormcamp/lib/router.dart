import 'package:go_router/go_router.dart';
import 'package:ormcamp/di_setup.dart';
import 'package:ormcamp/ui/page/pixabay_page_view_model.dart';
import 'package:ormcamp/ui/page/subway_page_view_model.dart';
import 'package:ormcamp/ui/screen/image_detail_screen.dart';
import 'package:ormcamp/ui/screen/main_screen.dart';
import 'package:ormcamp/ui/screen/main_screen_view_model.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/', // 원래 / 이거 주소로 못쓰는데 쓸려고
  routes: [
// 첫번째 시작 라우트 설정
    GoRoute(
      path: '/', // initialLocation이거 해서 사용가능
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => getIt<MainScreenViewModel>(),
            ),
            ChangeNotifierProvider(
              create: (_) => getIt<PixabayPageViewModel>(),
            ),
            ChangeNotifierProvider(
              create: (_) => SubwayPageViewModel(),
            )
          ],
          child: const MainScreen(),
        );
      },
    ),
    GoRoute(
      path: '/image-detail',
      builder: (context, state) {
        return const ImageDetailScreen();
      },
    )
  ],
);
