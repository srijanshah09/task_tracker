import 'package:logger/logger.dart';

class ZLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level:  Level.debug,
  );

  // debug
  // info
  // warning
  // error
}