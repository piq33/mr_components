import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

var logger = TalkerFlutter.init(
  settings: TalkerSettings(
    /// You can enable/disable all talker processes with this field
    enabled: true,

    /// You can enable/disable saving logs data in history
    useHistory: true,

    /// Length of history that saving logs data
    maxHistoryItems: 500,

    /// You can enable/disable console logs
    useConsoleLogs: kDebugMode,
  ),

  /// Setup your implementation of logger
  logger: TalkerLogger(
    settings: const TalkerLoggerSettings(
      enableColors: false,
    ),
  ),
);

void logDebug(msg, [error, stackTrace]) => logger.debug(msg, error, stackTrace);
void logInfo(msg, [error, stackTrace]) => logger.info(msg, error, stackTrace);
void logWarning(msg, [error, stackTrace]) =>
    logger.warning(msg, error, stackTrace);
void logError(msg, [error, stackTrace]) => logger.error(msg, error, stackTrace);
