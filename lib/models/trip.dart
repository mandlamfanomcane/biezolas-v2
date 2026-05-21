import 'package:cloud_firestore/cloud_firestore.dart';

class Trip {
  final String id;
  final String busReg;
  final String route;
  final String from;
  final String to;
  final String driverId;
  final String driverName;
  final String conductorId;
  final String conductorName;
  final bool isCrossBorder;
  final bool isLocal;
  final int capacity;
  DateTime startedAt;
  DateTime? endedAt;
  int passengersOnBoard;
  int openTripsWithShort;
  bool midTripFareChange;
  String? fareChangeBy;
  String? fareChangePlace;
  List<Map<String, dynamic>> fareAdjustLog;
  double? totalRevenue;
  double? totalExpenses;
  double? netProfit;
  Map<String, dynamic>? expenses;
  bool synced;

  Trip({
    required this.id,
    required this.busReg,
    required this.route,
    required this.from,
    required this.to,
    required this.driverId,
    required this.driverName,
    required this.conductorId,
    required this.conductorName,
    this.isCrossBorder = false,
    this.isLocal = true,
    this.capacity = 77,
    required this.startedAt,
    this.endedAt,
    this.passengersOnBoard = 0,
    this.openTripsWithShort = 0,
    this.midTripFareChange = false,
    this.fareChangeBy,
    this.fareChangePlace,
    this.fareAdjustLog = const [],
    this.totalRevenue,
    this.totalExpenses,
    this.netProfit,
    this.expenses,
    this.synced = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'busReg': busReg,
      'route': route,
      'from': from,
      'to': to,
      'driverId': driverId,
      'driverName': driverName,
      'conductorId': conductorId,
      'conductorName': conductorName,
      'isCrossBorder': isCrossBorder,
      'isLocal': isLocal,
      'capacity': capacity,
      'startedAt': Timestamp.fromDate(startedAt),
      'endedAt': endedAt != null ? Timestamp.fromDate(endedAt!) : null,
      'passengersOnBoard': passengersOnBoard,
      'openTripsWithShort': openTripsWithShort,
      'midTripFareChange': midTripFareChange,
      'fareChangeBy': fareChangeBy,
      'fareChangePlace': fareChangePlace,
      'fareAdjustLog': fareAdjustLog,
      'totalRevenue': totalRevenue,
      'totalExpenses': totalExpenses,
      'netProfit': netProfit,
      'expenses': expenses,
      'synced': synced,
    };
  }

  factory Trip.fromMap(Map<String, dynamic> map) {
    return Trip(
      id: map['id'] ?? '',
      busReg: map['busReg'] ?? '',
      route: map['route'] ?? '',
      from: map['from'] ?? '',
      to: map['to'] ?? '',
      driverId: map['driverId'] ?? '',
      driverName: map['driverName'] ?? '',
      conductorId: map['conductorId'] ?? '',
      conductorName: map['conductorName'] ?? '',
      isCrossBorder: map['isCrossBorder'] ?? false,
      isLocal: map['isLocal'] ?? true,
      capacity: map['capacity'] ?? 77,
      startedAt: map['startedAt'] is Timestamp
          ? (map['startedAt'] as Timestamp).toDate()
          : DateTime.now(),
      endedAt: map['endedAt'] is Timestamp
          ? (map['endedAt'] as Timestamp).toDate()
          : null,
      passengersOnBoard: map['passengersOnBoard'] ?? 0,
      openTripsWithShort: map['openTripsWithShort'] ?? 0,
      midTripFareChange: map['midTripFareChange'] ?? false,
      fareChangeBy: map['fareChangeBy'],
      fareChangePlace: map['fareChangePlace'],
      fareAdjustLog: List<Map<String, dynamic>>.from(map['fareAdjustLog'] ?? []),
      totalRevenue: map['totalRevenue']?.toDouble(),
      totalExpenses: map['totalExpenses']?.toDouble(),
      netProfit: map['netProfit']?.toDouble(),
      expenses: map['expenses'],
      synced: map['synced'] ?? false,
    );
  }
}
