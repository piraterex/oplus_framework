.class public interface abstract Lcom/android/internal/os/IBatteryStatsImplExt;
.super Ljava/lang/Object;
.source "IBatteryStatsImplExt.java"


# virtual methods
.method public blacklist addDevicePowerStatsDeltaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "curStatSubsystemPowerState"    # Ljava/lang/String;

    .line 128
    return-object p1
.end method

.method public blacklist addThermalForegroundApp(JJLjava/lang/String;II)V
    .locals 0
    .param p1, "elapsedRealTime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "code"    # I

    .line 173
    return-void
.end method

.method public blacklist addThermalJobProc(JJLjava/lang/String;)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;

    .line 180
    return-void
.end method

.method public blacklist addThermalNetState(JJZ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "netState"    # Z

    .line 189
    return-void
.end method

.method public blacklist addThermalOnOffEvent(IJJZ)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "on"    # Z

    .line 182
    return-void
.end method

.method public blacklist addThermalPhoneOnOff(JJZ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 191
    return-void
.end method

.method public blacklist addThermalPhoneSignal(JJB)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "signal"    # B

    .line 193
    return-void
.end method

.method public blacklist addThermalPhoneState(JJB)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "state"    # B

    .line 195
    return-void
.end method

.method public blacklist addThermalScreenBrightnessEvent(JJII)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "backlight"    # I
    .param p6, "delayTime"    # I

    .line 185
    return-void
.end method

.method public blacklist addThermalWifiRssi(JJI)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "wifiSignalStrengthBin"    # I

    .line 201
    return-void
.end method

.method public blacklist addThermalWifiStatus(JJI)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "status"    # I

    .line 199
    return-void
.end method

.method public blacklist addThermalnetSyncProc(JJLjava/lang/String;)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;

    .line 178
    return-void
.end method

.method public blacklist backupThermalLogFile()V
    .locals 0

    .line 99
    return-void
.end method

.method public blacklist backupThermalStatsFile()V
    .locals 0

    .line 96
    return-void
.end method

.method public blacklist clearThermalAllHistory()V
    .locals 0

    .line 69
    return-void
.end method

.method public blacklist collectCheckinFile(ILandroid/util/AtomicFile;Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .param p1, "lowDischargeAmountSinceCharge"    # I
    .param p2, "checkinFile"    # Landroid/util/AtomicFile;
    .param p3, "callback"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 135
    return-void
.end method

.method public blacklist dumpThemalHeatDetailLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 102
    return-void
.end method

.method public blacklist dumpThemalLocked(Ljava/io/PrintWriter;J)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "histStart"    # J

    .line 66
    return-void
.end method

.method public blacklist dumpThemalRawLocked(Ljava/io/PrintWriter;J)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "histStart"    # J

    .line 93
    return-void
.end method

.method public blacklist dumpThemalRecLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .line 120
    return-void
.end method

.method public blacklist dumpThermalConfig(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 117
    return-void
.end method

.method public blacklist getMonitorAppLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 90
    return-void
.end method

.method public blacklist getPhoneTemp(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 105
    return-void
.end method

.method public blacklist initBatteryStatsImplExtImpl(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .param p1, "battStatsImpl"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 54
    return-void
.end method

.method public blacklist initBatteryStatsImplExtImpl(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V
    .locals 0
    .param p1, "battStatsImpl"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public blacklist logSwitch(Z)V
    .locals 0
    .param p1, "en"    # Z

    .line 114
    return-void
.end method

.method public blacklist noteActivityLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isOnBattery"    # Z
    .param p4, "historyCur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p5, "pausedElapsedRealtime1"    # J
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "currentTopActivity"    # Ljava/lang/String;
    .param p9, "resumed"    # Z
    .param p10, "context"    # Landroid/content/Context;

    .line 164
    return-void
.end method

.method public blacklist noteActivityPausedLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isOnBattery"    # Z
    .param p4, "mHistoryCur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p5, "pausedElapsedRealtime1"    # J
    .param p7, "handler"    # Landroid/os/Handler;

    .line 156
    return-void
.end method

.method public blacklist noteActivityResumedLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isOnBattery"    # Z
    .param p4, "historyCur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p5, "pausedElapsedRealtime1"    # J
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "currentTopActivity"    # Ljava/lang/String;

    .line 160
    return-void
.end method

.method public blacklist noteConnectivityChangedLocked(ILjava/lang/String;JJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 175
    return-void
.end method

.method public blacklist notePhoneDataConnectionStateLocked(JJI)V
    .locals 0
    .param p1, "elapsedTime"    # J
    .param p3, "upTime"    # J
    .param p5, "dataType"    # I

    .line 197
    return-void
.end method

.method public blacklist noteScreenBrightnessModeChangedLock(Z)V
    .locals 0
    .param p1, "isAuto"    # Z

    .line 60
    return-void
.end method

.method public blacklist onBatteryStatsMessageHandle(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onSystemServicesReady(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    return-void
.end method

.method public blacklist printChargeMapLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 111
    return-void
.end method

.method public blacklist printThermalHeatThreshold(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 81
    return-void
.end method

.method public blacklist printThermalUploadTemp(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 108
    return-void
.end method

.method public blacklist recordBluetoothPowerDrainMaMs(J)V
    .locals 0
    .param p1, "powerdrains"    # J

    .line 150
    return-void
.end method

.method public blacklist recordGpsPowerDrainMaMs(J)V
    .locals 0
    .param p1, "powerdrains"    # J

    .line 132
    return-void
.end method

.method public blacklist recordMobilePowerDrainMaMs(J)V
    .locals 0
    .param p1, "powerdrains"    # J

    .line 144
    return-void
.end method

.method public blacklist recordNetworkActivityBytes(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J

    .line 138
    return-void
.end method

.method public blacklist recordWifiPowerDrainMaMs(J)V
    .locals 0
    .param p1, "powerdrains"    # J

    .line 141
    return-void
.end method

.method public blacklist setHeatBetweenTime(Ljava/io/PrintWriter;I)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # I

    .line 84
    return-void
.end method

.method public blacklist setInBatteryStatsImplInstance(Landroid/os/BatteryStats;)V
    .locals 0
    .param p1, "impl"    # Landroid/os/BatteryStats;

    .line 45
    return-void
.end method

.method public blacklist setMonitorAppLimitTime(Ljava/io/PrintWriter;I)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "limitTime"    # I

    .line 87
    return-void
.end method

.method public blacklist setScreenBrightness(I)V
    .locals 0
    .param p1, "value"    # I

    .line 187
    return-void
.end method

.method public blacklist setThermalConfig()V
    .locals 0

    .line 63
    return-void
.end method

.method public blacklist setThermalCpuLoading(IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "load1"    # I
    .param p2, "load5"    # I
    .param p3, "load15"    # I
    .param p4, "cpuLoading"    # I
    .param p5, "maxCpu"    # I
    .param p6, "cpuProc"    # Ljava/lang/String;
    .param p7, "simpleTopProc"    # Ljava/lang/String;

    .line 171
    return-void
.end method

.method public blacklist setThermalHeatThreshold(Ljava/io/PrintWriter;I)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "threshold"    # I

    .line 78
    return-void
.end method

.method public blacklist setThermalState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "thermalState"    # Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public blacklist toggleThermalDebugSwith(Ljava/io/PrintWriter;I)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "on"    # I

    .line 72
    return-void
.end method

.method public blacklist updateCpuStatsNow(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 75
    return-void
.end method

.method public blacklist updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V
    .locals 0
    .param p1, "deltaInfo"    # Landroid/telephony/ModemActivityInfo;

    .line 147
    return-void
.end method
