.class Lcom/android/internal/os/VideoPowerCalculator$PowerAndDuration;
.super Ljava/lang/Object;
.source "VideoPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/VideoPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerAndDuration"
.end annotation


# instance fields
.field public blacklist durationMs:J

.field public blacklist powerMah:D


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/VideoPowerCalculator$PowerAndDuration-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/VideoPowerCalculator$PowerAndDuration;-><init>()V

    return-void
.end method
