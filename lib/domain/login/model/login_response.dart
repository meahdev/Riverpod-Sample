
class LoginResponse {
  LoginResponse({
      List<Results>? results, 
      }){
    _results = results;

}

  LoginResponse.fromJson(dynamic json) {
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }
  List<Results>? _results;
LoginResponse copyWith({  List<Results>? results,
}) => LoginResponse(  results: results ?? _results,

);
  List<Results>? get results => _results;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class Results {
  Results({
      String? gender, 
      Name? name, 
      Location? location, 
      String? email, 
      Login? login, 
      Dob? dob, 
      Registered? registered, 
      String? phone, 
      String? cell, 
      Id? id, 
      Picture? picture, 
      String? nat,}){
    _gender = gender;
    _name = name;
    _location = location;
    _email = email;
    _login = login;
    _dob = dob;
    _registered = registered;
    _phone = phone;
    _cell = cell;
    _id = id;
    _picture = picture;
    _nat = nat;
}

  Results.fromJson(dynamic json) {
    _gender = json['gender'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _email = json['email'];
    _login = json['login'] != null ? Login.fromJson(json['login']) : null;
    _dob = json['dob'] != null ? Dob.fromJson(json['dob']) : null;
    _registered = json['registered'] != null ? Registered.fromJson(json['registered']) : null;
    _phone = json['phone'];
    _cell = json['cell'];
    _id = json['id'] != null ? Id.fromJson(json['id']) : null;
    _picture = json['picture'] != null ? Picture.fromJson(json['picture']) : null;
    _nat = json['nat'];
  }
  String? _gender;
  Name? _name;
  Location? _location;
  String? _email;
  Login? _login;
  Dob? _dob;
  Registered? _registered;
  String? _phone;
  String? _cell;
  Id? _id;
  Picture? _picture;
  String? _nat;
Results copyWith({  String? gender,
  Name? name,
  Location? location,
  String? email,
  Login? login,
  Dob? dob,
  Registered? registered,
  String? phone,
  String? cell,
  Id? id,
  Picture? picture,
  String? nat,
}) => Results(  gender: gender ?? _gender,
  name: name ?? _name,
  location: location ?? _location,
  email: email ?? _email,
  login: login ?? _login,
  dob: dob ?? _dob,
  registered: registered ?? _registered,
  phone: phone ?? _phone,
  cell: cell ?? _cell,
  id: id ?? _id,
  picture: picture ?? _picture,
  nat: nat ?? _nat,
);
  String? get gender => _gender;
  Name? get name => _name;
  Location? get location => _location;
  String? get email => _email;
  Login? get login => _login;
  Dob? get dob => _dob;
  Registered? get registered => _registered;
  String? get phone => _phone;
  String? get cell => _cell;
  Id? get id => _id;
  Picture? get picture => _picture;
  String? get nat => _nat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gender'] = _gender;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['email'] = _email;
    if (_login != null) {
      map['login'] = _login?.toJson();
    }
    if (_dob != null) {
      map['dob'] = _dob?.toJson();
    }
    if (_registered != null) {
      map['registered'] = _registered?.toJson();
    }
    map['phone'] = _phone;
    map['cell'] = _cell;
    if (_id != null) {
      map['id'] = _id?.toJson();
    }
    if (_picture != null) {
      map['picture'] = _picture?.toJson();
    }
    map['nat'] = _nat;
    return map;
  }

}

class Picture {
  Picture({
      String? large, 
      String? medium, 
      String? thumbnail,}){
    _large = large;
    _medium = medium;
    _thumbnail = thumbnail;
}

  Picture.fromJson(dynamic json) {
    _large = json['large'];
    _medium = json['medium'];
    _thumbnail = json['thumbnail'];
  }
  String? _large;
  String? _medium;
  String? _thumbnail;
Picture copyWith({  String? large,
  String? medium,
  String? thumbnail,
}) => Picture(  large: large ?? _large,
  medium: medium ?? _medium,
  thumbnail: thumbnail ?? _thumbnail,
);
  String? get large => _large;
  String? get medium => _medium;
  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['large'] = _large;
    map['medium'] = _medium;
    map['thumbnail'] = _thumbnail;
    return map;
  }

}

class Id {
  Id({
      String? name, 
      dynamic value,}){
    _name = name;
    _value = value;
}

  Id.fromJson(dynamic json) {
    _name = json['name'];
    _value = json['value'];
  }
  String? _name;
  dynamic _value;
Id copyWith({  String? name,
  dynamic value,
}) => Id(  name: name ?? _name,
  value: value ?? _value,
);
  String? get name => _name;
  dynamic get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['value'] = _value;
    return map;
  }

}

class Registered {
  Registered({
      String? date, 
      int? age,}){
    _date = date;
    _age = age;
}

  Registered.fromJson(dynamic json) {
    _date = json['date'];
    _age = json['age'];
  }
  String? _date;
  int? _age;
Registered copyWith({  String? date,
  int? age,
}) => Registered(  date: date ?? _date,
  age: age ?? _age,
);
  String? get date => _date;
  int? get age => _age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['age'] = _age;
    return map;
  }

}

class Dob {
  Dob({
      String? date, 
      int? age,}){
    _date = date;
    _age = age;
}

  Dob.fromJson(dynamic json) {
    _date = json['date'];
    _age = json['age'];
  }
  String? _date;
  int? _age;
Dob copyWith({  String? date,
  int? age,
}) => Dob(  date: date ?? _date,
  age: age ?? _age,
);
  String? get date => _date;
  int? get age => _age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['age'] = _age;
    return map;
  }

}

class Login {
  Login({
      String? uuid, 
      String? username, 
      String? password, 
      String? salt, 
      String? md5, 
      String? sha1, 
      String? sha256,}){
    _uuid = uuid;
    _username = username;
    _password = password;
    _salt = salt;
    _md5 = md5;
    _sha1 = sha1;
    _sha256 = sha256;
}

  Login.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _username = json['username'];
    _password = json['password'];
    _salt = json['salt'];
    _md5 = json['md5'];
    _sha1 = json['sha1'];
    _sha256 = json['sha256'];
  }
  String? _uuid;
  String? _username;
  String? _password;
  String? _salt;
  String? _md5;
  String? _sha1;
  String? _sha256;
Login copyWith({  String? uuid,
  String? username,
  String? password,
  String? salt,
  String? md5,
  String? sha1,
  String? sha256,
}) => Login(  uuid: uuid ?? _uuid,
  username: username ?? _username,
  password: password ?? _password,
  salt: salt ?? _salt,
  md5: md5 ?? _md5,
  sha1: sha1 ?? _sha1,
  sha256: sha256 ?? _sha256,
);
  String? get uuid => _uuid;
  String? get username => _username;
  String? get password => _password;
  String? get salt => _salt;
  String? get md5 => _md5;
  String? get sha1 => _sha1;
  String? get sha256 => _sha256;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['username'] = _username;
    map['password'] = _password;
    map['salt'] = _salt;
    map['md5'] = _md5;
    map['sha1'] = _sha1;
    map['sha256'] = _sha256;
    return map;
  }

}

class Location {
  Location({
      Street? street, 
      String? city, 
      String? state, 
      String? country,
      Coordinates? coordinates, 
      Timezone? timezone,}){
    _street = street;
    _city = city;
    _state = state;
    _country = country;
    _coordinates = coordinates;
    _timezone = timezone;
}

  Location.fromJson(dynamic json) {
    _street = json['street'] != null ? Street.fromJson(json['street']) : null;
    _city = json['city'];
    _state = json['state'];
    _country = json['country'];
    _coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
    _timezone = json['timezone'] != null ? Timezone.fromJson(json['timezone']) : null;
  }
  Street? _street;
  String? _city;
  String? _state;
  String? _country;
  Coordinates? _coordinates;
  Timezone? _timezone;
Location copyWith({  Street? street,
  String? city,
  String? state,
  String? country,
  int? postcode,
  Coordinates? coordinates,
  Timezone? timezone,
}) => Location(  street: street ?? _street,
  city: city ?? _city,
  state: state ?? _state,
  country: country ?? _country,
  coordinates: coordinates ?? _coordinates,
  timezone: timezone ?? _timezone,
);
  Street? get street => _street;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;
  Coordinates? get coordinates => _coordinates;
  Timezone? get timezone => _timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_street != null) {
      map['street'] = _street?.toJson();
    }
    map['city'] = _city;
    map['state'] = _state;
    map['country'] = _country;
    if (_coordinates != null) {
      map['coordinates'] = _coordinates?.toJson();
    }
    if (_timezone != null) {
      map['timezone'] = _timezone?.toJson();
    }
    return map;
  }

}

class Timezone {
  Timezone({
      String? offset, 
      String? description,}){
    _offset = offset;
    _description = description;
}

  Timezone.fromJson(dynamic json) {
    _offset = json['offset'];
    _description = json['description'];
  }
  String? _offset;
  String? _description;
Timezone copyWith({  String? offset,
  String? description,
}) => Timezone(  offset: offset ?? _offset,
  description: description ?? _description,
);
  String? get offset => _offset;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offset'] = _offset;
    map['description'] = _description;
    return map;
  }

}

class Coordinates {
  Coordinates({
      String? latitude, 
      String? longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  Coordinates.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  String? _latitude;
  String? _longitude;
Coordinates copyWith({  String? latitude,
  String? longitude,
}) => Coordinates(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  String? get latitude => _latitude;
  String? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

class Street {
  Street({
      int? number, 
      String? name,}){
    _number = number;
    _name = name;
}

  Street.fromJson(dynamic json) {
    _number = json['number'];
    _name = json['name'];
  }
  int? _number;
  String? _name;
Street copyWith({  int? number,
  String? name,
}) => Street(  number: number ?? _number,
  name: name ?? _name,
);
  int? get number => _number;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['name'] = _name;
    return map;
  }

}

class Name {
  Name({
      String? title, 
      String? first, 
      String? last,}){
    _title = title;
    _first = first;
    _last = last;
}

  Name.fromJson(dynamic json) {
    _title = json['title'];
    _first = json['first'];
    _last = json['last'];
  }
  String? _title;
  String? _first;
  String? _last;
Name copyWith({  String? title,
  String? first,
  String? last,
}) => Name(  title: title ?? _title,
  first: first ?? _first,
  last: last ?? _last,
);
  String? get title => _title;
  String? get first => _first;
  String? get last => _last;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['first'] = _first;
    map['last'] = _last;
    return map;
  }

}