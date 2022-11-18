.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final greylist-max-o CMD_CURRENT_TIME:B = 0x5t

.field public static final greylist-max-o CMD_NULL:B = -0x1t

.field public static final greylist-max-o CMD_OVERFLOW:B = 0x6t

.field public static final greylist-max-o CMD_RESET:B = 0x7t

.field public static final greylist-max-o CMD_SHUTDOWN:B = 0x8t

.field public static final greylist-max-o CMD_START:B = 0x4t

.field public static final greylist CMD_UPDATE:B = 0x0t

.field public static final greylist-max-o EVENT_ACTIVE:I = 0xa

.field public static final greylist-max-o EVENT_ALARM:I = 0xd

.field public static final greylist-max-o EVENT_ALARM_FINISH:I = 0x400d

.field public static final greylist-max-o EVENT_ALARM_START:I = 0x800d

.field public static final greylist-max-o EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final greylist-max-o EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final greylist-max-o EVENT_COUNT:I = 0x16

.field public static final greylist-max-o EVENT_FLAG_FINISH:I = 0x4000

.field public static final greylist-max-o EVENT_FLAG_START:I = 0x8000

.field public static final greylist-max-o EVENT_FOREGROUND:I = 0x2

.field public static final greylist-max-o EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final greylist-max-o EVENT_FOREGROUND_START:I = 0x8002

.field public static final greylist-max-o EVENT_JOB:I = 0x6

.field public static final greylist-max-o EVENT_JOB_FINISH:I = 0x4006

.field public static final greylist-max-o EVENT_JOB_START:I = 0x8006

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK:I = 0x14

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK_FINISH:I = 0x4014

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK_START:I = 0x8014

.field public static final greylist-max-o EVENT_NONE:I = 0x0

.field public static final greylist-max-o EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final greylist-max-o EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final greylist-max-o EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final greylist-max-o EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final greylist-max-o EVENT_PROC:I = 0x1

.field public static final greylist-max-o EVENT_PROC_FINISH:I = 0x4001

.field public static final greylist-max-o EVENT_PROC_START:I = 0x8001

.field public static final greylist-max-o EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final greylist-max-o EVENT_SYNC:I = 0x4

.field public static final greylist-max-o EVENT_SYNC_FINISH:I = 0x4004

.field public static final greylist-max-o EVENT_SYNC_START:I = 0x8004

.field public static final greylist-max-o EVENT_TEMP_WHITELIST:I = 0x11

.field public static final greylist-max-o EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final greylist-max-o EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final greylist-max-o EVENT_TOP:I = 0x3

.field public static final greylist-max-o EVENT_TOP_FINISH:I = 0x4003

.field public static final greylist-max-o EVENT_TOP_START:I = 0x8003

.field public static final greylist-max-o EVENT_TYPE_MASK:I = -0xc001

.field public static final greylist-max-o EVENT_USER_FOREGROUND:I = 0x8

.field public static final greylist-max-o EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final greylist-max-o EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final greylist-max-o EVENT_USER_RUNNING:I = 0x7

.field public static final greylist-max-o EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final greylist-max-o EVENT_USER_RUNNING_START:I = 0x8007

.field public static final greylist-max-o EVENT_WAKEUP_AP:I = 0x13

.field public static final greylist-max-o EVENT_WAKE_LOCK:I = 0x5

.field public static final greylist-max-o EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final greylist-max-o EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final greylist-max-o MOST_INTERESTING_STATES:I = 0x1c0000

.field public static final greylist-max-o MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final greylist-max-o SETTLE_TO_ZERO_STATES:I = -0x1d0000

.field public static final greylist-max-o SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final greylist-max-o STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final greylist-max-o STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final greylist-max-o STATE2_CAMERA_FLAG:I = 0x200000

.field public static final greylist-max-o STATE2_CELLULAR_HIGH_TX_POWER_FLAG:I = 0x80000

.field public static final greylist-max-o STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final greylist-max-o STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final greylist-max-o STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final greylist-max-o STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final greylist-max-o STATE2_GPS_SIGNAL_QUALITY_MASK:I = 0x80

.field public static final greylist-max-o STATE2_GPS_SIGNAL_QUALITY_SHIFT:I = 0x7

.field public static final greylist-max-o STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final greylist-max-o STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final greylist-max-o STATE2_USB_DATA_LINK_FLAG:I = 0x40000

.field public static final greylist-max-o STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final greylist-max-o STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final greylist-max-o STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final greylist-max-o STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final greylist-max-o STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final greylist-max-o STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final greylist-max-o STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final greylist-max-o STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final greylist-max-o STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final greylist-max-o STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final greylist-max-o STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final greylist-max-o STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final greylist-max-o STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final greylist-max-o STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final greylist-max-o STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final greylist-max-o STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final greylist-max-o STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final greylist-max-o STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final greylist-max-o STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final greylist-max-o STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final greylist-max-o STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final greylist-max-o STATE_RESERVED_0:I = 0x1000000

.field public static final greylist-max-o STATE_SCREEN_DOZE_FLAG:I = 0x40000

.field public static final greylist-max-o STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final greylist-max-o STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final greylist-max-o STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final greylist-max-o STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final greylist-max-o STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final greylist-max-o STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final greylist-max-o STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public blacklist batteryChargeUah:I

.field public greylist batteryHealth:B

.field public greylist batteryLevel:B

.field public greylist batteryPlugType:B

.field public greylist batteryStatus:B

.field public greylist-max-o batteryTemperature:S

.field public greylist batteryVoltage:C

.field public greylist cmd:B

.field public greylist-max-o currentTime:J

.field public greylist-max-o eventCode:I

.field public greylist-max-o eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public blacklist modemRailChargeMah:D

.field public greylist-max-p next:Landroid/os/BatteryStats$HistoryItem;

.field public greylist-max-o numReadInts:I

.field public greylist states:I

.field public greylist states2:I

.field public greylist-max-o stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public blacklist tagsFirstOccurrence:Z

.field public greylist time:J

.field public greylist-max-o wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public greylist-max-o wakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public blacklist wifiRailChargeMah:D


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1802
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2014
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2015
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2016
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2024
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 2026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1802
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2014
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2015
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2016
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2027
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 2028
    return-void
.end method

.method private greylist-max-o setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2146
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2147
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2148
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2149
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2150
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2151
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2152
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2153
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2154
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2155
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2156
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2157
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2159
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_0

    .line 2161
    :cond_0
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2163
    :goto_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1

    .line 2164
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2165
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_1

    .line 2167
    :cond_1
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2169
    :goto_1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2170
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_2

    .line 2171
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2172
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_2

    .line 2174
    :cond_2
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2176
    :goto_2
    iget-boolean v0, p1, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2177
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2178
    return-void
.end method


# virtual methods
.method public greylist-max-p clear()V
    .locals 3

    .line 2111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2112
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2113
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2114
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2115
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2116
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2117
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2118
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2119
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2121
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2122
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2123
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2124
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2125
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2126
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2127
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2128
    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2129
    return-void
.end method

.method public greylist-max-o isDeltaData()Z
    .locals 1

    .line 1809
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "src"    # Landroid/os/Parcel;

    .line 2065
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2066
    .local v0, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2068
    .local v1, "bat":I
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2069
    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2070
    shr-int/lit8 v2, v1, 0x10

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2071
    shr-int/lit8 v2, v1, 0x14

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2072
    shr-int/lit8 v2, v1, 0x18

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2074
    .local v2, "bat2":I
    const v3, 0xffff

    and-int v4, v2, v3

    int-to-short v4, v4

    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2075
    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v3, v4

    int-to-char v3, v3

    iput-char v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2077
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2078
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2081
    const/high16 v3, 0x10000000

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2082
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2083
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 2085
    :cond_0
    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2087
    :goto_0
    const/high16 v3, 0x20000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 2088
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2089
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 2091
    :cond_1
    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2093
    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 2094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2095
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2096
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_2

    .line 2098
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2099
    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2101
    :goto_2
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 2104
    :cond_3
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_4

    .line 2102
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2106
    :goto_4
    iget v3, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2107
    return-void
.end method

.method public greylist-max-p same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2197
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 2200
    :cond_0
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_3

    .line 2201
    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2204
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2205
    return v1

    .line 2202
    :cond_2
    :goto_0
    return v1

    .line 2208
    :cond_3
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_6

    .line 2209
    if-eqz v0, :cond_5

    if-nez v2, :cond_4

    goto :goto_1

    .line 2212
    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2213
    return v1

    .line 2210
    :cond_5
    :goto_1
    return v1

    .line 2216
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_9

    .line 2217
    if-eqz v0, :cond_8

    if-nez v2, :cond_7

    goto :goto_2

    .line 2220
    :cond_7
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2221
    return v1

    .line 2218
    :cond_8
    :goto_2
    return v1

    .line 2224
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 2198
    :cond_a
    :goto_3
    return v1
.end method

.method public greylist-max-o sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 4
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2181
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-p setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2140
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2141
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2142
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2143
    return-void
.end method

.method public greylist-max-p setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2133
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2134
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2135
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2136
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2031
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2032
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xf0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x14

    const/high16 v2, 0xf00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2037
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 2038
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_1

    const/high16 v1, 0x20000000

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    .line 2039
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    :cond_2
    or-int/2addr v0, v2

    .line 2040
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 2043
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2046
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2047
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_3

    .line 2050
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2052
    :cond_3
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_4

    .line 2053
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2055
    :cond_4
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_5

    .line 2056
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2059
    :cond_5
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 2060
    :cond_6
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2062
    :cond_7
    return-void
.end method
