part of 'auth_imports.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Column(
        children: [

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                
               DefaultTextStyle(
  style: const TextStyle(
    fontSize: 24, 
    fontWeight: FontWeight.bold, 
    color: Colors.white, 
  ),
  child: AnimatedTextKit(
    repeatForever: true,
    animatedTexts: [
      FadeAnimatedText(
        'Frutas',
        duration: const Duration(seconds: 2), 
      ),
      FadeAnimatedText(
        'Verduras',
        duration: const Duration(seconds: 2), 
      ),
    ],
    onTap: () {
      print("Texto clicado!"); 
    },
  ),
),

              ],
            ),
          ),

        
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  //atraves do form aciona a validaçao dos campos
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    
                   CustomTextField(label: 'Email',
                    validator: (email){
                          if (email == null || email.isEmpty) return 'Digite seu email';
                          if(!email.isEmail) return 'Email inválido';
                    return null;
                        },
                   ),
                   const SizedBox(height: 10),
                    
                      CustomTextField(
                        label: 'Senha',
                        isSecrect: true,
                        validator: (password) {
                          if (password == null || password.isEmpty) 
                            return 'Digite sua senha';
                          return null;
                        },
                      ),
                      
                       
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                         
                          },
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ),
                      // Botão de entrar
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
_formKey.currentState!.validate();
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                     
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
