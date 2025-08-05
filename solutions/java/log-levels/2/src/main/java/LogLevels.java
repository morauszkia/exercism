public class LogLevels {
    
    public static String message(String logLine) {
        int semicolonIndex = logLine.indexOf(":");
        return logLine.substring(semicolonIndex + 1).trim();
    }

    public static String logLevel(String logLine) {
        int semicolonIndex = logLine.indexOf(":");
        return logLine.substring(1, semicolonIndex - 1).toLowerCase();
    }

    public static String reformat(String logLine) {
        return String.format("%s (%s)", message(logLine), logLevel(logLine));
    }
}
