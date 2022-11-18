.class public Landroid/hardware/input/VirtualTouchscreen;
.super Ljava/lang/Object;
.source "VirtualTouchscreen.java"

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/hardware/input/VirtualTouchscreen;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 45
    iput-object p2, p0, Landroid/hardware/input/VirtualTouchscreen;->mToken:Landroid/os/IBinder;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 52
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualTouchscreen;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualTouchscreen;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualTouchscreen;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualTouchscreen;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
