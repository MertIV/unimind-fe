class PathNotProvidedException implements Exception {
  String className = "";
  static String? message;

  PathNotProvidedException(this.className) {
    message = "$className path not provided.Add path to getApiPath() function in ServiceFactory.";
  }
}

class ModelNotProvidedException implements Exception {
  String className = "";
  static String? message;

  ModelNotProvidedException(this.className) {
    message = "$className model not provided.Add model to fromJson() function in ServiceFactory.";
  }
}
