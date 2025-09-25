import '../models/driver_model.dart';

class MockDataService {
  final List<Driver> drivers = [
    const Driver(
      id: 'D001',
      name: 'John Doe',
      licenseNumber: 'L12345',
      status: DriverStatus.Available,
    ),
    const Driver(
      id: 'D002',
      name: 'Jane Smith',
      licenseNumber: 'L67890',
      status: DriverStatus.OnTrip,
    ),
    const Driver(
      id: 'D003',
      name: 'Mike Johnson',
      licenseNumber: 'L54321',
      status: DriverStatus.Available,
    ),
    const Driver(
      id: 'D004',
      name: 'Aisha Khan',
      licenseNumber: 'L98765',
      status: DriverStatus.OnTrip,
    ),
    const Driver(
      id: 'D005',
      name: 'Carlos Gomez',
      licenseNumber: 'L11223',
      status: DriverStatus.Available,
    ),
    const Driver(
      id: 'D006',
      name: 'Linda Lee',
      licenseNumber: 'L44556',
      status: DriverStatus.OnTrip,
    ),
  ];

  // Method to fetch all drivers
  Future<List<Driver>> getDrivers() async {
    await Future.delayed(const Duration(seconds: 1));
    return drivers;
  }
}
