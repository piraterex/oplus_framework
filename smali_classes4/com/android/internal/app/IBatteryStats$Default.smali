.class public Lcom/android/internal/app/IBatteryStats$Default;
.super Ljava/lang/Object;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist computeBatteryTimeRemaining()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist computeChargeTimeRemaining()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAwakeTimeBattery()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAwakeTimePlugged()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStatistics()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "updateAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWakeLockStats()Landroid/os/WakeLockStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isCharging()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist noteBleScanReset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    return-void
.end method

.method public blacklist noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    return-void
.end method

.method public blacklist noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    return-void
.end method

.method public blacklist noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    return-void
.end method

.method public blacklist noteBluetoothOff(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    return-void
.end method

.method public blacklist noteBluetoothOn(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    return-void
.end method

.method public blacklist noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "histyoryName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist noteConnectivityChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public blacklist noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public blacklist noteEvent(ILjava/lang/String;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist noteFlashlightOff(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist noteFlashlightOn(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist noteFullWifiLockAcquired(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public blacklist noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    return-void
.end method

.method public blacklist noteFullWifiLockReleased(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public blacklist noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    return-void
.end method

.method public blacklist noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "oldSource"    # Landroid/os/WorkSource;
    .param p2, "newSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist noteGpsSignalQuality(I)V
    .locals 0
    .param p1, "signalLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist noteInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    return-void
.end method

.method public blacklist noteJobFinish(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist noteJobStart(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist noteMobileRadioPowerState(IJI)V
    .locals 0
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public blacklist noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    return-void
.end method

.method public blacklist noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "transportTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public blacklist noteNetworkStatsEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public blacklist notePhoneDataConnectionState(IZII)V
    .locals 0
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I
    .param p4, "nrFrequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist notePhoneOff()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist notePhoneOn()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    return-void
.end method

.method public blacklist notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist notePhoneState(I)V
    .locals 0
    .param p1, "phoneState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public blacklist noteResetAudio()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist noteResetCamera()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist noteResetFlashlight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist noteResetVideo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist noteScreenBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist noteScreenState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist noteStartAudio(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist noteStartCamera(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist noteStartSensor(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist noteStartVideo(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist noteStopAudio(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist noteStopCamera(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist noteStopSensor(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist noteStopVideo(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist noteSyncFinish(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist noteSyncStart(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist noteUserActivity(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist noteVibratorOff(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist noteVibratorOn(IJ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist noteWakeUp(Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public blacklist noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    return-void
.end method

.method public blacklist noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public blacklist noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    return-void
.end method

.method public blacklist noteWifiMulticastDisabled(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    return-void
.end method

.method public blacklist noteWifiMulticastEnabled(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public blacklist noteWifiOff()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public blacklist noteWifiOn()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public blacklist noteWifiRadioPowerState(IJI)V
    .locals 0
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public blacklist noteWifiRssiChanged(I)V
    .locals 0
    .param p1, "newRssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public blacklist noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method public blacklist noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public blacklist noteWifiScanStarted(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public blacklist noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public blacklist noteWifiScanStopped(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public blacklist noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public blacklist noteWifiState(ILjava/lang/String;)V
    .locals 0
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    return-void
.end method

.method public blacklist noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    return-void
.end method

.method public blacklist noteWifiSupplicantStateChanged(IZ)V
    .locals 0
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public blacklist resetBattery(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    return-void
.end method

.method public blacklist setBatteryLevel(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    return-void
.end method

.method public blacklist setBatteryState(IIIIIIIIJ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public blacklist setChargerAcOnline(ZZ)V
    .locals 0
    .param p1, "online"    # Z
    .param p2, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    return-void
.end method

.method public blacklist setChargingStateUpdateDelayMillis(I)Z
    .locals 1
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist suspendBatteryInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method public blacklist takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 1
    .param p1, "uid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unplugBattery(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    return-void
.end method
