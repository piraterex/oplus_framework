.class public Landroid/service/smartspace/ISmartspaceService$Default;
.super Ljava/lang/Object;
.source "ISmartspaceService.java"

# interfaces
.implements Landroid/service/smartspace/ISmartspaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/ISmartspaceService;
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

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "event"    # Landroid/app/smartspace/SmartspaceTargetEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0
    .param p1, "context"    # Landroid/app/smartspace/SmartspaceConfig;
    .param p2, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
