class Json {
  static String stringify(List data) {
    String stringed = '[';
    int index = 0;

    if (data.isNotEmpty) {
      data.forEach((element) {
        stringed += (index > 0) ? ',' + element.toString() : element.toString();
        index++;
      });
    }

    return stringed + "]";
  }
}
