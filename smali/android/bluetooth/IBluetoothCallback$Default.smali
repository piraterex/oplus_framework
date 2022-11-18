.class public Landroid/bluetooth/IBluetoothCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothCallback;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBluetoothStateChange(II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
