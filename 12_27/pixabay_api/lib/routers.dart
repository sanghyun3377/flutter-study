import 'package:go_router/go_router.dart';
import 'package:pixabay_api/main_screen.dart';
import 'package:pixabay_api/view/screen/serve_screen.dart';
import 'package:pixabay_api/view/viewmodel/first_page_view_model.dart';
import 'package:pixabay_api/view/viewmodel/secound_page_view_model.dart';
import 'package:pixabay_api/view/viewmodel/serve_screen_view_model.dart';
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
              create: (_) => FirstPageViewModel(),
            ),
            ChangeNotifierProvider(
              create: (_) => SecoundPageViewModel(),
            ),
          ],
          child: MainScreen(),
        );
      },
    ),
// /result로 이동하기 위한 라우트 설정
    GoRoute(
      path: '/serve',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => ServeScreenViewModel(),
          child: ServeScreen(),
        );
      },
    ),
  ],
);
