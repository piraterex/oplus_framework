.class public abstract Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IBiometricAuthenticator.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x6

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x3

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xb

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x9

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_hasEnrolledTemplates:I = 0x8

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0xa

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x7

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x4

.field static final blacklist TRANSACTION_resetLockout:I = 0xc

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricAuthenticator;

    if-eqz v1, :cond_1

    .line 98
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricAuthenticator;

    return-object v1

    .line 100
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 109
    packed-switch p0, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 153
    :pswitch_1
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 149
    :pswitch_2
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 145
    :pswitch_3
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 141
    :pswitch_4
    const-string v0, "hasEnrolledTemplates"

    return-object v0

    .line 137
    :pswitch_5
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 133
    :pswitch_6
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 129
    :pswitch_7
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 125
    :pswitch_8
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 121
    :pswitch_9
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 117
    :pswitch_a
    const-string v0, "getSensorProperties"

    return-object v0

    .line 113
    :pswitch_b
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 604
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 168
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p3

    const-string v15, "android.hardware.biometrics.IBiometricAuthenticator"

    .line 173
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 174
    move-object/from16 v10, p2

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    move-object/from16 v10, p2

    .line 176
    :goto_0
    packed-switch v13, :pswitch_data_0

    .line 184
    packed-switch v13, :pswitch_data_1

    .line 335
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 180
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return v11

    .line 321
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 323
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 328
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move v13, v11

    goto/16 :goto_1

    .line 311
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getAuthenticatorId(I)J

    move-result-wide v1

    .line 314
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    move v13, v11

    goto/16 :goto_1

    .line 300
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v1

    .line 303
    .local v1, "_arg1":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move v13, v11

    goto/16 :goto_1

    .line 290
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getLockoutModeForUser(I)I

    move-result v1

    .line 293
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    move v13, v11

    goto/16 :goto_1

    .line 278
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v2

    .line 283
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 285
    move v13, v11

    goto/16 :goto_1

    .line 268
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v1

    .line 271
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    move v13, v11

    goto/16 :goto_1

    .line 255
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 257
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 260
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move v13, v11

    goto/16 :goto_1

    .line 246
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->startPreparedClient(I)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move v13, v11

    goto/16 :goto_1

    .line 221
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 223
    .local v16, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 225
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 227
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 229
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    .line 231
    .local v21, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 233
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 235
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 237
    .local v25, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 238
    .local v26, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-wide/from16 v8, v23

    move/from16 v10, v25

    move v13, v11

    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto :goto_1

    .line 211
    .end local v16    # "_arg0":Z
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":J
    .end local v25    # "_arg7":I
    .end local v26    # "_arg8":Z
    :pswitch_a
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 212
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->dumpSensorServiceStateProto(Z)[B

    move-result-object v1

    .line 214
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 216
    goto :goto_1

    .line 201
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[B
    :pswitch_b
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v1

    .line 204
    .local v1, "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v14, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_1

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    :pswitch_c
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v0

    .line 191
    .local v0, "_arg0":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v2

    .line 194
    .local v2, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 196
    nop

    .line 338
    .end local v0    # "_arg0":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_1
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
