// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TableInFlutter extends StatefulWidget {
  const TableInFlutter({super.key});

  @override
  State<TableInFlutter> createState() => _TableInFlutterState();
}

class _TableInFlutterState extends State<TableInFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          'Table In Flutter',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: DataTable(
              border: TableBorder.all(width: 2),
              headingTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Address')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('John')), //for Name
                  DataCell(Text('23')), //for Age
                  DataCell(Text('Nepal')), //for address
                ]),
                //similarly we can create many data rows
                DataRow(cells: [
                  DataCell(Text('Pawan')), //for Name
                  DataCell(Text('24')), //for Age
                  DataCell(Text('USA')), //for address
                ]),
                DataRow(cells: [
                  DataCell(Text('Harry')), //for Name
                  DataCell(Text('22')), //for Age
                  DataCell(Text('Canada')), //for address
                ]),
              ]),
        ),
      ),
    );
  }
}
