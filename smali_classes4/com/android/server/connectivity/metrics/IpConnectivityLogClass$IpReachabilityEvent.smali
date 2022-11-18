.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IpReachabilityEvent"
.end annotation


# static fields
.field public static final blacklist EVENT_TYPE:J = 0x10500000002L

.field public static final blacklist IF_NAME:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    .line 91
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
