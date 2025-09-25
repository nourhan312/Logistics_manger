import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data/mock_data_service.dart';
import '../../../core/models/driver_model.dart';
import 'drivers_state.dart';

class DriversCubit extends Cubit<DriversState> {
  final MockDataService _dataService;
  List<Driver> _allDrivers = [];

  DriversCubit(this._dataService) : super(DriversInitial());

  Future<void> fetchDrivers() async {
    try {
      emit(DriversLoading());
      _allDrivers = await _dataService.getDrivers();
      emit(
        DriversLoaded(allDrivers: _allDrivers, filteredDrivers: _allDrivers),
      );
    } catch (e) {
      emit(DriversError('Failed to fetch drivers: $e'));
    }
  }

  void searchDrivers(String query) {
    if (state is DriversLoaded) {
      final filteredList = _allDrivers.where((driver) {
        final nameLower = driver.name.toLowerCase();
        final licenseLower = driver.licenseNumber.toLowerCase();
        final queryLower = query.toLowerCase();
        return nameLower.contains(queryLower) ||
            licenseLower.contains(queryLower);
      }).toList();

      emit(
        DriversLoaded(allDrivers: _allDrivers, filteredDrivers: filteredList),
      );
    }
  }
}
