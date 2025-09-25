import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/theme/app_theme.dart';
import 'core/constants/app_strings.dart';
import 'core/data/mock_data_service.dart';
import 'core/di/dependency_injection.dart';
import 'features/drivers/cubit/drivers_cubit.dart';
import 'features/home/presentation/screens/home_screen.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Ask get_it for the registered MockDataRepository instance
      create: (context) => DriversCubit(getIt<MockDataService>()),
      child: MaterialApp(
        title: AppStrings.appName,
        theme: AppTheme.lightTheme,
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
