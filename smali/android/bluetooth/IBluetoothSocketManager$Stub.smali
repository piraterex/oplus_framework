.class public abstract Landroid/bluetooth/IBluetoothSocketManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSocketManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSocketManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSocketManager"

.field static final blacklist TRANSACTION_connectSocket:I = 0x1

.field static final blacklist TRANSACTION_createSocketChannel:I = 0x2

.field static final blacklist TRANSACTION_requestMaximumTxDataLength:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocketManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSocketManager;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothSocketManager;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "requestMaximumTxDataLength"

    return-object v0

    .line 69
    :pswitch_1
    const-string v0, "createSocketChannel"

    return-object v0

    .line 65
    :pswitch_2
    const-string v0, "connectSocket"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 236
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.bluetooth.IBluetoothSocketManager"

    .line 89
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 90
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 100
    packed-switch v0, :pswitch_data_1

    .line 149
    move-object/from16 v12, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 96
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v4

    .line 141
    :pswitch_1
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 142
    .local v5, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object/from16 v12, p0

    invoke-virtual {v12, v5}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto/16 :goto_0

    .line 123
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    move-object/from16 v12, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, "_arg1":Ljava/lang/String;
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/os/ParcelUuid;

    .line 129
    .local v14, "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 131
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 132
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    move-object/from16 v6, p0

    move v7, v5

    move-object v8, v13

    move-object v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 134
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v2, v6, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    goto :goto_0

    .line 105
    .end local v5    # "_arg0":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/ParcelUuid;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_3
    move-object/from16 v12, p0

    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 107
    .local v5, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 109
    .local v13, "_arg1":I
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/os/ParcelUuid;

    .line 111
    .restart local v14    # "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 113
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 114
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v13

    move-object v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 116
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v2, v6, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 118
    nop

    .line 152
    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/os/ParcelUuid;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
