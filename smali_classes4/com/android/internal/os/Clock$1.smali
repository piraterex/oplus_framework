.class Lcom/android/internal/os/Clock$1;
.super Lcom/android/internal/os/Clock;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/os/Clock;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist currentTimeMillis()J
    .locals 2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist elapsedRealtime()J
    .locals 2

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist uptimeMillis()J
    .locals 2

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
