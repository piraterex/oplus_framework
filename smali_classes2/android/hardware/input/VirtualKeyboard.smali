.class public Landroid/hardware/input/VirtualKeyboard;
.super Ljava/lang/Object;
.source "VirtualKeyboard.java"

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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/hardware/input/VirtualKeyboard;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 46
    iput-object p2, p0, Landroid/hardware/input/VirtualKeyboard;->mToken:Landroid/os/IBinder;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 53
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboard;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualKeyboard;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualKeyboard;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualKeyboard;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
