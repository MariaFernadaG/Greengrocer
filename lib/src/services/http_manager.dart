import 'package:dio/dio.dart';

abstract class HttpMethods {
  static const String get = 'GET';
  static const String post = 'POST';
  static const String put = 'PUT';
  static const String delete = 'DELETE';
  static const String patch = 'PATCH';
}

class HttpManager {
  Future restRequest({
    required String url,
    required String method,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    // Headers da requisição
    final defaultHeaders = headers ?? {};
    defaultHeaders.addAll({
      'content-type': 'application/json',
      'accept': 'application/json',
      'X-Parse-Application-Id': 'wK7GcEjr2V4br5q5mlR1kybQ5dvxMFDX0qtE1d6Y',
      'X-Parse-REST-API-Key': '2kahi62fkWePLWAwC7k8aMrtQkobogcgkruMxbeB',
    });

    Dio dio = Dio();

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: defaultHeaders,
          method: method,
        ),
        data: body,
      );
      // Retorno do backend
      return response.data;
    } on DioError catch (e) {
      // Log detalhado do erro
      print('Erro na requisição: ${e.message}');
      print('Status code: ${e.response?.statusCode}');
      print('Dados do erro: ${e.response?.data}');
      return e.response?.data ?? {};
    } catch (e) {
      print('Erro desconhecido: $e');
      // Retorno vazio em caso de erro generalizado
      return {};
    }
  }
}
