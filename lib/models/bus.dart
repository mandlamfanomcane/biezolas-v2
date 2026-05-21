class Bus {
  final String id;
  final String registration;
  final int capacity;
  final String type;
  final bool active;
  final DateTime createdAt;

  Bus({
    required this.id,
    required this.registration,
    required this.capacity,
    required this.type,
    this.active = true,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'registration': registration,
      'capacity': capacity,
      'type': type,
      'active': active,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Bus.fromMap(Map<String, dynamic> map) {
    return Bus(
      id: map['id'] ?? '',
      registration: map['registration'] ?? '',
      capacity: map['capacity'] ?? 77,
      type: map['type'] ?? 'coach',
      active: map['active'] ?? true,
      createdAt: DateTime.parse(map['createdAt'] ?? DateTime.now().toIso8601String()),
    );
  }
}
