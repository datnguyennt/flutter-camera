// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        required this.userId,
        required this.userName,
        required this.userPassword,
        required this.fullName,
        required this.userAddress,
        required this.userImageProfile,
    });

    int userId;
    String userName;
    String userPassword;
    String fullName;
    String userAddress;
    String userImageProfile;

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userID"],
        userName: json["userName"],
        userPassword: json["userPassword"],
        fullName: json["fullName"],
        userAddress: json["userAddress"],
        userImageProfile: json["userImageProfile"],
    );

    Map<String, dynamic> toJson() => {
        "userID": userId,
        "userName": userName,
        "userPassword": userPassword,
        "fullName": fullName,
        "userAddress": userAddress,
        "userImageProfile": userImageProfile,
    };
}
