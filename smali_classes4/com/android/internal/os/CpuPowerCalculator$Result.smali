.class Lcom/android/internal/os/CpuPowerCalculator$Result;
.super Ljava/lang/Object;
.source "CpuPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/CpuPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field public blacklist cpuFreqTimes:[J

.field public blacklist durationFgMs:J

.field public blacklist durationMs:J

.field public blacklist packageWithHighestDrain:Ljava/lang/String;

.field public blacklist perProcStatePowerMah:[D

.field public blacklist powerMah:D


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/CpuPowerCalculator$Result-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/CpuPowerCalculator$Result;-><init>()V

    return-void
.end method
