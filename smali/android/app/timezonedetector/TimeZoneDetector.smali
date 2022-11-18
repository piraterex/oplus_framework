.class public interface abstract Landroid/app/timezonedetector/TimeZoneDetector;
.super Ljava/lang/Object;
.source "TimeZoneDetector.java"


# static fields
.field public static final blacklist SHELL_COMMAND_DUMP_METRICS:Ljava/lang/String; = "dump_metrics"

.field public static final blacklist SHELL_COMMAND_ENABLE_TELEPHONY_FALLBACK:Ljava/lang/String; = "enable_telephony_fallback"

.field public static final blacklist SHELL_COMMAND_IS_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "is_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_IS_GEO_DETECTION_ENABLED:Ljava/lang/String; = "is_geo_detection_enabled"

.field public static final blacklist SHELL_COMMAND_IS_GEO_DETECTION_SUPPORTED:Ljava/lang/String; = "is_geo_detection_supported"

.field public static final blacklist SHELL_COMMAND_IS_TELEPHONY_DETECTION_SUPPORTED:Ljava/lang/String; = "is_telephony_detection_supported"

.field public static final blacklist SHELL_COMMAND_SERVICE_NAME:Ljava/lang/String; = "time_zone_detector"

.field public static final blacklist SHELL_COMMAND_SET_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "set_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SET_GEO_DETECTION_ENABLED:Ljava/lang/String; = "set_geo_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SUGGEST_GEO_LOCATION_TIME_ZONE:Ljava/lang/String; = "suggest_geo_location_time_zone"

.field public static final blacklist SHELL_COMMAND_SUGGEST_MANUAL_TIME_ZONE:Ljava/lang/String; = "suggest_manual_time_zone"

.field public static final blacklist SHELL_COMMAND_SUGGEST_TELEPHONY_TIME_ZONE:Ljava/lang/String; = "suggest_telephony_time_zone"


# direct methods
.method public static blacklist createManualTimeZoneSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .locals 3
    .param p0, "tzId"    # Ljava/lang/String;
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    invoke-direct {v0, p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 121
    return-object v0
.end method


# virtual methods
.method public abstract blacklist suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
.end method

.method public abstract blacklist suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
.end method
