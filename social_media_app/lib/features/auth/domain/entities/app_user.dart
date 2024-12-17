class AppUser {
  final String uid;
  final String email;
  final String password;

  AppUser({
    required this.uid,
    required this.email,
    required this.password,
  });

  // converts app user -> json
  Map<String, dynamic> toJson() {
    return {
      "uid": uid,
      "email": email,
      "password:": password,
    };
  }

  //converts json -> app user
  //returns an existing instance from a cache
  factory AppUser.fromJson(Map<String, dynamic> jsonUser) {
    return AppUser(
      uid: jsonUser["uid"],
      email: jsonUser["email"],
      password: jsonUser["password"],
    );
  }
}
