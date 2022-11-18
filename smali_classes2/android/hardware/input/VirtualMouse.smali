.class public Landroid/hardware/input/VirtualMouse;
.super Ljava/lang/Object;
.source "VirtualMouse.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 48
    iput-object p2, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCursorPosition()Landroid/graphics/PointF;
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
