import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_strings.dart';
import '../../cubit/drivers_cubit.dart';
import '../../cubit/drivers_state.dart';
import '../widgets/driver_list_item.dart';

class DriversScreen extends StatelessWidget {
  const DriversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DriversCubit>().fetchDrivers();

    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.driversTitle)),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: TextField(
              onChanged: (value) {
                context.read<DriversCubit>().searchDrivers(value);
              },
              decoration: InputDecoration(
                hintText: AppStrings.searchDriversHint,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
          ),

          // Drivers List
          Expanded(
            child: BlocBuilder<DriversCubit, DriversState>(
              builder: (context, state) {
                if (state is DriversLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is DriversLoaded) {
                  if (state.filteredDrivers.isEmpty) {
                    return const Center(child: Text(AppStrings.noDriversFound));
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: state.filteredDrivers.length,
                    itemBuilder: (context, index) {
                      final driver = state.filteredDrivers[index];
                      // Pass the index for a staggered animation effect
                      return DriverListItem(driver: driver, index: index);
                    },
                  );
                } else if (state is DriversError) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
