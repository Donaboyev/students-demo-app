class Student {
  Student({
    String? id,
    String? name,
    String? course,
  }) {
    _id = id;
    _name = name;
    _course = course;
  }

  Student.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _course = json['course'];
  }

  String? _id;
  String? _name;
  String? _course;

  Student copyWith({
    String? id,
    String? name,
    String? course,
  }) =>
      Student(
        id: id ?? _id,
        name: name ?? _name,
        course: course ?? _course,
      );

  String? get id => _id;

  String? get name => _name;

  String? get course => _course;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['course'] = _course;
    return map;
  }
}
