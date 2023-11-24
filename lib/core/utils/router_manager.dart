import 'package:evision_task/features/login/presentation/views/login_view.dart';
import 'package:evision_task/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';



abstract class AppRouter {
  static const homeViewPath = '/homeView';
  static const loginViewPath = '/loginView';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: loginViewPath,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
