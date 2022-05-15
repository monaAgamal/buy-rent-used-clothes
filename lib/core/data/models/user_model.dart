class UserModel {
  final String id;
  final String name;
  final String email;
  final bool isVerified;

  UserModel({
    required this.isVerified,
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json["email"],
      name: json["name"],
      id: json["id"],
      isVerified: json["isVerified"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "name": name,
      "id": id,
      "isVerified": isVerified,
    };
  }
}
