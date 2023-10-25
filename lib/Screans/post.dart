import 'package:flutter/material.dart';

class _Post extends StatelessWidget {
  const _Post({super.key});

  @override
  Widget build(BuildContext context) {
    return(
    Container(
      decoration: BoxDecoration(
        color: Colors.teal[400],
      ),
      child: Text("hello from poster "),
    )
    );
  }
}
