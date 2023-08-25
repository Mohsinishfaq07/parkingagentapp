import 'package:internet_connection_checker/internet_connection_checker.dart';


import 'core/router/app_state.dart';
import 'core/utils/globals/globals.dart';
import 'core/utils/network/network_info.dart';
import 'features/authentication/sign_in/data/data_sources/login_remote_data_source.dart';
import 'features/authentication/sign_in/data/repository/auth_repo_imp.dart';
import 'features/authentication/sign_in/domain/repository/auth_repo.dart';
import 'features/authentication/sign_in/domain/usecases/login_usecase.dart';
import 'features/authentication/sign_in/presentation/manager/auth_provider.dart';

Future<void> init() async {
  /// UseCases
  sl.registerLazySingleton(() => LoginUsecase(sl()));

  //Repositories
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImp(dio: sl()));

  //Data sources
  sl.registerLazySingleton<AuthRepository>(
      () => LoginRepoImp(networkInfo: sl(), remoteDataSource: sl()));

  /// Configs

  /// Repository

  /// External
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());

  /// Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// Providers
  ///
  sl.registerLazySingleton(() => AuthProvider(sl()));

  /// Navigator
  sl.registerLazySingleton(() => AppState());
}
