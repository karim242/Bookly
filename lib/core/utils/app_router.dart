
import 'package:bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kHomeView = '/homeView';
  static const String kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes:[
      GoRoute(
        path: AppRouter.kSplashView,
        builder:(context,state)=> const SplashView(),
      ),
      GoRoute(
        path: AppRouter.kHomeView,
        builder:(context,state)=> const HomeView(),
      ),
      GoRoute(
        path: AppRouter.kBookDetailsView,
        builder:(context,state)=> const BookDetailsView(),
      ),
    ]
  );
}