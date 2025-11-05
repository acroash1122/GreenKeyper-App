import 'package:flutter/material.dart';
import '../services/user_service.dart';
import 'profile_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    // Access current user from UserService
    final user = UserService.currentUser;

    final String userName = user?.name ?? "Guest";
    final String userEmail = user?.email ?? "Not Logged In";

    // Get screen width for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),

          // If user is logged in -> show Profile button
          if (user != null)
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfilePage()),
                ).then((_) => setState(() {})); // Refresh dashboard after edit
              },
            )
          else
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/login',
                ).then((_) => setState(() {}));
              },
              child: const Text("Login", style: TextStyle(color: Colors.white)),
            ),
        ],
      ),

      // ================= BODY ==================
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Background image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/trucks.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: screenWidth < 600 ? 200 : 300,
              ),
            ),

            const SizedBox(height: 16),

            // Greeting
            Text(
              "Hello, $userName ",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Welcome to GreenKyper!",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const Divider(height: 30),

            // Info Boxes (Responsive)
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.spaceBetween,
              children: [
                _buildInfoBox(
                  title: "Vehicles",
                  value: "3",
                  icon: Icons.directions_car,
                  width: screenWidth < 600 ? double.infinity : 160,
                ),
                _buildInfoBox(
                  title: "Checklist",
                  value: "70%",
                  icon: Icons.check_circle,
                  width: screenWidth < 600 ? double.infinity : 160,
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Fault Section
            const Text(
              "Vehicle Faults",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 15),

            _buildProgressRow("Resolved", 0.8, Colors.green),
            const SizedBox(height: 12),
            _buildProgressRow("Pending", 0.3, Colors.orange),

            const SizedBox(height: 40),

            // Proceed Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Add navigation to checklist
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Proceed to Checklist",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ================= Helper Widgets =================

  Widget _buildInfoBox({
    required String title,
    required String value,
    required IconData icon,
    required double width,
  }) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.teal, width: 1),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.teal, size: 30),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressRow(String label, double progress, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 6),
        LayoutBuilder(
          builder: (context, constraints) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progress,
                color: color,
                backgroundColor: Colors.grey.shade300,
                minHeight: 10,
              ),
            );
          },
        ),
      ],
    );
  }
}
