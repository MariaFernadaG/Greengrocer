import 'package:dio/dio.dart';

abstract class HttpMethods{
    static const String get = 'GET';
    static const String post = 'POST';
    static const String put = 'PUT';
    static const String delete = 'DELETE';
    static const String patch = 'PATCH';

}
class HttpManager {
  Future  restRequest({required String url, required String method, Map? headers, Map?body}) async{
    // hearders da requisicao 
    final defaultHearders = headers?.cast<String, String>()??{}..addAll({
    'content-type': 'application/json',
    'accept': 'application/json',
    'X-Parse-Application-Id': 'wK7GcEjr2V4br5q5mlR1kybQ5dvxMFDX0qtE1d6Y',
    'X-Parse-REST-API-Key': '2kahi62fkWePLWAwC7k8aMrtQkobogcgkruMxbeB',

    });
    Dio dio = Dio();
    try{
    Response response = await dio.request('endpoint',
     options: Options(
        headers: defaultHearders,
        method: method, ),
        data:  body,);
        //retorno do backend
    return response.data;
  }on DioException catch(e){
    //retorno do erro do dio resuqest
    print('Erro na requisição: ${e.message}');
    return e.response?.data ?? {};
  } catch(e){
    print('Erro desconhecido: $e');
    //restorno map vazio erro generaliazado
    return {};
  }
  }
  

}