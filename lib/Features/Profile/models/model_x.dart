class ModelX{
  final String firstName;
  final String lastName;
  final String gender;
  final String address;
  final String phoneNumber;

  ModelX( {
    required this.firstName,
    required this.lastName,
    required this.gender,
     this.address = 'Lagos, Nigeria',
    required this.phoneNumber,
});

  // Method to convert the object to a map (JSON)
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'address': address,
      'phoneNumber': phoneNumber,
    };
  }

  // Factory constructor to create an instance from a map (JSON)
  factory ModelX.fromJson(Map<String, dynamic> json) {
    return ModelX(
      firstName: json['firstName']?? '',
      lastName: json['lastName'] ?? '',
      gender: json['gender'] ?? '',
      address: json['address'] as String? ?? 'Lagos, Nigeria',
      phoneNumber: json['phoneNumber'] ?? '',
    );
  }
}