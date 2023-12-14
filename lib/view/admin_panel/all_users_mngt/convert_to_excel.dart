import 'dart:convert';
import 'dart:html' as html;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csv/csv.dart';

Future< void >exportDataToCSV() async {
  Future<List<QueryDocumentSnapshot>> getCollectionData() async {
    final collection = FirebaseFirestore.instance
        .collection('StudentProfileCollection')
        .orderBy('name', descending: false);
    final snapshot = await collection.get();
    return snapshot.docs;
  }

  final data = await getCollectionData();

  final csvData = [
    [
      'Name',
      'phone No',
      'Email',
      'Joining Date',
    ], // CSV header row
    ...data.map((document) => [
          document['name'],
          document['phoneno'],
          document['email'],
          document['joindate'] ?? "",
        ]) // Extract the fields you want to export from each document
  ];

  final csv = const ListToCsvConverter().convert(csvData);

  final bytes = utf8.encode(csv);
  final blob = html.Blob([bytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);

  final anchor = html.document.createElement('a') as html.AnchorElement
    ..href = url
    ..style.display = 'none'
    ..download = 'data.csv';

  html.document.body?.children.add(anchor);
  anchor.click();

  html.document.body?.children.remove(anchor);
  html.Url.revokeObjectUrl(url);
}
