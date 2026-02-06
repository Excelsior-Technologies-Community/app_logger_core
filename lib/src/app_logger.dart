import 'dart:developer' as developer;

import 'log_level.dart';
import 'log_style.dart';

class AppLogger {
  static bool enableLogs = true;

  static void log(
      String message, {
        LogLevel level = LogLevel.info,
        String tag = 'APP',
      }) {
    if (!enableLogs) return;

    final time = DateTime.now().toIso8601String();
    final emoji = _emoji(level);
    final color = _color(level);

    final formattedMessage =
        '$color$emoji [$tag] [$time] $message${LogStyle.reset}';

    developer.log(
      formattedMessage,
      name: tag,
      level: _levelNumber(level),
    );
  }

  static String _emoji(LogLevel level) {
    switch (level) {
      case LogLevel.success:
        return '✅';
      case LogLevel.warning:
        return '⚠️';
      case LogLevel.error:
        return '❌';
      case LogLevel.debug:
        return '🐛';
      case LogLevel.info:
      default:
        return 'ℹ️';
    }
  }

  static String _color(LogLevel level) {
    switch (level) {
      case LogLevel.success:
        return LogStyle.success;
      case LogLevel.warning:
        return LogStyle.warning;
      case LogLevel.error:
        return LogStyle.error;
      case LogLevel.debug:
        return LogStyle.debug;
      case LogLevel.info:
      default:
        return LogStyle.info;
    }
  }

  static int _levelNumber(LogLevel level) {
    switch (level) {
      case LogLevel.error:
        return 1000;
      case LogLevel.warning:
        return 900;
      case LogLevel.debug:
        return 700;
      case LogLevel.success:
        return 800;
      case LogLevel.info:
      default:
        return 800;
    }
  }
}
