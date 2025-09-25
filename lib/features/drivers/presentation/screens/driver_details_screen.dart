import 'package:flutter/material.dart';
import '../../../../core/models/driver_model.dart';

class DriverDetailsScreen extends StatelessWidget {
  final Driver driver;

  const DriverDetailsScreen({super.key, required this.driver});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Driver Details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProfileHeader(context),
            const SizedBox(height: 24),
            _buildInfoCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.person, size: 60, color: Colors.white),
        ),
        const SizedBox(height: 16),
        Text(
          driver.name,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Chip(
          label: Text(
            driver.status == DriverStatus.Available
                ? 'Available for new trip'
                : 'Currently on a trip',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: driver.status == DriverStatus.Available
              ? Colors.green.shade600
              : Colors.orange.shade700,
          avatar: Icon(
            driver.status == DriverStatus.Available
                ? Icons.check_circle
                : Icons.sync,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Driver Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 24),
            _buildInfoRow(
              icon: Icons.badge_outlined,
              label: 'Driver ID',
              value: driver.id,
            ),
            const SizedBox(height: 16),
            _buildInfoRow(
              icon: Icons.card_membership_outlined,
              label: 'License Number',
              value: driver.licenseNumber,
            ),
            const SizedBox(height: 16),
            _buildInfoRow(
              icon: Icons.local_shipping_outlined,
              label: 'Assigned Vehicle',
              value: 'Not Assigned',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 24,
        ), // Using blueAccent for consistency
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(color: Colors.grey.shade600)),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
