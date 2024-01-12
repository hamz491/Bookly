import 'package:bookly/Features/Home/presentation/View/Book_Details_View.dart';
import 'package:bookly/Features/Home/presentation/View/HomeView.dart';
import 'package:bookly/Features/Splash/Preserntaion/view/SplashView.dart';
import 'package:bookly/constants.dart';
import 'package:go_router/go_router.dart';

abstract class appRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // initial route
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kbookdetails_view,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
