.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;,
        Lcom/android/internal/os/PowerProfile$Subsystem;,
        Lcom/android/internal/os/PowerProfile$PowerGroup;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_NAME:Ljava/lang/String; = "name"

.field private static final greylist-max-o CPU_CLUSTER_POWER_COUNT:Ljava/lang/String; = "cpu.cluster_power.cluster"

.field private static final greylist-max-o CPU_CORE_POWER_PREFIX:Ljava/lang/String; = "cpu.core_power.cluster"

.field private static final greylist-max-o CPU_CORE_SPEED_PREFIX:Ljava/lang/String; = "cpu.core_speeds.cluster"

.field private static final greylist-max-o CPU_PER_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field public static final greylist-max-o POWER_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_AUDIO:Ljava/lang/String; = "audio"

.field public static final greylist-max-o POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final greylist-max-o POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final greylist POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final greylist POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final greylist POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final greylist-max-o POWER_CPU_SUSPEND:Ljava/lang/String; = "cpu.suspend"

.field public static final greylist-max-o POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final greylist POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final greylist-max-o POWER_GPS_OPERATING_VOLTAGE:Ljava/lang/String; = "gps.voltage"

.field public static final greylist-max-o POWER_GPS_SIGNAL_QUALITY_BASED:Ljava/lang/String; = "gps.signalqualitybased"

.field public static final blacklist POWER_GROUP_DISPLAY_AMBIENT:Ljava/lang/String; = "ambient.on.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_FULL:Ljava/lang/String; = "screen.full.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_ON:Ljava/lang/String; = "screen.on.display"

.field public static final greylist-max-o POWER_MEMORY:Ljava/lang/String; = "memory.bandwidths"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_SLEEP:Ljava/lang/String; = "modem.controller.sleep"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final greylist POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final greylist POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final greylist POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final greylist POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_VIDEO:Ljava/lang/String; = "video"

.field public static final greylist POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final greylist-max-o POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final greylist POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final greylist POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final blacklist SUBSYSTEM_FIELDS_MASK:J = -0x1L

.field private static final blacklist SUBSYSTEM_MASK:J = 0xf00000000L

.field public static final blacklist SUBSYSTEM_MODEM:J = 0x100000000L

.field public static final blacklist SUBSYSTEM_NONE:J = 0x0L

.field public static final blacklist TAG:Ljava/lang/String; = "PowerProfile"

.field private static final greylist-max-o TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final greylist-max-o TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final greylist-max-o TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final greylist-max-o TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TAG_MODEM:Ljava/lang/String; = "modem"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field static final blacklist sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

.field static final greylist-max-o sPowerArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sPowerItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

.field private blacklist mNumDisplays:I

.field blacklist mPowerProfileExt:Lcom/android/internal/os/IPowerProfileExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    .line 311
    new-instance v0, Lcom/android/internal/power/ModemPowerProfile;

    invoke-direct {v0}, Lcom/android/internal/power/ModemPowerProfile;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    .line 333
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forTest"    # Z

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const-class v0, Lcom/android/internal/os/IPowerProfileExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IPowerProfileExt;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mPowerProfileExt:Lcom/android/internal/os/IPowerProfileExt;

    .line 341
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    if-eqz p2, :cond_0

    const v1, 0x1170013

    goto :goto_0

    .line 343
    :cond_0
    const v1, 0x1170012

    :goto_0
    nop

    .line 344
    .local v1, "xmlId":I
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 345
    .end local v1    # "xmlId":I
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "ordinal"    # I

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleDeprecatedModemConstant(ILjava/lang/String;I)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "deprecatedKey"    # Ljava/lang/String;
    .param p3, "level"    # I

    .line 625
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v1

    .line 626
    .local v1, "drain":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 628
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    .line 629
    .local v3, "deprecatedDrain":D
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 630
    return-void
.end method

.method private greylist-max-o initCpuClusters()V
    .locals 11

    .line 474
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v1, "cpu.clusters.cores"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 476
    .local v0, "data":[Ljava/lang/Double;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 477
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 478
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 479
    .local v2, "numCpusInCluster":I
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v10, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu.core_speeds.cluster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu.cluster_power.cluster"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.core_power.cluster"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v10

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    aput-object v10, v3, v1

    .line 477
    .end local v2    # "numCpusInCluster":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "data":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    :cond_0
    goto :goto_1

    .line 485
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 486
    const/4 v0, 0x1

    .line 487
    .local v0, "numCpus":I
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 490
    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v6, 0x0

    const-string v2, "cpu.core_speeds.cluster0"

    const-string v3, "cpu.cluster_power.cluster0"

    const-string v4, "cpu.core_power.cluster0"

    move-object v1, v9

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    aput-object v9, v7, v8

    .line 493
    .end local v0    # "numCpus":I
    :goto_1
    return-void
.end method

.method private blacklist initDisplays()V
    .locals 12

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 552
    :goto_0
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 553
    const-string v2, "ambient.on.display"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v5

    .line 552
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 555
    const-string/jumbo v6, "screen.on.display"

    invoke-virtual {p0, v6, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v7

    .line 554
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 557
    const-string/jumbo v7, "screen.full.display"

    invoke-virtual {p0, v7, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v3

    .line 556
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 563
    :cond_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "ambient.on"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 564
    .local v3, "deprecatedAmbientDisplay":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 565
    .local v4, "legacy":Z
    const-string v8, " instead."

    const-string v9, "PowerProfile"

    if-eqz v3, :cond_1

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_1

    .line 566
    invoke-static {v2, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ambient.on is deprecated! Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const/4 v4, 0x1

    .line 572
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "screen.on"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 573
    .local v2, "deprecatedScreenOn":Ljava/lang/Double;
    if-eqz v2, :cond_2

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_2

    .line 574
    invoke-static {v6, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "screen.on is deprecated! Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/4 v4, 0x1

    .line 580
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "screen.full"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 581
    .local v6, "deprecatedScreenFull":Ljava/lang/Double;
    if-eqz v6, :cond_3

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_3

    .line 582
    invoke-static {v7, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "screen.full is deprecated! Use "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const/4 v4, 0x1

    .line 587
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 588
    iput v5, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 590
    :cond_4
    return-void

    .line 559
    .end local v2    # "deprecatedScreenOn":Ljava/lang/Double;
    .end local v3    # "deprecatedAmbientDisplay":Ljava/lang/Double;
    .end local v4    # "legacy":Z
    .end local v6    # "deprecatedScreenFull":Ljava/lang/Double;
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    goto/16 :goto_0
.end method

.method private blacklist initLocked(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 365
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;I)V

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 369
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initDisplays()V

    .line 370
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initModem()V

    .line 371
    return-void
.end method

.method private blacklist initModem()V
    .locals 3

    .line 600
    const/4 v0, 0x0

    const-string/jumbo v1, "modem.controller.sleep"

    invoke-direct {p0, v0, v1, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 602
    const/high16 v1, 0x10000000

    const-string/jumbo v2, "modem.controller.idle"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 604
    const/high16 v1, 0x20000000

    const-string/jumbo v2, "modem.controller.rx"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 607
    const/high16 v1, 0x30000000

    const-string/jumbo v2, "modem.controller.tx"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 610
    const/high16 v0, 0x31000000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 613
    const/high16 v0, 0x32000000

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 616
    const/high16 v0, 0x33000000

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 619
    const/high16 v0, 0x34000000

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 622
    return-void
.end method

.method static synthetic blacklist lambda$dump$0(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 944
    invoke-virtual {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 945
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 946
    return-void
.end method

.method static synthetic blacklist lambda$dump$1(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/Double;)V
    .locals 1
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Double;

    .line 948
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 949
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 950
    return-void
.end method

.method private blacklist readPowerValuesFromXml(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 374
    const-string/jumbo v1, "item"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 377
    .local v2, "resources":Landroid/content/res/Resources;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/android/internal/os/PowerProfile;->mPowerProfileExt:Lcom/android/internal/os/IPowerProfileExt;

    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-interface {v0, v4, v5}, Lcom/android/internal/os/IPowerProfileExt;->readPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    const/4 v4, 0x4

    if-nez v0, :cond_9

    .line 379
    move/from16 v5, p2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 380
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 381
    .local v7, "parsingArray":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 382
    .local v8, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v9, 0x0

    .line 385
    .local v9, "arrayName":Ljava/lang/String;
    :try_start_0
    const-string v0, "device"

    invoke-static {v6, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 388
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 390
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 391
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 422
    .end local v10    # "element":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 423
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Double;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Double;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 431
    goto/16 :goto_7

    .line 393
    .restart local v10    # "element":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "value"

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 395
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Double;

    invoke-virtual {v11, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const/4 v7, 0x0

    .line 398
    :cond_2
    const-string v11, "array"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    if-eqz v11, :cond_3

    .line 399
    const/4 v7, 0x1

    .line 400
    :try_start_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 401
    invoke-interface {v6, v13, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "arrayName":Ljava/lang/String;
    .local v0, "arrayName":Ljava/lang/String;
    goto :goto_5

    .line 402
    .end local v0    # "arrayName":Ljava/lang/String;
    .restart local v9    # "arrayName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 418
    :cond_4
    const-string/jumbo v0, "modem"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 419
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, v6}, Lcom/android/internal/power/ModemPowerProfile;->parseFromXml(Landroid/content/res/XmlResourceParser;)V

    goto :goto_5

    .line 403
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 404
    .local v0, "name":Ljava/lang/String;
    if-nez v7, :cond_6

    invoke-interface {v6, v13, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_2

    :cond_6
    move-object v11, v0

    .line 405
    .end local v0    # "name":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 406
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v0

    .line 407
    .local v12, "power":Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 409
    .local v13, "value":D
    :try_start_3
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v13, v15

    .line 411
    goto :goto_3

    .line 410
    :catch_0
    move-exception v0

    .line 412
    :goto_3
    :try_start_4
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 413
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 414
    :cond_7
    if-eqz v7, :cond_8

    .line 415
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 418
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "power":Ljava/lang/String;
    .end local v13    # "value":D
    :cond_8
    :goto_4
    nop

    .line 421
    .end local v10    # "element":Ljava/lang/String;
    :goto_5
    goto/16 :goto_0

    .line 430
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 427
    :catch_1
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "parsingArray":Z
    .end local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v9    # "arrayName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "xmlId":I
    throw v1

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "parsingArray":Z
    .restart local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v9    # "arrayName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "xmlId":I
    :catch_2
    move-exception v0

    .line 426
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "parsingArray":Z
    .end local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v9    # "arrayName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "xmlId":I
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "parsingArray":Z
    .restart local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v9    # "arrayName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "xmlId":I
    :goto_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 431
    throw v0

    .line 377
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "parsingArray":Z
    .end local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v9    # "arrayName":Ljava/lang/String;
    :cond_9
    move/from16 v5, p2

    .line 438
    :goto_7
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 445
    .local v0, "configResIds":[I
    const-string v1, "bluetooth.controller.idle"

    const-string v4, "bluetooth.controller.rx"

    const-string v6, "bluetooth.controller.tx"

    const-string v7, "bluetooth.controller.voltage"

    filled-new-array {v1, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "configResIdKeys":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    array-length v6, v0

    if-ge v4, v6, :cond_c

    .line 453
    aget-object v6, v1, v4

    .line 456
    .local v6, "key":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_a

    .line 457
    goto :goto_9

    .line 459
    :cond_a
    aget v8, v0, v4

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 460
    .local v8, "value":I
    if-lez v8, :cond_b

    .line 461
    int-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_b
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 464
    .end local v4    # "i":I
    :cond_c
    return-void

    :array_0
    .array-data 4
        0x10e0021
        0x10e0026
        0x10e0027
        0x10e0025
    .end array-data
.end method

.method private blacklist writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 966
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 968
    .local v3, "d":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, p3, p4, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 967
    .end local v3    # "d":Ljava/lang/Double;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 971
    :cond_0
    return-void
.end method

.method private blacklist writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 959
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 962
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 942
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 943
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 947
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 951
    const-string v1, "Modem values:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 953
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1, v0}, Lcom/android/internal/power/ModemPowerProfile;->dump(Ljava/io/PrintWriter;)V

    .line 954
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 955
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 782
    const-string v0, "cpu.suspend"

    const-wide v1, 0x10100000001L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 785
    const-string v0, "cpu.idle"

    const-wide v1, 0x10100000002L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 788
    const-string v0, "cpu.active"

    const-wide v3, 0x10100000003L

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 794
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 795
    const-wide v3, 0x20b00000028L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 796
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 797
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetclusterPowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v6

    .line 798
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 797
    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 799
    const-wide v5, 0x10500000003L

    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v7, v7, v0

    invoke-static {v7}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetnumCpus(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 800
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_0

    aget-object v9, v5, v8

    .line 801
    .local v9, "speed":Ljava/lang/Double;
    const-wide v10, 0x20300000004L

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 800
    .end local v9    # "speed":Ljava/lang/Double;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 803
    :cond_0
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetcorePowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 804
    .local v8, "corePower":Ljava/lang/Double;
    const-wide v9, 0x20100000005L

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 803
    .end local v8    # "corePower":Ljava/lang/Double;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 806
    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 794
    .end local v3    # "token":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 810
    .end local v0    # "cluster":I
    :cond_2
    const-wide v0, 0x10100000004L

    const-string/jumbo v2, "wifi.scan"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 813
    const-wide v0, 0x10100000005L

    const-string/jumbo v2, "wifi.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 816
    const-wide v0, 0x10100000006L

    const-string/jumbo v2, "wifi.active"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 819
    const-wide v0, 0x10100000007L

    const-string/jumbo v2, "wifi.controller.idle"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 823
    const-wide v0, 0x10100000008L

    const-string/jumbo v2, "wifi.controller.rx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 827
    const-wide v0, 0x10100000009L

    const-string/jumbo v2, "wifi.controller.tx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 831
    const-wide v0, 0x2010000000aL

    const-string/jumbo v2, "wifi.controller.tx_levels"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 835
    const-wide v0, 0x1010000000bL

    const-string/jumbo v2, "wifi.controller.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 839
    const-wide v0, 0x1010000000cL

    const-string v2, "bluetooth.controller.idle"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 843
    const-wide v0, 0x1010000000dL

    const-string v2, "bluetooth.controller.rx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 847
    const-wide v0, 0x1010000000eL

    const-string v2, "bluetooth.controller.tx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 851
    const-wide v0, 0x1010000000fL

    const-string v2, "bluetooth.controller.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 855
    const-wide v0, 0x10100000010L

    const-string/jumbo v2, "modem.controller.sleep"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 859
    const-wide v0, 0x10100000011L

    const-string/jumbo v2, "modem.controller.idle"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 863
    const-wide v0, 0x10100000012L

    const-string/jumbo v2, "modem.controller.rx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 867
    const-wide v0, 0x20100000013L

    const-string/jumbo v2, "modem.controller.tx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 871
    const-wide v0, 0x10100000014L

    const-string/jumbo v2, "modem.controller.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 875
    const-wide v0, 0x10100000015L

    const-string v2, "gps.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 878
    const-wide v0, 0x20100000016L

    const-string v2, "gps.signalqualitybased"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 882
    const-wide v0, 0x10100000017L

    const-string v2, "gps.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 886
    const-wide v0, 0x10100000018L

    const-string v2, "bluetooth.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 889
    const-wide v0, 0x10100000019L

    const-string v2, "bluetooth.active"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 893
    const-wide v0, 0x1010000001aL

    const-string v2, "bluetooth.at"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 897
    const-wide v0, 0x1010000001bL

    const-string v2, "ambient.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 900
    const-wide v0, 0x1010000001cL

    const-string/jumbo v2, "screen.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 903
    const-wide v0, 0x1010000001dL

    const-string/jumbo v2, "radio.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 906
    const-wide v0, 0x1010000001eL

    const-string/jumbo v2, "radio.scanning"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 909
    const-wide v0, 0x1010000001fL

    const-string/jumbo v2, "radio.active"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 912
    const-wide v0, 0x10100000020L

    const-string/jumbo v2, "screen.full"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 915
    const-wide v0, 0x10100000021L

    const-string v2, "audio"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 918
    const-wide v0, 0x10100000022L

    const-string/jumbo v2, "video"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 921
    const-wide v0, 0x10100000023L

    const-string v2, "camera.flashlight"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 924
    const-wide v0, 0x10100000024L

    const-string/jumbo v2, "memory.bandwidths"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 927
    const-wide v0, 0x10100000025L

    const-string v2, "camera.avg"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 930
    const-wide v0, 0x10100000026L

    const-string/jumbo v2, "wifi.batchedscan"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 934
    const-wide v0, 0x10100000027L

    const-string v2, "battery.capacity"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 936
    return-void
.end method

.method public blacklist forceInitForTesting(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 354
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 356
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 357
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/power/ModemPowerProfile;->clear()V

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 359
    monitor-exit v0

    .line 361
    return-void

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getAverageBatteryDrainMa(J)D
    .locals 2
    .param p1, "key"    # J

    .line 710
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAverageBatteryDrainOrDefaultMa(JD)D
    .locals 6
    .param p1, "key"    # J
    .param p3, "defaultValue"    # D

    .line 687
    const-wide v0, 0xf00000000L

    and-long/2addr v0, p1

    .line 688
    .local v0, "subsystemType":J
    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    .line 691
    .local v2, "subsystemFields":I
    const-wide v3, 0x100000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 692
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v3

    .local v3, "value":D
    goto :goto_0

    .line 694
    .end local v3    # "value":D
    :cond_0
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 697
    .restart local v3    # "value":D
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    return-wide p3

    .line 698
    :cond_1
    return-wide v3
.end method

.method public greylist getAveragePower(Ljava/lang/String;)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 673
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getAveragePower(Ljava/lang/String;I)D
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 724
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 726
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    .line 727
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 728
    .local v0, "values":[Ljava/lang/Double;
    array-length v1, v0

    if-le v1, p2, :cond_1

    if-ltz p2, :cond_1

    .line 729
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 730
    :cond_1
    if-ltz p2, :cond_3

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_0

    .line 733
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 731
    :cond_3
    :goto_0
    return-wide v2

    .line 736
    .end local v0    # "values":[Ljava/lang/Double;
    :cond_4
    return-wide v2
.end method

.method public greylist-max-o getAveragePowerForCpuCluster(I)D
    .locals 2
    .param p1, "cluster"    # I

    .line 534
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 535
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetclusterPowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 537
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getAveragePowerForCpuCore(II)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .line 541
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 542
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetcorePowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    .line 544
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;I)D
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 763
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;ID)D
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "defaultValue"    # D

    .line 751
    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    return-wide v1
.end method

.method public greylist-max-o getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 656
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 658
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 661
    :cond_1
    return-wide p2
.end method

.method public greylist getBatteryCapacity()D
    .locals 2

    .line 774
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getNumCoresInCpuCluster(I)I
    .locals 2
    .param p1, "cluster"    # I

    .line 516
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetnumCpus(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v0

    return v0

    .line 517
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumCpuClusters()I
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public blacklist getNumDisplays()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    return v0
.end method

.method public greylist-max-o getNumElements(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 639
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 644
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumSpeedStepsInCpuCluster(I)I
    .locals 2
    .param p1, "cluster"    # I

    .line 524
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 530
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 525
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
