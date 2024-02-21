import 'dart:async';
import 'dart:io';
import 'package:dart_appwrite/dart_appwrite.dart';

Future<dynamic> main(final context) async {
  final client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1')
      .setProject(Platform.environment['APPWRITE_FUNCTION_PROJECT_ID'])
      .setKey(Platform.environment['APPWRITE_API_KEY']);

  final database = Databases(client);

  try {
    await database.listDocuments(
      databaseId: '649fbcca22cf7b243ded',
      collectionId: '649fbcd2ae86c3fb7c07',
    );
    context.log('success');
  } on AppwriteException catch (e) {
    context.error(e);
  }

  return context.res.send("Check the Appwrite Console to see logs and errors!");
}
