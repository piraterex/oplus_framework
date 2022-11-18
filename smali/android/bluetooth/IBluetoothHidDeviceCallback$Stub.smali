.class public abstract Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDeviceCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDeviceCallback"

.field static final blacklist TRANSACTION_onAppStatusChanged:I = 0x1

.field static final blacklist TRANSACTION_onConnectionStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onGetReport:I = 0x3

.field static final blacklist TRANSACTION_onInterruptData:I = 0x6

.field static final blacklist TRANSACTION_onSetProtocol:I = 0x5

.field static final blacklist TRANSACTION_onSetReport:I = 0x4

.field static final blacklist TRANSACTION_onVirtualCableUnplug:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDeviceCallback;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_0
    const-string/jumbo v0, "onVirtualCableUnplug"

    return-object v0

    .line 91
    :pswitch_1
    const-string/jumbo v0, "onInterruptData"

    return-object v0

    .line 87
    :pswitch_2
    const-string/jumbo v0, "onSetProtocol"

    return-object v0

    .line 83
    :pswitch_3
    const-string/jumbo v0, "onSetReport"

    return-object v0

    .line 79
    :pswitch_4
    const-string/jumbo v0, "onGetReport"

    return-object v0

    .line 75
    :pswitch_5
    const-string/jumbo v0, "onConnectionStateChanged"

    return-object v0

    .line 71
    :pswitch_6
    const-string/jumbo v0, "onAppStatusChanged"

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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 359
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 106
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 110
    const-string v0, "android.bluetooth.IBluetoothHidDeviceCallback"

    .line 111
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 122
    packed-switch p1, :pswitch_data_1

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 203
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 204
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto/16 :goto_0

    .line 190
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 192
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 194
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 195
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto/16 :goto_0

    .line 179
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":[B
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 181
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 182
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_0

    .line 164
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 166
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 168
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 170
    .local v4, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 171
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":B
    .end local v5    # "_arg3":[B
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 151
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 153
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 155
    .restart local v4    # "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 156
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":B
    .end local v5    # "_arg3":I
    :pswitch_6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 140
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_0

    .line 127
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    :pswitch_7
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 130
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 214
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
