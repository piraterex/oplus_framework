.class Lcom/android/internal/os/BatteryStatsImpl$Uid$2;
.super Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
        "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "x0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "uid"    # I

    .line 9179
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    return-void
.end method


# virtual methods
.method public blacklist instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 9181
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v3, 0xd

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    return-object v7
.end method

.method public bridge synthetic blacklist instantiateObject()Ljava/lang/Object;
    .locals 1

    .line 9179
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    return-object v0
.end method
