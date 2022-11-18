.class public abstract Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeCallControlCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcceptCall:I = 0x2

.field static final blacklist TRANSACTION_onBearerRegistered:I = 0x1

.field static final blacklist TRANSACTION_onHoldCall:I = 0x4

.field static final blacklist TRANSACTION_onJoinCalls:I = 0x7

.field static final blacklist TRANSACTION_onPlaceCall:I = 0x6

.field static final blacklist TRANSACTION_onTerminateCall:I = 0x3

.field static final blacklist TRANSACTION_onUnholdCall:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.bluetooth.IBluetoothLeCallControlCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControlCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothLeCallControlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeCallControlCallback;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeCallControlCallback;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_0
    const-string/jumbo v0, "onJoinCalls"

    return-object v0

    .line 94
    :pswitch_1
    const-string/jumbo v0, "onPlaceCall"

    return-object v0

    .line 90
    :pswitch_2
    const-string/jumbo v0, "onUnholdCall"

    return-object v0

    .line 86
    :pswitch_3
    const-string/jumbo v0, "onHoldCall"

    return-object v0

    .line 82
    :pswitch_4
    const-string/jumbo v0, "onTerminateCall"

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "onAcceptCall"

    return-object v0

    .line 74
    :pswitch_6
    const-string/jumbo v0, "onBearerRegistered"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 321
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const-string v0, "android.bluetooth.IBluetoothLeCallControlCallback"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 125
    packed-switch p1, :pswitch_data_1

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 121
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 190
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 193
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onJoinCalls(ILjava/util/List;)V

    .line 195
    goto :goto_0

    .line 178
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 182
    .local v3, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 185
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 171
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onUnholdCall(ILandroid/os/ParcelUuid;)V

    .line 173
    goto :goto_0

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 161
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onHoldCall(ILandroid/os/ParcelUuid;)V

    .line 163
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 151
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onTerminateCall(ILandroid/os/ParcelUuid;)V

    .line 153
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 141
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onAcceptCall(ILandroid/os/ParcelUuid;)V

    .line 143
    goto :goto_0

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onBearerRegistered(I)V

    .line 133
    nop

    .line 202
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
