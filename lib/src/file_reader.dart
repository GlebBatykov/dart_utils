part of dart_utils;

class FileReader {
  const FileReader();

  Future<String> readAsString(String path) async {
    final file = File.fromUri(Uri.file(path));

    return file.readAsString();
  }

  Future<Object?> readAsJson(String path) async {
    final string = await readAsString(path);

    return jsonDecode(string);
  }
}
