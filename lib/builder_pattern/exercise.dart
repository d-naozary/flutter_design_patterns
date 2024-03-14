class User {
  late final String _firstName;
  late final String _lastName;
  late final int? _age;
  late final int? _phoneNumber;
  late final String? _address;
  late final String _email;

  String get firstName => _firstName;
  String get lastName => _lastName;
  int? get age => _age;
  int? get phoneNumber => _phoneNumber;
  String? get address => _address;
  String get email => _email;

  set firstName(String firstName) => _firstName = firstName;

  User._builder(UserBuilder builder);
}

class UserBuilder {}
