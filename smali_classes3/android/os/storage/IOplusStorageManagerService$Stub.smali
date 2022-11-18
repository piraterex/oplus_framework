.class public abstract Landroid/os/storage/IOplusStorageManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusStorageManagerService.java"

# interfaces
.implements Landroid/os/storage/IOplusStorageManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IOplusStorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IOplusStorageManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthResultInfo:I = 0xd

.field static final blacklist TRANSACTION_clearSDLockPassword:I = 0x3

.field static final blacklist TRANSACTION_decryptDek:I = 0xc

.field static final blacklist TRANSACTION_encryptDek:I = 0xb

.field static final blacklist TRANSACTION_eraseSDLock:I = 0x8

.field static final blacklist TRANSACTION_getSDCardId:I = 0x6

.field static final blacklist TRANSACTION_getSDLockState:I = 0x7

.field static final blacklist TRANSACTION_getStorageData:I = 0x1

.field static final blacklist TRANSACTION_getUnlockSdcardDeadline:I = 0x5

.field static final blacklist TRANSACTION_initAeKek:I = 0x9

.field static final blacklist TRANSACTION_initBeKek:I = 0xa

.field static final blacklist TRANSACTION_setSDLockPassword:I = 0x2

.field static final blacklist TRANSACTION_unlockSDCard:I = 0x4


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.os.storage.IOplusStorageManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "android.os.storage.IOplusStorageManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/os/storage/IOplusStorageManagerService;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Landroid/os/storage/IOplusStorageManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IOplusStorageManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 149
    :pswitch_0
    const-string v0, "addAuthResultInfo"

    return-object v0

    .line 145
    :pswitch_1
    const-string v0, "decryptDek"

    return-object v0

    .line 141
    :pswitch_2
    const-string v0, "encryptDek"

    return-object v0

    .line 137
    :pswitch_3
    const-string/jumbo v0, "initBeKek"

    return-object v0

    .line 133
    :pswitch_4
    const-string/jumbo v0, "initAeKek"

    return-object v0

    .line 129
    :pswitch_5
    const-string v0, "eraseSDLock"

    return-object v0

    .line 125
    :pswitch_6
    const-string v0, "getSDLockState"

    return-object v0

    .line 121
    :pswitch_7
    const-string v0, "getSDCardId"

    return-object v0

    .line 117
    :pswitch_8
    const-string/jumbo v0, "getUnlockSdcardDeadline"

    return-object v0

    .line 113
    :pswitch_9
    const-string/jumbo v0, "unlockSDCard"

    return-object v0

    .line 109
    :pswitch_a
    const-string v0, "clearSDLockPassword"

    return-object v0

    .line 105
    :pswitch_b
    const-string/jumbo v0, "setSDLockPassword"

    return-object v0

    .line 101
    :pswitch_c
    const-string v0, "getStorageData"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 582
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 160
    invoke-static {p1}, Landroid/os/storage/IOplusStorageManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "android.os.storage.IOplusStorageManagerService"

    .line 165
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 166
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    move-object/from16 v12, p2

    .line 168
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 176
    packed-switch v8, :pswitch_data_1

    .line 308
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 172
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return v11

    .line 294
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IOplusStorageManagerService$Stub;->addAuthResultInfo(IIILjava/lang/String;)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_1

    .line 274
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 276
    .local v13, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 278
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 280
    .local v15, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 282
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 284
    .local v17, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 285
    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/storage/IOplusStorageManagerService$Stub;->decryptDek([BI[B[B[B[B)[B

    move-result-object v0

    .line 287
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 289
    goto/16 :goto_1

    .line 256
    .end local v0    # "_result":[B
    .end local v13    # "_arg0":[B
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":[B
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    .end local v18    # "_arg5":[B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 258
    .local v6, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 260
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 262
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 264
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 265
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IOplusStorageManagerService$Stub;->encryptDek([BI[B[B[B)Ljava/util/Map;

    move-result-object v0

    .line 267
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 269
    goto/16 :goto_1

    .line 248
    .end local v0    # "_result":Ljava/util/Map;
    .end local v6    # "_arg0":[B
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":[B
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->initBeKek()Ljava/util/Map;

    move-result-object v0

    .line 249
    .restart local v0    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 251
    goto/16 :goto_1

    .line 241
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->initAeKek()Ljava/util/Map;

    move-result-object v0

    .line 242
    .restart local v0    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 244
    goto :goto_1

    .line 235
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->eraseSDLock()V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_1

    .line 228
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->getSDLockState()I

    move-result v0

    .line 229
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    goto :goto_1

    .line 221
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->getSDCardId()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    goto :goto_1

    .line 214
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->getUnlockSdcardDeadline()J

    move-result-wide v0

    .line 215
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    goto :goto_1

    .line 205
    .end local v0    # "_result":J
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v7, v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->unlockSDCard(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    goto :goto_1

    .line 197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->clearSDLockPassword()I

    move-result v0

    .line 198
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto :goto_1

    .line 188
    .end local v0    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v7, v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->setSDLockPassword(Ljava/lang/String;)I

    move-result v1

    .line 191
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    goto :goto_1

    .line 180
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->getStorageData()I

    move-result v0

    .line 181
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    nop

    .line 311
    .end local v0    # "_result":I
    :goto_1
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
