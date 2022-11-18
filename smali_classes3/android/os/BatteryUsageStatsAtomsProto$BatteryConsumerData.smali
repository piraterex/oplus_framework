.class public final Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryConsumerData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsageSlice;,
        Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsage;
    }
.end annotation


# static fields
.field public static final blacklist POWER_COMPONENTS:J = 0x20b00000002L

.field public static final blacklist SLICES:J = 0x20b00000003L

.field public static final blacklist TOTAL_CONSUMED_POWER_DECI_COULOMBS:J = 0x10300000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/BatteryUsageStatsAtomsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryUsageStatsAtomsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/BatteryUsageStatsAtomsProto;

    .line 11
    iput-object p1, p0, Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;->this$0:Landroid/os/BatteryUsageStatsAtomsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
