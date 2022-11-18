.class public abstract Landroid/bluetooth/IBluetoothPan$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothPan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPan$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothPan"

.field static final blacklist TRANSACTION_connect:I = 0x3

.field static final blacklist TRANSACTION_disconnect:I = 0x4

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x5

.field static final blacklist TRANSACTION_getConnectionState:I = 0x7

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final blacklist TRANSACTION_isTetheringOn:I = 0x1

.field static final blacklist TRANSACTION_setBluetoothTethering:I = 0x2

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.bluetooth.IBluetoothPan"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothPan$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothPan"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothPan;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothPan$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothPan$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 103
    :pswitch_1
    const-string v0, "getConnectionState"

    return-object v0

    .line 99
    :pswitch_2
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 95
    :pswitch_3
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 91
    :pswitch_4
    const-string v0, "disconnect"

    return-object v0

    .line 87
    :pswitch_5
    const-string v0, "connect"

    return-object v0

    .line 83
    :pswitch_6
    const-string/jumbo v0, "setBluetoothTethering"

    return-object v0

    .line 79
    :pswitch_7
    const-string v0, "isTetheringOn"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 383
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/bluetooth/IBluetoothPan$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.bluetooth.IBluetoothPan"

    .line 123
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 124
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 134
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 236
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 130
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v10

    .line 223
    :pswitch_1
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 229
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 230
    .local v3, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothPan$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 232
    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 213
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 215
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 216
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 218
    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 201
    .local v0, "_arg0":[I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 203
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 204
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 206
    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 191
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 192
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothPan$Stub;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 194
    goto/16 :goto_0

    .line 177
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 179
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 181
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 182
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 184
    goto :goto_0

    .line 165
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 167
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 169
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 170
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 172
    goto :goto_0

    .line 149
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothPanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPanCallback;

    move-result-object v12

    .line 151
    .local v12, "_arg0":Landroid/bluetooth/IBluetoothPanCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 153
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 155
    .local v14, "_arg2":Z
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/AttributionSource;

    .line 157
    .local v15, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 158
    .local v16, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothPan$Stub;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 160
    goto :goto_0

    .line 139
    .end local v12    # "_arg0":Landroid/bluetooth/IBluetoothPanCallback;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":Landroid/content/AttributionSource;
    .end local v16    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_8
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 141
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 142
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothPan$Stub;->isTetheringOn(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 144
    nop

    .line 239
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
