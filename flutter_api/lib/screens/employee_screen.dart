import 'package:flutter/material.dart';
import 'package:flutter_api/services/employee_services.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Karyawan"),
        actions: [
          IconButton(
            onPressed: () {
              EmployeeServices().getEmployees();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
