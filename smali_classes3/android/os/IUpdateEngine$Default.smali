.class public Landroid/os/IUpdateEngine$Default;
.super Ljava/lang/Object;
.source "IUpdateEngine.java"

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p1, "metadataFilename"    # Ljava/lang/String;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "payload_offset"    # J
    .param p4, "payload_size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "payload_offset"    # J
    .param p4, "payload_size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist applyPostInstall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bind(Landroid/os/IUpdateEngineCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/os/IUpdateEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IUpdateEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist resetShouldSwitchSlotOnReboot()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist resetStatus()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist resume()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 0
    .param p1, "metadataFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist suspend()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist switchSlot()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist unbind(Landroid/os/IUpdateEngineCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/os/IUpdateEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyPayloadApplicable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "metadataFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method
