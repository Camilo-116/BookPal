import '../../domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  const UserModel({
    required String id,
    required String companyId,
    required String firstName,
    String? secondName,
    required String lastName,
    String? secondLastName,
    required String dateOfBirth,
    required String email,
    required String password,
    String? academicProgram,
    bool isAdmin = false,
  }) : super(
          id: id,
          companyId: companyId,
          firstName: firstName,
          secondName: secondName,
          lastName: lastName,
          secondLastName: secondLastName,
          dateOfBirth: dateOfBirth,
          email: email,
          password: password,
          academicProgram: academicProgram,
          isAdmin: isAdmin,
        );
  
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}