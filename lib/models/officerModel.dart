// ignore_for_file: unnecessary_this, camel_case_types, non_constant_identifier_names, file_names

class officerModel {
  late String Identity;
  late String name;
  late String phone;
  late String password;
  late String id;

  officerModel(this.Identity, this.name, this.phone, this.id);

  officerModel.fromJson(Map<String, dynamic> map) {
    this.Identity = map['Identity'];
    this.name = map['name'];
    this.phone = map['phone'];
    this.id = map['_id'];
    this.password = map['password'];
  }
}
