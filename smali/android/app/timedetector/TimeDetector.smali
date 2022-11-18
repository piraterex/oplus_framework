.class public interface abstract Landroid/app/timedetector/TimeDetector;
.super Ljava/lang/Object;
.source "TimeDetector.java"


# static fields
.field public static final blacklist SHELL_COMMAND_IS_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "is_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SERVICE_NAME:Ljava/lang/String; = "time_detector"


# direct methods
.method public static blacklist createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;
    .locals 4
    .param p0, "when"    # J
    .param p2, "why"    # Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/os/TimestampedValue;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 54
    .local v0, "utcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    new-instance v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-direct {v1, v0}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/os/TimestampedValue;)V

    .line 55
    .local v1, "manualTimeSuggestion":Landroid/app/timedetector/ManualTimeSuggestion;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public abstract blacklist suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
.end method

.method public abstract blacklist suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
.end method

.method public abstract blacklist suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract blacklist suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method
