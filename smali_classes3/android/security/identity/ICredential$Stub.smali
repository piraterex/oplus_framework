.class public abstract Landroid/security/identity/ICredential$Stub;
.super Landroid/os/Binder;
.source "ICredential.java"

# interfaces
.implements Landroid/security/identity/ICredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredential$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createEphemeralKeyPair:I = 0x1

.field static final blacklist TRANSACTION_deleteCredential:I = 0x3

.field static final blacklist TRANSACTION_deleteWithChallenge:I = 0x4

.field static final blacklist TRANSACTION_getAuthKeysNeedingCertification:I = 0xa

.field static final blacklist TRANSACTION_getAuthenticationDataUsageCount:I = 0xd

.field static final blacklist TRANSACTION_getCredentialKeyCertificateChain:I = 0x6

.field static final blacklist TRANSACTION_getEntries:I = 0x8

.field static final blacklist TRANSACTION_proveOwnership:I = 0x5

.field static final blacklist TRANSACTION_selectAuthKey:I = 0x7

.field static final blacklist TRANSACTION_setAvailableAuthenticationKeys:I = 0x9

.field static final blacklist TRANSACTION_setReaderEphemeralPublicKey:I = 0x2

.field static final blacklist TRANSACTION_storeStaticAuthenticationData:I = 0xb

.field static final blacklist TRANSACTION_storeStaticAuthenticationDataWithExpiration:I = 0xc

.field static final blacklist TRANSACTION_update:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.security.identity.ICredential"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ICredential$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredential;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    const-string v0, "android.security.identity.ICredential"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/identity/ICredential;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/security/identity/ICredential;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Landroid/security/identity/ICredential$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/identity/ICredential$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 154
    :pswitch_0
    const-string/jumbo v0, "update"

    return-object v0

    .line 150
    :pswitch_1
    const-string v0, "getAuthenticationDataUsageCount"

    return-object v0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "storeStaticAuthenticationDataWithExpiration"

    return-object v0

    .line 142
    :pswitch_3
    const-string/jumbo v0, "storeStaticAuthenticationData"

    return-object v0

    .line 138
    :pswitch_4
    const-string v0, "getAuthKeysNeedingCertification"

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "setAvailableAuthenticationKeys"

    return-object v0

    .line 130
    :pswitch_6
    const-string v0, "getEntries"

    return-object v0

    .line 126
    :pswitch_7
    const-string/jumbo v0, "selectAuthKey"

    return-object v0

    .line 122
    :pswitch_8
    const-string v0, "getCredentialKeyCertificateChain"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "proveOwnership"

    return-object v0

    .line 114
    :pswitch_a
    const-string v0, "deleteWithChallenge"

    return-object v0

    .line 110
    :pswitch_b
    const-string v0, "deleteCredential"

    return-object v0

    .line 106
    :pswitch_c
    const-string/jumbo v0, "setReaderEphemeralPublicKey"

    return-object v0

    .line 102
    :pswitch_d
    const-string v0, "createEphemeralKeyPair"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 611
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 165
    invoke-static {p1}, Landroid/security/identity/ICredential$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.security.identity.ICredential"

    .line 170
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 171
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 181
    packed-switch v9, :pswitch_data_1

    .line 327
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 177
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v13

    .line 320
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->update()Landroid/security/identity/IWritableCredential;

    move-result-object v0

    .line 321
    .local v0, "_result":Landroid/security/identity/IWritableCredential;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 323
    goto/16 :goto_0

    .line 313
    .end local v0    # "_result":Landroid/security/identity/IWritableCredential;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->getAuthenticationDataUsageCount()[I

    move-result-object v0

    .line 314
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 316
    goto/16 :goto_0

    .line 301
    .end local v0    # "_result":[I
    :pswitch_3
    sget-object v0, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/AuthKeyParcel;

    .line 303
    .local v0, "_arg0":Landroid/security/identity/AuthKeyParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 305
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 306
    .local v3, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationDataWithExpiration(Landroid/security/identity/AuthKeyParcel;J[B)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto/16 :goto_0

    .line 290
    .end local v0    # "_arg0":Landroid/security/identity/AuthKeyParcel;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":[B
    :pswitch_4
    sget-object v0, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/AuthKeyParcel;

    .line 292
    .restart local v0    # "_arg0":Landroid/security/identity/AuthKeyParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 293
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {v8, v0, v1}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":Landroid/security/identity/AuthKeyParcel;
    .end local v1    # "_arg1":[B
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;

    move-result-object v0

    .line 283
    .local v0, "_result":[Landroid/security/identity/AuthKeyParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 285
    goto/16 :goto_0

    .line 272
    .end local v0    # "_result":[Landroid/security/identity/AuthKeyParcel;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v8, v0, v1}, Landroid/security/identity/ICredential$Stub;->setAvailableAuthenticationKeys(II)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto/16 :goto_0

    .line 250
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 252
    .local v14, "_arg0":[B
    sget-object v0, Landroid/security/identity/RequestNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Landroid/security/identity/RequestNamespaceParcel;

    .line 254
    .local v15, "_arg1":[Landroid/security/identity/RequestNamespaceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 256
    .local v16, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 258
    .local v17, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 260
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 262
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 263
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/security/identity/ICredential$Stub;->getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZZZ)Landroid/security/identity/GetEntriesResultParcel;

    move-result-object v0

    .line 265
    .local v0, "_result":Landroid/security/identity/GetEntriesResultParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_0

    .line 236
    .end local v0    # "_result":Landroid/security/identity/GetEntriesResultParcel;
    .end local v14    # "_arg0":[B
    .end local v15    # "_arg1":[Landroid/security/identity/RequestNamespaceParcel;
    .end local v16    # "_arg2":[B
    .end local v17    # "_arg3":[B
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 238
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 240
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 241
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {v8, v0, v1, v2}, Landroid/security/identity/ICredential$Stub;->selectAuthKey(ZZZ)J

    move-result-wide v3

    .line 243
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {v11, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    goto :goto_0

    .line 228
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":J
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->getCredentialKeyCertificateChain()[B

    move-result-object v0

    .line 229
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    goto :goto_0

    .line 219
    .end local v0    # "_result":[B
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 220
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v8, v0}, Landroid/security/identity/ICredential$Stub;->proveOwnership([B)[B

    move-result-object v1

    .line 222
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 224
    goto :goto_0

    .line 209
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 210
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {v8, v0}, Landroid/security/identity/ICredential$Stub;->deleteWithChallenge([B)[B

    move-result-object v1

    .line 212
    .restart local v1    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 214
    goto :goto_0

    .line 201
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->deleteCredential()[B

    move-result-object v0

    .line 202
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    goto :goto_0

    .line 193
    .end local v0    # "_result":[B
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 194
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v8, v0}, Landroid/security/identity/ICredential$Stub;->setReaderEphemeralPublicKey([B)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_0

    .line 185
    .end local v0    # "_arg0":[B
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->createEphemeralKeyPair()[B

    move-result-object v0

    .line 186
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 188
    nop

    .line 330
    .end local v0    # "_result":[B
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
