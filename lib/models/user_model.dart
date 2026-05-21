enum UserRole {
  driver,
  conductor,
  manager,
  inspector,
  admin,
}

class UserModel {
  final String uid;
  final String name;
  final String phone;
  final UserRole role;
  final String email;
  final bool biometricEnabled;
  final DateTime createdAt;

  UserModel({
    required this.uid,
    required this.name,
    required this.phone,
    required this.role,
    required this.email,
    this.biometricEnabled = false,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'phone': phone,
      'role': role.toString().split('.').last,
      'email': email,
      'biometricEnabled': biometricEnabled,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      role: UserRole.values.firstWhere(
        (role) => role.toString().split('.').last == (map['role'] ?? 'conductor'),
        orElse: () => UserRole.conductor,
      ),
      email: map['email'] ?? '',
      biometricEnabled: map['biometricEnabled'] ?? false,
      createdAt: DateTime.parse(map['createdAt'] ?? DateTime.now().toIso8601String()),
    );
  }
}
