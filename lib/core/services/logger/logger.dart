import 'package:logger/logger.dart';

Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0, // Không hiển thị stack trace
    errorMethodCount: 5, // Số lượng dòng stack trace cho lỗi
    lineLength: 100, // Độ dài dòng
    // colors: true, // Bật màu
    // printEmojis: true, // Bật emoji
    printTime: false, // Không hiển thị thời gian
  ),
);
