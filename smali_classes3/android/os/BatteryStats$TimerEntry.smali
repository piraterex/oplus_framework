.class final Landroid/os/BatteryStats$TimerEntry;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimerEntry"
.end annotation


# instance fields
.field final greylist-max-o mId:I

.field final greylist-max-o mName:Ljava/lang/String;

.field final greylist-max-o mTime:J

.field final greylist-max-o mTimer:Landroid/os/BatteryStats$Timer;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "time"    # J

    .line 5004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5005
    iput-object p1, p0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    .line 5006
    iput p2, p0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    .line 5007
    iput-object p3, p0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    .line 5008
    iput-wide p4, p0, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 5009
    return-void
.end method
