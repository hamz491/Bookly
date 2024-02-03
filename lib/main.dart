import 'package:bookly/Core/utils/appRouter.dart';
import 'package:bookly/Core/utils/service_locator.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo_impl.dart';
import 'package:bookly/Features/manager/Featured_Books/feattured_books_cubit.dart';
import 'package:bookly/Features/manager/Newest_Books/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatturedBooksCubit(getIt.get<HomeRepo_Impl>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepo_Impl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kPrimaryColor,
          ),
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
