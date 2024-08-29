import 'package:flutter/material.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.purple, borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.timelapse,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSingleSection('Sales', '12345'),
                _buildSingleSection('Volume', '678910'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSingleSection(String title, String number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Text(number),
      ],
    );
  }


}
