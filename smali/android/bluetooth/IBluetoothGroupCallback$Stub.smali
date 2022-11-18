.class public abstract Landroid/bluetooth/IBluetoothGroupCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGroupCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGroupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGroupCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGroupCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnectionStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onExclusiveAccessAvailable:I = 0x8

.field static final blacklist TRANSACTION_onExclusiveAccessChanged:I = 0x7

.field static final blacklist TRANSACTION_onExclusiveAccessStatusFetched:I = 0x9

.field static final blacklist TRANSACTION_onGroupClientAppRegistered:I = 0x2

.field static final blacklist TRANSACTION_onGroupClientAppUnregistered:I = 0x3

.field static final blacklist TRANSACTION_onGroupDeviceFound:I = 0x6

.field static final blacklist TRANSACTION_onGroupDiscoveryStatusChanged:I = 0x5

.field static final blacklist TRANSACTION_onNewGroupFound:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.bluetooth.IBluetoothGroupCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGroupCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGroupCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGroupCallback;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGroupCallback;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGroupCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGroupCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_0
    const-string/jumbo v0, "onExclusiveAccessStatusFetched"

    return-object v0

    .line 105
    :pswitch_1
    const-string/jumbo v0, "onExclusiveAccessAvailable"

    return-object v0

    .line 101
    :pswitch_2
    const-string/jumbo v0, "onExclusiveAccessChanged"

    return-object v0

    .line 97
    :pswitch_3
    const-string/jumbo v0, "onGroupDeviceFound"

    return-object v0

    .line 93
    :pswitch_4
    const-string/jumbo v0, "onGroupDiscoveryStatusChanged"

    return-object v0

    .line 89
    :pswitch_5
    const-string/jumbo v0, "onNewGroupFound"

    return-object v0

    .line 85
    :pswitch_6
    const-string/jumbo v0, "onGroupClientAppUnregistered"

    return-object v0

    .line 81
    :pswitch_7
    const-string/jumbo v0, "onGroupClientAppRegistered"

    return-object v0

    .line 77
    :pswitch_8
    const-string/jumbo v0, "onConnectionStateChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 425
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const-string v0, "android.bluetooth.IBluetoothGroupCallback"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 136
    packed-switch p1, :pswitch_data_1

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 132
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 235
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onExclusiveAccessStatusFetched(II)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_0

    .line 224
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 227
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onExclusiveAccessAvailable(ILandroid/bluetooth/BluetoothDevice;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .local v4, "_arg2":I
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 216
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onExclusiveAccessChanged(IIILjava/util/List;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_0

    .line 198
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onGroupDeviceFound(ILandroid/bluetooth/BluetoothDevice;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 190
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onGroupDiscoveryStatusChanged(III)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 176
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 177
    .local v4, "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_0

    .line 163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":Landroid/os/ParcelUuid;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onGroupClientAppUnregistered(I)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_0

    .line 152
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onGroupClientAppRegistered(II)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 144
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->onConnectionStateChanged(ILandroid/bluetooth/BluetoothDevice;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    nop

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
