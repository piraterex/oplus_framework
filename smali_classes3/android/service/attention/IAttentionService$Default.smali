.class public Landroid/service/attention/IAttentionService$Default;
.super Ljava/lang/Object;
.source "IAttentionService.java"

# interfaces
.implements Landroid/service/attention/IAttentionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/IAttentionService;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/attention/IAttentionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist checkAttention(Landroid/service/attention/IAttentionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/attention/IAttentionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/attention/IProximityUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onStopProximityUpdates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
