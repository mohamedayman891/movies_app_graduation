// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:movies_app_graduation/api/api_manager.dart' as _i271;
import 'package:movies_app_graduation/core/network/connectivity_service.dart'
    as _i218;
import 'package:movies_app_graduation/cubit/auth_cubit.dart' as _i265;
import 'package:movies_app_graduation/cubit/profile_cubit.dart' as _i392;
import 'package:movies_app_graduation/cubit/update_profile_cubit.dart' as _i136;
import 'package:movies_app_graduation/cubit/wishlist_cubit.dart' as _i1071;
import 'package:movies_app_graduation/data/local/movies_hive_local_data_source_impl.dart'
    as _i515;
import 'package:movies_app_graduation/data/local/movies_local_data_source.dart'
    as _i758;
import 'package:movies_app_graduation/di/firebase_module.dart' as _i550;
import 'package:movies_app_graduation/di/third_party_module.dart' as _i474;
import 'package:movies_app_graduation/domain/datasource/auth_remote_data_source.dart'
    as _i811;
import 'package:movies_app_graduation/domain/datasource/auth_remote_source_data_impl.dart'
    as _i501;
import 'package:movies_app_graduation/domain/repositories/auth_repository.dart'
    as _i84;
import 'package:movies_app_graduation/domain/repositories/auth_repository_impl.dart'
    as _i604;
import 'package:movies_app_graduation/domain/repositories/movies_repository.dart'
    as _i624;
import 'package:movies_app_graduation/domain/repositories/movies_repository_impl.dart'
    as _i554;
import 'package:movies_app_graduation/domain/use_cases/delete_account_use_case.dart'
    as _i476;
import 'package:movies_app_graduation/domain/use_cases/get_user_profile_use_case.dart'
    as _i307;
import 'package:movies_app_graduation/domain/use_cases/google_sign_in_use_case.dart'
    as _i638;
import 'package:movies_app_graduation/domain/use_cases/login_use_case.dart'
    as _i753;
import 'package:movies_app_graduation/domain/use_cases/register_use_case.dart'
    as _i742;
import 'package:movies_app_graduation/domain/use_cases/reset_password_use_case.dart'
    as _i390;
import 'package:movies_app_graduation/domain/use_cases/update_profile_use_case.dart'
    as _i55;
import 'package:movies_app_graduation/home_layout/cubit/home_layout_cubit.dart'
    as _i139;
import 'package:movies_app_graduation/home_layout/tabs/home_tab/cubit/home_tab_cubit.dart'
    as _i159;
import 'package:movies_app_graduation/home_layout/tabs/movie_details/cubit/movie_details_cubit.dart'
    as _i984;
import 'package:movies_app_graduation/home_layout/tabs/search_tab/cubit/search_tab_cubit.dart'
    as _i988;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    final thirdPartyModule = _$ThirdPartyModule();
    gh.factory<_i984.MovieDetailsCubit>(() => _i984.MovieDetailsCubit());
    gh.factory<_i988.SearchTabCubit>(() => _i988.SearchTabCubit());
    gh.factory<_i139.HomeLayoutCubit>(() => _i139.HomeLayoutCubit());
    gh.singleton<_i271.ApiManager>(() => _i271.ApiManager());
    gh.lazySingleton<_i1071.WishlistCubit>(() => _i1071.WishlistCubit());
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i116.GoogleSignIn>(() => firebaseModule.googleSignIn);
    gh.lazySingleton<_i895.Connectivity>(() => thirdPartyModule.connectivity);
    gh.lazySingleton<_i758.MoviesLocalDataSource>(
        () => _i515.MoviesHiveLocalDataSourceImpl());
    gh.lazySingleton<_i218.ConnectivityService>(
        () => _i218.ConnectivityServiceImpl(gh<_i895.Connectivity>()));
    gh.lazySingleton<_i811.AuthRemoteDataSource>(
        () => _i501.AuthRemoteDataSourceImpl(
              firebaseAuth: gh<_i59.FirebaseAuth>(),
              firestore: gh<_i974.FirebaseFirestore>(),
              googleSignIn: gh<_i116.GoogleSignIn>(),
            ));
    gh.lazySingleton<_i624.MoviesRepository>(() => _i554.MoviesRepositoryImpl(
          gh<_i218.ConnectivityService>(),
          gh<_i758.MoviesLocalDataSource>(),
        ));
    gh.factory<_i84.AuthRepository>(() => _i604.AuthRepositoryImpl(
          gh<_i271.ApiManager>(),
          gh<_i811.AuthRemoteDataSource>(),
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i159.HomeTabCubit>(
        () => _i159.HomeTabCubit(gh<_i624.MoviesRepository>()));
    gh.lazySingleton<_i742.RegisterUseCase>(
        () => _i742.RegisterUseCase(gh<_i84.AuthRepository>()));
    gh.lazySingleton<_i753.LoginUseCase>(
        () => _i753.LoginUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i390.ResetPasswordUseCase>(
        () => _i390.ResetPasswordUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i307.GetUserProfileUseCase>(
        () => _i307.GetUserProfileUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i55.UpdateProfileUseCase>(
        () => _i55.UpdateProfileUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i476.DeleteAccountUseCase>(
        () => _i476.DeleteAccountUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i638.GoogleSignInUseCase>(
        () => _i638.GoogleSignInUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i265.AuthCubit>(() => _i265.AuthCubit(
          loginUseCase: gh<_i753.LoginUseCase>(),
          googleSignInUseCase: gh<_i638.GoogleSignInUseCase>(),
          registerUseCase: gh<_i742.RegisterUseCase>(),
          resetPasswordUseCase: gh<_i390.ResetPasswordUseCase>(),
        ));
    gh.factory<_i392.ProfileCubit>(() => _i392.ProfileCubit(
          gh<_i307.GetUserProfileUseCase>(),
          gh<_i624.MoviesRepository>(),
        ));
    gh.factory<_i136.UpdateProfileCubit>(() => _i136.UpdateProfileCubit(
          gh<_i55.UpdateProfileUseCase>(),
          gh<_i476.DeleteAccountUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i550.FirebaseModule {}

class _$ThirdPartyModule extends _i474.ThirdPartyModule {}
