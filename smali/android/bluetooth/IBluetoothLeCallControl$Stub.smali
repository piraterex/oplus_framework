.class public abstract Landroid/bluetooth/IBluetoothLeCallControl$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeCallControl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeCallControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callAdded:I = 0x4

.field static final blacklist TRANSACTION_callRemoved:I = 0x5

.field static final blacklist TRANSACTION_callStateChanged:I = 0x6

.field static final blacklist TRANSACTION_currentCallsList:I = 0x7

.field static final blacklist TRANSACTION_networkStateChanged:I = 0x8

.field static final blacklist TRANSACTION_registerBearer:I = 0x1

.field static final blacklist TRANSACTION_requestResult:I = 0x3

.field static final blacklist TRANSACTION_unregisterBearer:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.bluetooth.IBluetoothLeCallControl"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothLeCallControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeCallControl;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeCallControl;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothLeCallControl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeCallControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_0
    const-string/jumbo v0, "networkStateChanged"

    return-object v0

    .line 98
    :pswitch_1
    const-string v0, "currentCallsList"

    return-object v0

    .line 94
    :pswitch_2
    const-string v0, "callStateChanged"

    return-object v0

    .line 90
    :pswitch_3
    const-string v0, "callRemoved"

    return-object v0

    .line 86
    :pswitch_4
    const-string v0, "callAdded"

    return-object v0

    .line 82
    :pswitch_5
    const-string/jumbo v0, "requestResult"

    return-object v0

    .line 78
    :pswitch_6
    const-string/jumbo v0, "unregisterBearer"

    return-object v0

    .line 74
    :pswitch_7
    const-string/jumbo v0, "registerBearer"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 397
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "android.bluetooth.IBluetoothLeCallControl"

    .line 118
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 119
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 129
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_1

    .line 245
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 125
    :pswitch_0
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v13

    .line 232
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .local v2, "_arg2":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 239
    .local v3, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->networkStateChanged(ILjava/lang/String;ILandroid/content/AttributionSource;)V

    .line 241
    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 225
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V

    .line 227
    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 210
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg2":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 213
    .restart local v3    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V

    .line 215
    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 196
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 199
    .restart local v3    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V

    .line 201
    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeCall;

    .line 184
    .local v1, "_arg1":Landroid/bluetooth/BluetoothLeCall;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 185
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V

    .line 187
    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothLeCall;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg2":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 173
    .restart local v3    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->requestResult(IIILandroid/content/AttributionSource;)V

    .line 175
    goto :goto_0

    .line 156
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 159
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 161
    goto :goto_0

    .line 134
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControlCallback;

    move-result-object v16

    .line 138
    .local v16, "_arg1":Landroid/bluetooth/IBluetoothLeCallControlCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 140
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 142
    .local v18, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 144
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 146
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 148
    .local v21, "_arg6":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/AttributionSource;

    .line 149
    .local v22, "_arg7":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V

    .line 151
    nop

    .line 248
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Landroid/bluetooth/IBluetoothLeCallControlCallback;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/content/AttributionSource;
    :goto_0
    return v13

    nop

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
