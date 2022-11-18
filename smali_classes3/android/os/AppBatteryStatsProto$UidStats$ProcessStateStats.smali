.class public final Landroid/os/AppBatteryStatsProto$UidStats$ProcessStateStats;
.super Ljava/lang/Object;
.source "AppBatteryStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBatteryStatsProto$UidStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcessStateStats"
.end annotation


# static fields
.field public static final blacklist BACKGROUND:I = 0x2

.field public static final blacklist CACHED:I = 0x4

.field public static final blacklist DURATION_MS:J = 0x10300000002L

.field public static final blacklist FOREGROUND:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE:I = 0x3

.field public static final blacklist POWER_MAH:J = 0x10100000003L

.field public static final blacklist PROCESS_STATE:J = 0x10e00000001L

.field public static final blacklist UNSPECIFIED:I


# instance fields
.field final synthetic blacklist this$1:Landroid/os/AppBatteryStatsProto$UidStats;


# direct methods
.method public constructor blacklist <init>(Landroid/os/AppBatteryStatsProto$UidStats;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/AppBatteryStatsProto$UidStats;

    .line 14
    iput-object p1, p0, Landroid/os/AppBatteryStatsProto$UidStats$ProcessStateStats;->this$1:Landroid/os/AppBatteryStatsProto$UidStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
