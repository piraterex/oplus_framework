.class public abstract Landroid/hardware/security/keymint/IKeyMintDevice$Stub;
.super Landroid/os/Binder;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addRngEntropy:I = 0x2

.field static final blacklist TRANSACTION_begin:I = 0xa

.field static final blacklist TRANSACTION_convertStorageKeyToEphemeral:I = 0xd

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x8

.field static final blacklist TRANSACTION_deleteKey:I = 0x7

.field static final blacklist TRANSACTION_destroyAttestationIds:I = 0x9

.field static final blacklist TRANSACTION_deviceLocked:I = 0xb

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0xc

.field static final blacklist TRANSACTION_generateKey:I = 0x3

.field static final blacklist TRANSACTION_getHardwareInfo:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getKeyCharacteristics:I = 0xe

.field static final blacklist TRANSACTION_getRootOfTrust:I = 0x10

.field static final blacklist TRANSACTION_getRootOfTrustChallenge:I = 0xf

.field static final blacklist TRANSACTION_importKey:I = 0x4

.field static final blacklist TRANSACTION_importWrappedKey:I = 0x5

.field static final blacklist TRANSACTION_sendRootOfTrust:I = 0x11

.field static final blacklist TRANSACTION_upgradeKey:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->markVintfStability()V

    .line 100
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IKeyMintDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/security/keymint/IKeyMintDevice;

    if-eqz v1, :cond_1

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IKeyMintDevice;

    return-object v1

    .line 115
    :cond_1
    new-instance v1, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 119
    return-object p0
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

    .line 123
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    sget-object v13, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 124
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 125
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_0
    sparse-switch v10, :sswitch_data_0

    .line 147
    const/16 v0, 0x10

    const/4 v1, 0x0

    packed-switch v10, :pswitch_data_0

    .line 331
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 131
    :sswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v14

    .line 136
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v14

    .line 142
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v14

    .line 323
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 324
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->sendRootOfTrust([B)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":[B
    :pswitch_1
    const-class v2, [B

    new-array v3, v14, [I

    aput v0, v3, v1

    invoke-virtual {v11, v2, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 314
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrust([B)[B

    move-result-object v1

    .line 316
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 318
    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrustChallenge()[B

    move-result-object v2

    .line 306
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    new-array v3, v14, [I

    aput v0, v3, v1

    invoke-virtual {v12, v2, v14, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 308
    goto/16 :goto_0

    .line 292
    .end local v2    # "_result":[B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 294
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 296
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 297
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v9, v0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;

    move-result-object v3

    .line 299
    .local v3, "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 283
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->convertStorageKeyToEphemeral([B)[B

    move-result-object v1

    .line 285
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 287
    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->earlyBootEnded()V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 265
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 267
    .local v0, "_arg0":Z
    sget-object v1, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 268
    .local v1, "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v9, v0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 253
    .local v1, "_arg1":[B
    sget-object v2, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    .line 255
    .local v2, "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v3, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 256
    .local v3, "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;

    move-result-object v4

    .line 258
    .local v4, "_result":Landroid/hardware/security/keymint/BeginResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 260
    goto/16 :goto_0

    .line 242
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v3    # "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v4    # "_result":Landroid/hardware/security/keymint/BeginResult;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->destroyAttestationIds()V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_0

    .line 236
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteAllKeys()V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_0

    .line 228
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 229
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteKey([B)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_0

    .line 216
    .end local v0    # "_arg0":[B
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 218
    .restart local v0    # "_arg0":[B
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 219
    .local v1, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v9, v0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v2

    .line 221
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 223
    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_result":[B
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 198
    .local v15, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 200
    .local v16, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 202
    .local v17, "_arg2":[B
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Landroid/hardware/security/keymint/KeyParameter;

    .line 204
    .local v18, "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 206
    .local v19, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 207
    .local v21, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v0

    .line 209
    .local v0, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 211
    goto :goto_0

    .line 180
    .end local v0    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    .end local v15    # "_arg0":[B
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":J
    :pswitch_d
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 182
    .local v0, "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 186
    .local v2, "_arg2":[B
    sget-object v3, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/AttestationKey;

    .line 187
    .local v3, "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v4

    .line 189
    .local v4, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 191
    goto :goto_0

    .line 168
    .end local v0    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    .end local v4    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_e
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 170
    .restart local v0    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v1, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/keymint/AttestationKey;

    .line 171
    .local v1, "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {v9, v0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v2

    .line 173
    .local v2, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    goto :goto_0

    .line 159
    .end local v0    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v1    # "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    .end local v2    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 160
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->addRngEntropy([B)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 151
    .end local v0    # "_arg0":[B
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;

    move-result-object v0

    .line 152
    .local v0, "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    nop

    .line 334
    .end local v0    # "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    :goto_0
    return v14

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
