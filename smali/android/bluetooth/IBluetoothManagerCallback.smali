.class public interface abstract Landroid/bluetooth/IBluetoothManagerCallback;
.super Ljava/lang/Object;
.source "IBluetoothManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManagerCallback$Stub;,
        Landroid/bluetooth/IBluetoothManagerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onBluetoothServiceDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBrEdrDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
