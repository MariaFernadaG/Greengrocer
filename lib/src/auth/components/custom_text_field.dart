part of '../auth_imports.dart';

class CustomTextField extends StatelessWidget {
  final String label;
 late bool isObscure;
   CustomTextField({super.key, required this.label,  this.isObscure= false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
          obscureText: true,
        decoration: InputDecoration(
        
          isDense: true,
           labelText: label,  
           suffixIcon: isObscure?IconButton(onPressed: (){
            isObscure =  !isObscure;
           }, icon: Icon(Icons.visibility_off) ): null,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
