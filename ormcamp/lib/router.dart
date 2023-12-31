import 'package:go_router/go_router.dart';
import 'package:ormcamp/ui/screen/main_screen.dart';
import 'package:ormcamp/ui/screen/main_screen_view_model.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/', // 원래 / 이거 주소로 못쓰는데 쓸려고
  routes: [
// 첫번째 시작 라우트 설정
    GoRoute(
      path: '/', // initialLocation이거 해서 사용가능
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => MainScreenViewModel(),
        child: const MainScreen(),
      ),
    ),
  ],
);
