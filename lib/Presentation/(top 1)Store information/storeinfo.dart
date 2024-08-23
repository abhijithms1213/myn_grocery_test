import 'package:flutter/material.dart';
import 'package:myn_grocery/Core/const.dart';

class SupermarketInfoScreen extends StatelessWidget {
  const SupermarketInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            // Handle back navigation
          },
        ),
        centerTitle: true,
        title: Text(
          'SUPERMARKET INFORMATION',
          style: TextStyle(
            color: Colors.brown[900],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fresher Super Market',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            dividerfordivide(),
            const SizedBox(height: 16),
            buildSectionTitle('Address'),
            khbox5,
            buildSectionContent(
                'Shop no 1234, Road no 2, Kottarkara, Kerala\nPincode 555000'),
            khbox5,
            dividerfordivide(),
            khbox5,
            buildSectionTitle('Open times'),
            khbox5,
            buildSectionContent(
                'Monday : 09:30 - 21:30\nTuesday : 09:30 - 21:30\nWednesday : 09:30 - 21:30\nThursday : 09:30 - 21:30\nFriday : 09:30 - 21:30\nSaturday : 09:30 - 21:30\nSunday : 09:30 - 21:30'),
            dividerfordivide(),
            const SizedBox(height: 16),
            buildSectionTitle('Contact'),
            khbox5,
            buildSectionContent(
                '+91-999-990-0000\nfreshersupermarket@email.com'),
            khbox5,
            const SizedBox(height: 16),
            dividerfordivide(),
            khbox5,
            buildSectionTitle('Vendor information'),
            khbox5,
            buildSectionContent(
                'Legal name\nFresher Super Market\n\nGST Number\nABCD123456789\n\nTAN Number\nTAN324567'),
            dividerfordivide(),
            const SizedBox(height: 16),
            buildSectionTitle("Myn's terms & conditions"),
            buildSectionContent(
                'Please review the legal terms and conditions for Myn in your specific country or area.'),
            khbox5,
            InkWell(
              onTap: () {
                // Handle more info navigation
              },
              child: const Text(
                'More info here',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Divider dividerfordivide() => const Divider(
        color: Color.fromARGB(31, 186, 186, 186),
        thickness: 10,
      );

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.brown[900],
      ),
    );
  }

  Widget buildSectionContent(String content) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 16,
        height: 1.5,
        color: Colors.black,
      ),
    );
  }
}
