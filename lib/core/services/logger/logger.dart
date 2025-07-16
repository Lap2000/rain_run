import 'package:logger/logger.dart';

Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0, // not show stack trace
    errorMethodCount: 5,
    lineLength: 100,
    // colors: true, // color
    // printEmojis: true, // emoji
    printTime: false, // not show time
  ),
);
