class Student {
  final String name;
  final String age;
  final String description;
  final DateTime dueDate;
  final bool isEnrolled;
  final String userId;

  Student({
    required this.name,
    required this.age,
    required this.description,
    required this.dueDate,
    required this.isEnrolled,
    required this.userId,
  });

  Student copyWith({
    String? name,
    String? age,
    String? description,
    DateTime? dueDate,
    bool? isEnrolled,
    String? userId,
  }) {
    return Student(
      name: name ?? this.name,
      age: age ?? this.age,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      isEnrolled: isEnrolled ?? this.isEnrolled,
      userId: userId ?? this.userId,
    );
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'] as String,
      age: map['age'] as String,
      description: map['description'] as String,
      dueDate: DateTime.parse(map['due_date'] as String),
      isEnrolled: map['is_enrolled'] as bool? ?? false,
      userId: map['user_id'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'description': description,
      'due_date': dueDate.toIso8601String(),
      'is_enrolled': isEnrolled,
      'user_id': userId,
    };
  }
}
