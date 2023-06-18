// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.

class RegisterScreen2Arguments {
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  RegisterScreen2Arguments(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.email});
}
