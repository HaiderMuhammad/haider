class Model {
  late int? id;
  late String? image;
  late String? gender;
  late String? fullName;
  late String? experience;
  late String? skills;
  late String? profile;
  late String? profession;
  late int? phoneNumber;
  late String? address;
  late String? email;

  Model({this.id, required this.image, required this.gender,required this.fullName,this.email,this.experience,this.skills,this.profile,this.profession,this.phoneNumber,this.address});

  Model.fromMap(Map data) {
    id = data['ID'];
    image = data['image'];
    gender = data['gender'];
    fullName = data['fullName'];
    email = data['email'];
    address = data['address'];
    phoneNumber = data['phoneNumber'];
    profession = data['profession'];
    profile = data['profile'];
    skills = data['skills'];
    experience = data['experience'];



    // 'create table cv(ID integer primary key autoincrement,image TEXT, Gender TEXT,fullName TEXT,email TEXT,address TEXT,phoneNumber NUMBER,profession TEXT,profile TEXT,skills TEXT,experience TEXT,)',

  }

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {'ID': id, 'image': image, 'gender': gender,'fullName':fullName,'email':email,'address':address,'phoneNumber':phoneNumber,'profession':profession,'profile':profile,'skills':skills,'experience':experience,};
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'cv{id: $id, name: $image,gender:$gender,fullName:$fullName,email:$email,address:$address,phoneNumber:$phoneNumber,profession:$profession,profile:$profile,skills:$skills, experience:$experience}';
  }

  get ID => id;

  get dateOfTheNote => gender;
}