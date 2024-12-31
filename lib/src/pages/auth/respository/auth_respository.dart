import 'package:market/src/constants/endpoints.dart';
import 'package:market/src/models/user_model.dart';
import 'package:market/src/services/http_manager.dart';

class AuthRespository {
  final HttpManager _httpManager= HttpManager();
  Future signIn({required String email, required String password}) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        'email': email,
        'password': password,
      },);
      if(result['result'] != null){
        print('Usuario logado com sucesso');
        final user = UserModel.fromMap(result['result']);
        print(user);
      }else{  
       print('Erro ao logar usuario');
       print(result['error']);
      }
  }  
}