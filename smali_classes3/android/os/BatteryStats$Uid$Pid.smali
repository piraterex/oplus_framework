.class public Landroid/os/BatteryStats$Uid$Pid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pid"
.end annotation


# instance fields
.field public greylist-max-o mWakeNesting:I

.field public greylist-max-o mWakeStartMs:J

.field public greylist-max-o mWakeSumMs:J

.field final synthetic blacklist this$0:Landroid/os/BatteryStats$Uid;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryStats$Uid;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/BatteryStats$Uid;

    .line 1182
    iput-object p1, p0, Landroid/os/BatteryStats$Uid$Pid;->this$0:Landroid/os/BatteryStats$Uid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
