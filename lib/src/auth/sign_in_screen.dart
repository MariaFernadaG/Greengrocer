part of 'auth_imports.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              ),),
              Expanded(
                child: Container(
                  padding:  const EdgeInsets.symmetric(horizontal: 32, vertical:40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    ),
                    child: Column(
                      children: [
                        CustomTextField(label: 'Email'),
                        CustomTextField(label: 'Senha', isObscure: true,),
                     
                      ],
                    )
                  )
                ),
        ],
      )
    );
  }
}