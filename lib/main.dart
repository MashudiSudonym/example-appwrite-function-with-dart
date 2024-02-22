import 'dart:async';
import 'dart:convert';
import 'dart:io';

// import 'package:dart_appwrite/dart_appwrite.dart';

Future<dynamic> main(final context) async {
  // final client = Client()
  //     .setEndpoint('https://cloud.appwrite.io/v1')
  //     .setProject(Platform.environment['APPWRITE_FUNCTION_PROJECT_ID'])
  //     .setKey(Platform.environment['APPWRITE_API_KEY']);

  // final database = Databases(client);

  // try {
  //   final documents = await database.listDocuments(
  //     databaseId: '649fbcca22cf7b243ded',
  //     collectionId: '649fbcd2ae86c3fb7c07',
  //   );

  //   for (var element in documents.documents) {
  //     context.log(element.data);
  //   }
  // } on AppwriteException catch (e) {
  //   context.error(e);
  // }

  final data = await readFile('data.json');
  context.log(data);

  return context.res.send("Check the Appwrite Console to see logs and errors!");
}

Future<Map<String, dynamic>> readFile(String filePath) async {
  final file = File(filePath);
  final contents = await file.readAsString();
  final data = json.decode(contents) as Map<String, dynamic>;
  return data;
}
