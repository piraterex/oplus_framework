.class Lcom/android/internal/os/BatteryStatsImpl$1;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCountForProcessState(I)J
    .locals 2
    .param p1, "procState"    # I

    .line 241
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCountLocked(I)J
    .locals 2
    .param p1, "which"    # I

    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCount=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 247
    return-void
.end method
