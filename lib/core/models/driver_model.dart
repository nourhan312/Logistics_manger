enum DriverStatus { Available, OnTrip }

class Driver {
  final String id;
  final String name;
  final String licenseNumber;
  final DriverStatus status;

  const Driver({
    required this.id,
    required this.name,
    required this.licenseNumber,
    this.status = DriverStatus.Available,
  });
}
