import 'package:flutter/material.dart';

class PriceFilterBottomSheet extends StatefulWidget {
  const PriceFilterBottomSheet({super.key});

  @override
  _PriceFilterBottomSheetState createState() => _PriceFilterBottomSheetState();
}

class _PriceFilterBottomSheetState extends State<PriceFilterBottomSheet> {
  List<bool> _isChecked = List.generate(6, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'PRICE',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _buildCheckboxItem('Less than ₹20', 0),
          _buildCheckboxItem('₹21 to ₹50', 1),
          _buildCheckboxItem('₹51 to ₹100', 2),
          _buildCheckboxItem('₹101 to ₹200', 3),
          _buildCheckboxItem('₹201 to ₹500', 4),
          _buildCheckboxItem('More than ₹500', 5),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: const Text('Clear All'),
                  onPressed: _clearAll,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    // : Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  child: const Text('Apply'),
                  onPressed: _apply,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxItem(String label, int index) {
    return CheckboxListTile(
      title: Text(label),
      value: _isChecked[index],
      onChanged: (bool? value) {
        setState(() {
          _isChecked[index] = value!;
        });
      },
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }

  void _clearAll() {
    setState(() {
      _isChecked = List.generate(6, (_) => false);
    });
  }

  void _apply() {
    // Implement the apply logic here
    Navigator.pop(context);
  }
}
