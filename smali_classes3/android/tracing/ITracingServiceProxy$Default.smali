.class public Landroid/tracing/ITracingServiceProxy$Default;
.super Ljava/lang/Object;
.source "ITracingServiceProxy.java"

# interfaces
.implements Landroid/tracing/ITracingServiceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tracing/ITracingServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyTraceSessionEnded(Z)V
    .locals 0
    .param p1, "sessionStolen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist reportTrace(Landroid/tracing/TraceReportParams;)V
    .locals 0
    .param p1, "params"    # Landroid/tracing/TraceReportParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
