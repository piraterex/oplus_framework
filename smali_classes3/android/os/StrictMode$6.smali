.class Landroid/os/StrictMode$6;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist queueIdle()Z
    .locals 6

    .line 2041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2042
    .local v0, "now":J
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsLastInstanceCountCheckMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2043
    invoke-static {v0, v1}, Landroid/os/StrictMode;->-$$Nest$sfputsLastInstanceCountCheckMillis(J)V

    .line 2044
    invoke-static {}, Landroid/os/StrictMode;->conditionallyCheckInstanceCounts()V

    .line 2046
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
