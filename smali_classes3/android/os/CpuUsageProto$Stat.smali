.class public final Landroid/os/CpuUsageProto$Stat;
.super Ljava/lang/Object;
.source "CpuUsageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuUsageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stat"
.end annotation


# static fields
.field public static final blacklist ADDED:J = 0x10800000004L

.field public static final blacklist MAJOR_FAULTS:J = 0x1050000000aL

.field public static final blacklist MINOR_FAULTS:J = 0x10500000009L

.field public static final blacklist NAME:J = 0x10900000003L

.field public static final blacklist PARENT_PID:J = 0x1050000000bL

.field public static final blacklist PID:J = 0x10500000002L

.field public static final blacklist REMOVED:J = 0x10800000005L

.field public static final blacklist SYSTEM_TIME:J = 0x10500000008L

.field public static final blacklist UID:J = 0x10500000001L

.field public static final blacklist UPTIME:J = 0x10500000006L

.field public static final blacklist USER_TIME:J = 0x10500000007L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/CpuUsageProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/CpuUsageProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CpuUsageProto;

    .line 25
    iput-object p1, p0, Landroid/os/CpuUsageProto$Stat;->this$0:Landroid/os/CpuUsageProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
