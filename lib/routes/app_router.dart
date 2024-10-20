import 'package:aladia_mobile_app/features/auth/models/user_model.dart';
import 'package:aladia_mobile_app/features/auth/screens/signUp/signUpScree.dart';
import 'package:go_router/go_router.dart';
import 'package:aladia_mobile_app/features/auth/screens/login/loginScreen.dart';
import 'package:aladia_mobile_app/features/home/screens/home_screen.dart';
import 'package:aladia_mobile_app/features/splash/screens/splashScreen.dart';
import 'package:aladia_mobile_app/routes/app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(
        path: AppRoutes.signup,
        builder: (context, state) => SignUpScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => Loginscreen(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) {
          final UserModel user =
              state.extra as UserModel; // Retrieve the user data
          return HomeScreen(user: user); // Pass the user to HomeScreen
        },
      ),
    ],
  );
}
