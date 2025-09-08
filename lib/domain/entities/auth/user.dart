class UserEntity {
  String? userId;
  String? fullName;
  String? email;

  UserEntity({
    this.userId,
    this.fullName,
    this.email,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      userId: json['userId'],
      fullName: json['fullName'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'fullName': fullName,
      'email': email,
    };
  }
}
