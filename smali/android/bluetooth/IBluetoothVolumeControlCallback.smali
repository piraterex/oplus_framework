.class public interface abstract Landroid/bluetooth/IBluetoothVolumeControlCallback;
.super Ljava/lang/Object;
.source "IBluetoothVolumeControlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;,
        Landroid/bluetooth/IBluetoothVolumeControlCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothVolumeControlCallback"


# virtual methods
.method public abstract blacklist onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
