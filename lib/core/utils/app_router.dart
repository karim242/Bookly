import 'package:bookly/Features/home/data/model/book_models/book_models.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/view/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kHomeView = '/homeView';

  static const String kBookDetailsView = '/bookDetailsView';
  static const String kSearchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBookCubit(sl.get<HomeRepositoryImpl>()),
        child:  BookDetailsView(book: state.extra as BookModels),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
