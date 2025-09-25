import '../../../core/models/driver_model.dart';

abstract class DriversState {}

final class DriversInitial extends DriversState {}

final class DriversLoading extends DriversState {}

final class DriversLoaded extends DriversState {
  final List<Driver> allDrivers;
  final List<Driver> filteredDrivers;
  DriversLoaded({required this.allDrivers, required this.filteredDrivers});
}

final class DriversError extends DriversState {
  final String message;
  DriversError(this.message);
}
