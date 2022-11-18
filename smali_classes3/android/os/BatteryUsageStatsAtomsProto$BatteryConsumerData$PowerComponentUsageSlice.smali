.class public final Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsageSlice;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerComponentUsageSlice"
.end annotation


# static fields
.field public static final blacklist BACKGROUND:I = 0x2

.field public static final blacklist CACHED:I = 0x4

.field public static final blacklist FOREGROUND:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE:I = 0x3

.field public static final blacklist POWER_COMPONENT:J = 0x10b00000001L

.field public static final blacklist PROCESS_STATE:J = 0x10e00000002L

.field public static final blacklist UNSPECIFIED:I


# instance fields
.field final synthetic blacklist this$1:Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;

    .line 28
    iput-object p1, p0, Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsageSlice;->this$1:Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
