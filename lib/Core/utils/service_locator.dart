import 'package:bookly/Core/utils/api_services.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepo_Impl>(
    HomeRepo_Impl(
      service: Api_Services(
        dio: Dio(),
      ),
    ),
  );
}
