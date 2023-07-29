import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticon;
  const EmoticonFace({
    super.key, required this.emoticon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blue[500],
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
              emoticon,
              style: TextStyle(fontSize: 28),
            ),

        )
    );
  }
}
