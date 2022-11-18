.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$WakeupStats;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeupStats"
.end annotation


# static fields
.field public static final blacklist APPLICATION_WAKEUPS:J = 0x10300000005L

.field public static final blacklist DURATION_SEC:J = 0x10300000001L

.field public static final blacklist ETHERTYPE_COUNTS:J = 0x20b00000008L

.field public static final blacklist IP_NEXT_HEADER_COUNTS:J = 0x20b00000009L

.field public static final blacklist L2_BROADCAST_COUNT:J = 0x1030000000cL

.field public static final blacklist L2_MULTICAST_COUNT:J = 0x1030000000bL

.field public static final blacklist L2_UNICAST_COUNT:J = 0x1030000000aL

.field public static final blacklist NON_APPLICATION_WAKEUPS:J = 0x10300000006L

.field public static final blacklist NO_UID_WAKEUPS:J = 0x10300000007L

.field public static final blacklist ROOT_WAKEUPS:J = 0x10300000003L

.field public static final blacklist SYSTEM_WAKEUPS:J = 0x10300000004L

.field public static final blacklist TOTAL_WAKEUPS:J = 0x10300000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    .line 367
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$WakeupStats;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
