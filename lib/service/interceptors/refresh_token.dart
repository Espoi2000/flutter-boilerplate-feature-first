// // ignore_for_file: deprecated_member_use

// import 'package:dio/dio.dart';
// class RefreshTokenInterceptor extends Interceptor {
//   final ResponseModel responseModel;
//   final Dio dio;
//   final AuthRepository authRepository;

//   RefreshTokenInterceptor(this.responseModel, this.dio, this.authRepository);

//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     // Ajouter le token d'accès à chaque requête
//     if (responseModel.accessToken != null) {
//       options.headers['Authorization'] = 'Bearer ${responseModel.accessToken}';
//     }
//     super.onRequest(options, handler);
//   }

//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401) {
//       try {
//         await authRepository.refreshToken();
//         final options = err.response!.requestOptions;
//         options.headers['Authorization'] =
//             'Bearer ${responseModel.accessToken}';
//         final response = await dio.fetch(options);
//         handler.resolve(response);
//       } catch (e) {
//         handler.reject(err);
//       }
//     } else {
//       super.onError(err, handler);
//     }
//   }
// }
