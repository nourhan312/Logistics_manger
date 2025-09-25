import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../features/drivers/presentation/screens/drivers_screen.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                AppStrings.homeWelcome,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 8),
              Text(
                AppStrings.homeSubtitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 40),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.9,
                  children: [
                    CategoryCard(
                      svgPath: 'assets/icons/drivers.svg',
                      title: AppStrings.driversTitle,
                      subtitle: AppStrings.driversSubtitle,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DriversScreen(),
                          ),
                        );
                      },
                    ),
                    CategoryCard(
                      svgPath: 'assets/icons/vehicles.svg',
                      title: AppStrings.vehiclesTitle,
                      subtitle: AppStrings.vehiclesSubtitle,
                      onTap: () {
                        // TODO: Navigate to VehiclesScreen
                      },
                    ),

                    CategoryCard(
                      svgPath: 'assets/icons/trips.svg',
                      title: AppStrings.tripsTitle,
                      subtitle: AppStrings.tripsSubtitle,
                      onTap: () {
                        // TODO: Navigate to TripsScreen
                      },
                    ),
                    CategoryCard(
                      svgPath: 'assets/icons/reports.svg',
                      title: AppStrings.reportsTitle,
                      subtitle: AppStrings.reportsSubtitle,
                      isEnabled: false,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
