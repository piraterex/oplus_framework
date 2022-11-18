.class public Landroid/companion/virtual/IVirtualDevice$Default;
.super Ljava/lang/Object;
.source "IVirtualDevice.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
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

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "screenSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist getAssociationId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist onAudioSessionEnded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "routingCallback"    # Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .param p3, "configChangedCallback"    # Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseButtonEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseRelativeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseScrollEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualTouchEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setShowPointerIcon(Z)V
    .locals 0
    .param p1, "showPointerIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
