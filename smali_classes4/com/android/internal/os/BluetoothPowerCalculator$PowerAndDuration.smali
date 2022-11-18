.class Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;
.super Ljava/lang/Object;
.source "BluetoothPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BluetoothPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerAndDuration"
.end annotation


# instance fields
.field public blacklist durationMs:J

.field public blacklist keys:[Landroid/os/BatteryConsumer$Key;

.field public blacklist powerMah:D

.field public blacklist powerPerKeyMah:[D

.field public blacklist totalDurationMs:J

.field public blacklist totalPowerMah:D


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;-><init>()V

    return-void
.end method
