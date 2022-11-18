.class Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
.super Ljava/lang/Object;
.source "MobileRadioPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/MobileRadioPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerAndDuration"
.end annotation


# instance fields
.field public blacklist durationMs:J

.field public blacklist noCoverageDurationMs:J

.field public blacklist remainingPowerMah:D

.field public blacklist signalDurationMs:J

.field public blacklist totalAppDurationMs:J

.field public blacklist totalAppPowerMah:D


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;-><init>()V

    return-void
.end method
