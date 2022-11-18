.class public interface abstract Landroid/bluetooth/IBluetoothBroadcast;
.super Ljava/lang/Object;
.source "IBluetoothBroadcast.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothBroadcast$Stub;,
        Landroid/bluetooth/IBluetoothBroadcast$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothBroadcast"


# virtual methods
.method public abstract blacklist GetBroadcastStatus(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist GetEncryptionKey(Ljava/lang/String;Landroid/content/AttributionSource;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SetBroadcast(ZLjava/lang/String;Landroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SetEncryption(ZIZLjava/lang/String;Landroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
