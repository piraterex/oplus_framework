.class public interface abstract Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
.super Ljava/lang/Object;
.source "IBleBroadcastAudioScanAssistCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;,
        Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBleBroadcastAudioScanAssistCallback"


# virtual methods
.method public abstract blacklist onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBleBroadcastAudioSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
