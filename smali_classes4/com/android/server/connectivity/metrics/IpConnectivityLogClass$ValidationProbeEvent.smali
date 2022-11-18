.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ValidationProbeEvent"
.end annotation


# static fields
.field public static final blacklist LATENCY_MS:J = 0x10500000002L

.field public static final blacklist NETWORK_ID:J = 0x10b00000001L

.field public static final blacklist PROBE_RESULT:J = 0x10500000004L

.field public static final blacklist PROBE_TYPE:J = 0x10500000003L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    .line 116
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
