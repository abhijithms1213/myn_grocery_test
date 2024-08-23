import 'package:flutter/material.dart';
import 'package:myn_grocery/Core/const.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({super.key});

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
          'Eggoz Nutrition',
          style: TextStyle(
            color: Colors.brown[900],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eggoz Nutrition',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[900],
                ),
              ),
              khbox5,
              dividerfordivide(),
              const SizedBox(height: 16),
              buildSectionTitle('Manufacturer details'),
              buildSectionContent(
                  'Shop no 1234, Road no 2, Kottarkara, Kerala\nPincode 555000'),
              dividerfordivide(),
              const SizedBox(height: 16),
              buildSectionTitle('Marketed by'),
              buildSectionContent(
                  'Shop no 1234, Road no 2, Kottarkara, Kerala\nPincode 555000'),
              khbox5,
              dividerfordivide(),
              const SizedBox(height: 16),
              buildSectionTitle('Country of Origin'),
              buildSectionContent('India'),
              khbox5,
              dividerfordivide(),
              const SizedBox(height: 16),
              buildSectionTitle('Contact'),
              khbox5,
              buildSectionContentWithIcons(
                Icons.phone,
                '+91-999-990-0000',
                Icons.email,
                'freshersupermarket@email.com',
              ),
              khbox5,
              dividerfordivide(),
              const SizedBox(height: 16),
              buildSectionTitle('Expiry date'),
              khbox5,
              buildSectionContent(
                'Please refer to the packaging of the product for expiry date',
              ),
              khbox5,
              dividerfordivide(),
              const SizedBox(height: 16),
              buildSectionTitle("Myn's terms & conditions"),
              khbox5,
              buildSectionContent(
                'Please review the legal terms and conditions for Myn in your specific country or area.',
              ),
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

  Widget buildSectionContentWithIcons(
      IconData icon1, String content1, IconData icon2, String content2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon1, color: Colors.grey),
            const SizedBox(width: 8),
            Text(
              content1,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(icon2, color: Colors.grey),
            const SizedBox(width: 8),
            Text(
              content2,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
