.class public abstract Landroid/bluetooth/IBluetoothBroadcast$Stub;
.super Landroid/os/Binder;
.source "IBluetoothBroadcast.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothBroadcast;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothBroadcast$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GetBroadcastStatus:I = 0x4

.field static final blacklist TRANSACTION_GetEncryptionKey:I = 0x3

.field static final blacklist TRANSACTION_SetBroadcast:I = 0x1

.field static final blacklist TRANSACTION_SetEncryption:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.bluetooth.IBluetoothBroadcast"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothBroadcast$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothBroadcast;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothBroadcast"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothBroadcast;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothBroadcast;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothBroadcast$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothBroadcast$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "GetBroadcastStatus"

    return-object v0

    .line 79
    :pswitch_1
    const-string v0, "GetEncryptionKey"

    return-object v0

    .line 75
    :pswitch_2
    const-string v0, "SetEncryption"

    return-object v0

    .line 71
    :pswitch_3
    const-string v0, "SetBroadcast"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 279
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 94
    invoke-static {p1}, Landroid/bluetooth/IBluetoothBroadcast$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 98
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.bluetooth.IBluetoothBroadcast"

    .line 99
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 100
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 110
    packed-switch v7, :pswitch_data_1

    .line 170
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 106
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v11

    .line 159
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 162
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothBroadcast$Stub;->GetBroadcastStatus(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v2

    .line 164
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    goto :goto_0

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 150
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothBroadcast$Stub;->GetEncryptionKey(Ljava/lang/String;Landroid/content/AttributionSource;)[B

    move-result-object v2

    .line 152
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 154
    goto :goto_0

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":[B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 131
    .local v12, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 133
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 135
    .local v14, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 138
    .local v16, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothBroadcast$Stub;->SetEncryption(ZIZLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    .line 140
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    goto :goto_0

    .line 115
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Z
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 117
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 120
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothBroadcast$Stub;->SetBroadcast(ZLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 122
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    nop

    .line 173
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
