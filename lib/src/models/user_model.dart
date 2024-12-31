class UserModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? id;
  String? cpf;
  String? token;
  UserModel({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.id,
    this.cpf,
    this.token,
  });
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['fullname'],
      email: map['email'],
      phone: map['phone'],
      password: map['password'],
      id: map['id'],
      cpf: map['cpf'],
      token: map['token'],
    );
  }
  //transformar objeto em map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'id': id,
      'cpf': cpf,
      'token': token,
    };
  } 
  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, phone: $phone, password: $password, id: $id, cpf: $cpf, token: $token)';
  }
}