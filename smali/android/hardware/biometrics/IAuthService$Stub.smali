.class public abstract Landroid/hardware/biometrics/IAuthService$Stub;
.super Landroid/os/Binder;
.source "IAuthService.java"

# interfaces
.implements Landroid/hardware/biometrics/IAuthService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IAuthService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x4

.field static final blacklist TRANSACTION_canAuthenticate:I = 0x6

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x5

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorIds:I = 0xa

.field static final blacklist TRANSACTION_getButtonLabel:I = 0xc

.field static final blacklist TRANSACTION_getPromptMessage:I = 0xd

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_getSettingName:I = 0xe

.field static final blacklist TRANSACTION_getUiPackage:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledBiometrics:I = 0x7

.field static final blacklist TRANSACTION_invalidateAuthenticatorIds:I = 0x9

.field static final blacklist TRANSACTION_registerEnabledOnKeyguardCallback:I = 0x8

.field static final blacklist TRANSACTION_resetLockoutTimeBound:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    const-string v0, "android.hardware.biometrics.IAuthService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IAuthService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    const-string v0, "android.hardware.biometrics.IAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 118
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/IAuthService;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IAuthService;

    return-object v1

    .line 121
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 186
    :pswitch_0
    const-string v0, "getSettingName"

    return-object v0

    .line 182
    :pswitch_1
    const-string v0, "getPromptMessage"

    return-object v0

    .line 178
    :pswitch_2
    const-string v0, "getButtonLabel"

    return-object v0

    .line 174
    :pswitch_3
    const-string/jumbo v0, "resetLockoutTimeBound"

    return-object v0

    .line 170
    :pswitch_4
    const-string v0, "getAuthenticatorIds"

    return-object v0

    .line 166
    :pswitch_5
    const-string v0, "invalidateAuthenticatorIds"

    return-object v0

    .line 162
    :pswitch_6
    const-string/jumbo v0, "registerEnabledOnKeyguardCallback"

    return-object v0

    .line 158
    :pswitch_7
    const-string v0, "hasEnrolledBiometrics"

    return-object v0

    .line 154
    :pswitch_8
    const-string v0, "canAuthenticate"

    return-object v0

    .line 150
    :pswitch_9
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 146
    :pswitch_a
    const-string v0, "authenticate"

    return-object v0

    .line 142
    :pswitch_b
    const-string v0, "getUiPackage"

    return-object v0

    .line 138
    :pswitch_c
    const-string v0, "getSensorProperties"

    return-object v0

    .line 134
    :pswitch_d
    const-string v0, "createTestSession"

    return-object v0

    nop

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

    .line 125
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 743
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 197
    invoke-static {p1}, Landroid/hardware/biometrics/IAuthService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 201
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.hardware.biometrics.IAuthService"

    .line 202
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 203
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 213
    const/4 v0, 0x0

    packed-switch v9, :pswitch_data_1

    .line 416
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 209
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return v13

    .line 397
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 402
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v8, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 404
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v4, :cond_1

    .line 406
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-static {v4, v11, v13}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 410
    :cond_1
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto/16 :goto_0

    .line 377
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 382
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v8, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 384
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v4, :cond_2

    .line 386
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-static {v4, v11, v13}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 390
    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    goto/16 :goto_0

    .line 357
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v8, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 364
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v4, :cond_3

    .line 366
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-static {v4, v11, v13}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 370
    :cond_3
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto/16 :goto_0

    .line 340
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 342
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 346
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 348
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 349
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/IAuthService$Stub;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_0

    .line 330
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IAuthService$Stub;->getAuthenticatorIds(I)[J

    move-result-object v1

    .line 333
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 335
    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 322
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    move-result-object v0

    .line 309
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IAuthService$Stub;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v2

    .line 301
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->canAuthenticate(Ljava/lang/String;II)I

    move-result v3

    .line 289
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 271
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 274
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 251
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 253
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 255
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v18

    .line 257
    .local v18, "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 259
    .local v19, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/hardware/biometrics/PromptInfo;

    .line 260
    .local v20, "_arg5":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/biometrics/IAuthService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v0

    .line 262
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    goto :goto_0

    .line 241
    .end local v0    # "_result":J
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/hardware/biometrics/PromptInfo;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getUiPackage()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    goto :goto_0

    .line 232
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IAuthService$Stub;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 237
    goto :goto_0

    .line 218
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 222
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 225
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 227
    nop

    .line 419
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_0
    return v13

    nop

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
