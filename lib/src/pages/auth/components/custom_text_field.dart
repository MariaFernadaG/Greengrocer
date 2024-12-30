part of '../auth_imports.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  late bool isObscure = false;
  late bool isSecrect;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
   CustomTextField({super.key, required this.label, this.isSecrect = false, this.validator, this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        controller: widget.controller,
          obscureText: widget.isObscure,
          validator: widget.validator,
        decoration: InputDecoration(
          isDense: true,
           labelText: widget.label,  
           suffixIcon: widget.isSecrect ? IconButton(
            onPressed: (){
              setState(() {
            widget.isObscure =  !widget.isObscure;
              });
           }, icon: Icon(Icons.visibility_off) ): null,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
