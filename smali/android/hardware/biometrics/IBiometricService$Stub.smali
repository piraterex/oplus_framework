.class public abstract Landroid/hardware/biometrics/IBiometricService$Stub;
.super Landroid/os/Binder;
.source "IBiometricService.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x3

.field static final blacklist TRANSACTION_canAuthenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x4

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorIds:I = 0xb

.field static final blacklist TRANSACTION_getCurrentModality:I = 0xe

.field static final blacklist TRANSACTION_getCurrentStrength:I = 0xd

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_getSupportedModalities:I = 0xf

.field static final blacklist TRANSACTION_hasEnrolledBiometrics:I = 0x6

.field static final blacklist TRANSACTION_invalidateAuthenticatorIds:I = 0xa

.field static final blacklist TRANSACTION_onReadyForAuthentication:I = 0x9

.field static final blacklist TRANSACTION_registerAuthenticator:I = 0x7

.field static final blacklist TRANSACTION_registerEnabledOnKeyguardCallback:I = 0x8

.field static final blacklist TRANSACTION_resetLockoutTimeBound:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.hardware.biometrics.IBiometricService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const-string v0, "android.hardware.biometrics.IBiometricService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricService;

    if-eqz v1, :cond_1

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricService;

    return-object v1

    .line 117
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_0

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 186
    :pswitch_0
    const-string v0, "getSupportedModalities"

    return-object v0

    .line 182
    :pswitch_1
    const-string v0, "getCurrentModality"

    return-object v0

    .line 178
    :pswitch_2
    const-string v0, "getCurrentStrength"

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
    const-string/jumbo v0, "onReadyForAuthentication"

    return-object v0

    .line 158
    :pswitch_7
    const-string/jumbo v0, "registerEnabledOnKeyguardCallback"

    return-object v0

    .line 154
    :pswitch_8
    const-string/jumbo v0, "registerAuthenticator"

    return-object v0

    .line 150
    :pswitch_9
    const-string v0, "hasEnrolledBiometrics"

    return-object v0

    .line 146
    :pswitch_a
    const-string v0, "canAuthenticate"

    return-object v0

    .line 142
    :pswitch_b
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 138
    :pswitch_c
    const-string v0, "authenticate"

    return-object v0

    .line 134
    :pswitch_d
    const-string v0, "getSensorProperties"

    return-object v0

    .line 130
    :pswitch_e
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 756
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 197
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v12, "android.hardware.biometrics.IBiometricService"

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
    packed-switch v9, :pswitch_data_1

    .line 415
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 209
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return v13

    .line 406
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSupportedModalities(I)I

    move-result v1

    .line 409
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    goto/16 :goto_0

    .line 390
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 397
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentModality(Ljava/lang/String;III)I

    move-result v4

    .line 399
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 381
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentStrength(I)I

    move-result v1

    .line 383
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    goto/16 :goto_0

    .line 363
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 365
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 369
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 371
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 372
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/IBiometricService$Stub;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_0

    .line 353
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 354
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getAuthenticatorIds(I)[J

    move-result-object v1

    .line 356
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 358
    goto/16 :goto_0

    .line 340
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 344
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 345
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    goto/16 :goto_0

    .line 329
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 331
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->onReadyForAuthentication(JI)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_0

    .line 318
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    move-result-object v0

    .line 320
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;

    move-result-object v3

    .line 310
    .local v3, "_arg3":Landroid/hardware/biometrics/IBiometricAuthenticator;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_0

    .line 291
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/hardware/biometrics/IBiometricAuthenticator;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v2

    .line 296
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->canAuthenticate(Ljava/lang/String;III)I

    move-result v4

    .line 284
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 264
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 267
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_0

    .line 242
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 244
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 246
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 248
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v18

    .line 250
    .local v18, "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 252
    .local v19, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/hardware/biometrics/PromptInfo;

    .line 253
    .local v20, "_arg5":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/biometrics/IBiometricService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v0

    .line 255
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    goto :goto_0

    .line 232
    .end local v0    # "_result":J
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/hardware/biometrics/PromptInfo;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

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
    :pswitch_f
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
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 225
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 227
    nop

    .line 418
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
