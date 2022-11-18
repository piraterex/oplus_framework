.class public abstract Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;
.super Landroid/os/Binder;
.source "IKeystoreSecurityLevel.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreSecurityLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreSecurityLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_convertStorageKeyToEphemeral:I = 0x5

.field static final blacklist TRANSACTION_createOperation:I = 0x1

.field static final blacklist TRANSACTION_deleteKey:I = 0x6

.field static final blacklist TRANSACTION_generateKey:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_importKey:I = 0x3

.field static final blacklist TRANSACTION_importWrappedKey:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreSecurityLevel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/IKeystoreSecurityLevel;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
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

    .line 85
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 87
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_0
    sparse-switch v7, :sswitch_data_0

    .line 109
    packed-switch v7, :pswitch_data_0

    .line 200
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 93
    :sswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v11

    .line 98
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v11

    .line 104
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v11

    .line 192
    :pswitch_0
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    .line 193
    .local v0, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v6, v0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_1
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    .line 183
    .restart local v0    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v6, v0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->convertStorageKeyToEphemeral(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/EphemeralStorageKeyResponse;

    move-result-object v1

    .line 185
    .local v1, "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    :pswitch_2
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/system/keystore2/KeyDescriptor;

    .line 166
    .local v12, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/system/keystore2/KeyDescriptor;

    .line 168
    .local v13, "_arg1":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 170
    .local v14, "_arg2":[B
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Landroid/hardware/security/keymint/KeyParameter;

    .line 172
    .local v15, "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v0, Landroid/system/keystore2/AuthenticatorSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 173
    .local v16, "_arg4":[Landroid/system/keystore2/AuthenticatorSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    .line 175
    .local v0, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    goto/16 :goto_0

    .line 146
    .end local v0    # "_result":Landroid/system/keystore2/KeyMetadata;
    .end local v12    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v13    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v16    # "_arg4":[Landroid/system/keystore2/AuthenticatorSpec;
    :pswitch_3
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/system/keystore2/KeyDescriptor;

    .line 148
    .restart local v12    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/system/keystore2/KeyDescriptor;

    .line 150
    .restart local v13    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/hardware/security/keymint/KeyParameter;

    .line 152
    .local v14, "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 154
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 155
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    .line 157
    .restart local v0    # "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 159
    goto :goto_0

    .line 128
    .end local v0    # "_result":Landroid/system/keystore2/KeyMetadata;
    .end local v12    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v13    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    .end local v14    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_4
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/system/keystore2/KeyDescriptor;

    .line 130
    .restart local v12    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/system/keystore2/KeyDescriptor;

    .line 132
    .restart local v13    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/hardware/security/keymint/KeyParameter;

    .line 134
    .restart local v14    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 136
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 137
    .restart local v16    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    .line 139
    .restart local v0    # "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_0

    .line 114
    .end local v0    # "_result":Landroid/system/keystore2/KeyMetadata;
    .end local v12    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v13    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    .end local v14    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_5
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    .line 116
    .local v0, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 118
    .local v1, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 119
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {v6, v0, v1, v2}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object v3

    .line 121
    .local v3, "_result":Landroid/system/keystore2/CreateOperationResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    nop

    .line 203
    .end local v0    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Landroid/system/keystore2/CreateOperationResponse;
    :goto_0
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
