part of dart_utils;

class FileWriter {
  const FileWriter();

  Future<void> writeString(String path, String value) async {
    final file = File.fromUri(Uri.file(path));

    if (!await file.exists()) {
      await file.create(recursive: true);
    }

    await file.writeAsString(value);
  }

  Future<void> writeJson(String path, Map<String, Object?> value) async {
    final string = jsonEncode(value);

    await writeString(path, string);
  }
}
