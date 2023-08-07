// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproject/srecices/thai_dthoxing_srecices.dart';

class ChangeNotifierProvider extends StatefulWidget {
  const ChangeNotifierProvider({super.key, required ThaiDanceServices Function(dynamic _) create});

  @override
  State<ChangeNotifierProvider> createState() => _ChangeNotifierProviderState();
}

class _ChangeNotifierProviderState extends State<ChangeNotifierProvider> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}