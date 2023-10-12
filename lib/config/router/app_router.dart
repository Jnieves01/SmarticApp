import 'package:go_router/go_router.dart';
import 'package:smartic_app/presentation/screens/home_screen.dart';
import 'package:smartic_app/presentation/screens/login_screen.dart';



final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
  ]
);