.class public Landroid/media/INearbyMediaDevicesProvider$Default;
.super Ljava/lang/Object;
.source "INearbyMediaDevicesProvider.java"

# interfaces
.implements Landroid/media/INearbyMediaDevicesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/INearbyMediaDevicesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/INearbyMediaDevicesUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/INearbyMediaDevicesUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
