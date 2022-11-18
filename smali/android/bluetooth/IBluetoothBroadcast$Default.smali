.class public Landroid/bluetooth/IBluetoothBroadcast$Default;
.super Ljava/lang/Object;
.source "IBluetoothBroadcast.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothBroadcast;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothBroadcast;
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
.method public blacklist GetBroadcastStatus(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist GetEncryptionKey(Ljava/lang/String;Landroid/content/AttributionSource;)[B
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist SetBroadcast(ZLjava/lang/String;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist SetEncryption(ZIZLjava/lang/String;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "enc_len"    # I
    .param p3, "use_existing"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
