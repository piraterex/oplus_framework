.class public abstract Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;
.super Landroid/os/Binder;
.source "IApInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IApInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnectedClientsChanged:I = 0x1

.field static final blacklist TRANSACTION_onSoftApChannelSwitched:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.net.wifi.nl80211.IApInterfaceEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.net.wifi.nl80211.IApInterfaceEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nl80211/IApInterfaceEventCallback;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IApInterfaceEventCallback;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_0
    const-string v0, "onSoftApChannelSwitched"

    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "onConnectedClientsChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-string v0, "android.net.wifi.nl80211.IApInterfaceEventCallback"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 97
    packed-switch p1, :pswitch_data_1

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 112
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;->onSoftApChannelSwitched(II)V

    .line 117
    goto :goto_0

    .line 102
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    sget-object v2, Landroid/net/wifi/nl80211/NativeWifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/NativeWifiClient;

    .line 104
    .local v2, "_arg0":Landroid/net/wifi/nl80211/NativeWifiClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 105
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;->onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    .line 107
    nop

    .line 124
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/NativeWifiClient;
    .end local v3    # "_arg1":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
