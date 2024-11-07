import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_ecommerce/feauters/check_out/data/repo/checkout_repo.dart';
import 'package:medical_ecommerce/feauters/check_out/data/services/stripe_sdk_service.dart';
import 'package:medical_ecommerce/feauters/check_out/data/services/stripe_service.dart';


import '../networking/dio_factory.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();

  // login

  // banner

  // Cart

  // StripeService
  getIt.registerLazySingleton<StripeService>(() => StripeService(dio));

  //StripeSdkService
  getIt.registerLazySingleton<StripeSdkService>(() => StripeSdkService());

  // Stripe Repository
  getIt.registerLazySingleton<CheckoutRepo>(
      () => CheckoutRepo(getIt<StripeService>(), getIt<StripeSdkService>()));



}
