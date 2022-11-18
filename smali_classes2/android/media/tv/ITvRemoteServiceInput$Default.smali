.class public Landroid/media/tv/ITvRemoteServiceInput$Default;
.super Ljava/lang/Object;
.source "ITvRemoteServiceInput.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteServiceInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteServiceInput;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearInputBridge(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist closeInputBridge(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "axis"    # I
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist sendGamepadKeyDown(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist sendGamepadKeyUp(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist sendKeyDown(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist sendKeyUp(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist sendPointerDown(Landroid/os/IBinder;III)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist sendPointerSync(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist sendPointerUp(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist sendTimestamp(Landroid/os/IBinder;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
