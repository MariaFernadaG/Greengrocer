import 'package:get/get.dart';
import 'package:market/src/pages/auth/respository/auth_respository.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  final authRespository = AuthRespository();

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;

    try {
      await authRespository.signIn(email: email, password: password);
    } catch (e) {
      print('Erro ao logar usuário: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
