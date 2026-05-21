class Ticket {
  final String ticketNo;
  final String tripId;
  final String passengerName;
  final String? phone;
  final String? passportNo;
  final String? nationality;
  final String route;
  final String from;
  final String to;
  final String? seatNo;
  final double paidAmount;
  final double requiredFare;
  final double luggageFee;
  final bool isUnderpaid;
  final bool isRedTicket;
  final bool isStanding;
  final bool isCrossBorder;
  final String issuedBy;
  final String issuedByName;
  final DateTime issuedAt;
  final String busReg;
  final String driverName;
  final String conductorName;
  final bool synced;
  final double shortage;
  final String? refNo;

  Ticket({
    String? ticketNo,
    required this.tripId,
    required this.passengerName,
    this.phone,
    this.passportNo,
    this.nationality,
    required this.route,
    required this.from,
    required this.to,
    this.seatNo,
    required this.paidAmount,
    required this.requiredFare,
    this.luggageFee = 0.0,
    required this.isUnderpaid,
    this.isRedTicket = false,
    this.isStanding = false,
    this.isCrossBorder = false,
    required this.issuedBy,
    required this.issuedByName,
    required this.busReg,
    required this.driverName,
    required this.conductorName,
    this.synced = false,
    this.refNo,
  })
      : ticketNo = ticketNo ?? DateTime.now().millisecondsSinceEpoch.toString(),
        issuedAt = DateTime.now(),
        shortage = (requiredFare > paidAmount) ? requiredFare - paidAmount : 0.0;

  Map<String, dynamic> toMap() {
    return {
      'ticketNo': ticketNo,
      'tripId': tripId,
      'passengerName': passengerName,
      'phone': phone,
      'passportNo': passportNo,
      'nationality': nationality,
      'route': route,
      'from': from,
      'to': to,
      'seatNo': seatNo,
      'paidAmount': paidAmount,
      'requiredFare': requiredFare,
      'luggageFee': luggageFee,
      'isUnderpaid': isUnderpaid,
      'isRedTicket': isRedTicket,
      'isStanding': isStanding,
      'isCrossBorder': isCrossBorder,
      'issuedBy': issuedBy,
      'issuedByName': issuedByName,
      'issuedAt': issuedAt.toIso8601String(),
      'busReg': busReg,
      'driverName': driverName,
      'conductorName': conductorName,
      'synced': synced,
      'shortage': shortage,
      'refNo': refNo,
    };
  }

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      ticketNo: map['ticketNo'] ?? '',
      tripId: map['tripId'] ?? '',
      passengerName: map['passengerName'] ?? '',
      phone: map['phone'],
      passportNo: map['passportNo'],
      nationality: map['nationality'],
      route: map['route'] ?? '',
      from: map['from'] ?? '',
      to: map['to'] ?? '',
      seatNo: map['seatNo'],
      paidAmount: (map['paidAmount'] ?? 0.0).toDouble(),
      requiredFare: (map['requiredFare'] ?? 0.0).toDouble(),
      luggageFee: (map['luggageFee'] ?? 0.0).toDouble(),
      isUnderpaid: map['isUnderpaid'] ?? false,
      isRedTicket: map['isRedTicket'] ?? false,
      isStanding: map['isStanding'] ?? false,
      isCrossBorder: map['isCrossBorder'] ?? false,
      issuedBy: map['issuedBy'] ?? '',
      issuedByName: map['issuedByName'] ?? '',
      busReg: map['busReg'] ?? '',
      driverName: map['driverName'] ?? '',
      conductorName: map['conductorName'] ?? '',
      synced: map['synced'] ?? false,
      refNo: map['refNo'],
    );
  }
}
