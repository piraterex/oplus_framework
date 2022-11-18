.class final Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothActivityInfoCache"
.end annotation


# instance fields
.field greylist-max-o energy:J

.field greylist-max-o idleTimeMs:J

.field greylist-max-o rxTimeMs:J

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field greylist-max-o txTimeMs:J

.field greylist-max-o uidRxBytes:Landroid/util/SparseLongArray;

.field greylist-max-o uidTxBytes:Landroid/util/SparseLongArray;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0

    .line 14351
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14357
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    .line 14358
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method blacklist reset()V
    .locals 2

    .line 14374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    .line 14375
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    .line 14376
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    .line 14377
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    .line 14378
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 14379
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 14380
    return-void
.end method

.method greylist-max-o set(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 14361
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    .line 14362
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    .line 14363
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    .line 14364
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    .line 14365
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14366
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/UidTraffic;

    .line 14367
    .local v1, "traffic":Landroid/bluetooth/UidTraffic;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->incrementValue(IJ)V

    .line 14368
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->incrementValue(IJ)V

    .line 14369
    .end local v1    # "traffic":Landroid/bluetooth/UidTraffic;
    goto :goto_0

    .line 14371
    :cond_0
    return-void
.end method
