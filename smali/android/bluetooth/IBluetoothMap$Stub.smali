.class public abstract Landroid/bluetooth/IBluetoothMap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMap.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMap$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMap"

.field static final blacklist TRANSACTION_disconnect:I = 0x3

.field static final blacklist TRANSACTION_getClient:I = 0x2

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x5

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x9

.field static final blacklist TRANSACTION_getConnectionState:I = 0x7

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final blacklist TRANSACTION_getState:I = 0x1

.field static final blacklist TRANSACTION_isConnected:I = 0x4

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.bluetooth.IBluetoothMap"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothMap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothMap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothMap;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothMap$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothMap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_0
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 109
    :pswitch_1
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 105
    :pswitch_2
    const-string v0, "getConnectionState"

    return-object v0

    .line 101
    :pswitch_3
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 97
    :pswitch_4
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 93
    :pswitch_5
    const-string v0, "isConnected"

    return-object v0

    .line 89
    :pswitch_6
    const-string v0, "disconnect"

    return-object v0

    .line 85
    :pswitch_7
    const-string v0, "getClient"

    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "getState"

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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 406
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/bluetooth/IBluetoothMap$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    const-string v0, "android.bluetooth.IBluetoothMap"

    .line 129
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 140
    packed-switch p1, :pswitch_data_1

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 237
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 239
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 241
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 242
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothMap$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 244
    goto/16 :goto_0

    .line 223
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 229
    .local v4, "_arg2":Landroid/content/AttributionSource;
    sget-object v5, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 230
    .local v5, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothMap$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 232
    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 213
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 215
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 216
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothMap$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 218
    goto/16 :goto_0

    .line 199
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 201
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 203
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 204
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothMap$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 206
    goto/16 :goto_0

    .line 189
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 191
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 192
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothMap$Stub;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 194
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 179
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 181
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 182
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothMap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 184
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 167
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 169
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 170
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothMap$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 172
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_8
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 157
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 158
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothMap$Stub;->getClient(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 160
    goto :goto_0

    .line 145
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_9
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 147
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 148
    .restart local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothMap$Stub;->getState(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 150
    nop

    .line 251
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
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
