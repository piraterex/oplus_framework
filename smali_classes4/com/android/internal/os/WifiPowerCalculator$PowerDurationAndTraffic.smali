.class Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;
.super Ljava/lang/Object;
.source "WifiPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WifiPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerDurationAndTraffic"
.end annotation


# instance fields
.field public blacklist durationMs:J

.field public blacklist keys:[Landroid/os/BatteryConsumer$Key;

.field public blacklist powerMah:D

.field public blacklist powerPerKeyMah:[D

.field public blacklist wifiRxBytes:J

.field public blacklist wifiRxPackets:J

.field public blacklist wifiTxBytes:J

.field public blacklist wifiTxPackets:J


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;-><init>()V

    return-void
.end method
