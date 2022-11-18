.class public abstract Landroid/hardware/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x1a

.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0xe

.field static final blacklist TRANSACTION_cancelFaceDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFace:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final blacklist TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_enrollRemotely:I = 0xd

.field static final blacklist TRANSACTION_generateChallenge:I = 0x13

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x18

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x11

.field static final blacklist TRANSACTION_getFeature:I = 0x1c

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x16

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0x15

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x17

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x12

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x1d

.field static final blacklist TRANSACTION_remove:I = 0xf

.field static final blacklist TRANSACTION_removeAll:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x19

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x14

.field static final blacklist TRANSACTION_setFeature:I = 0x1b

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    const-string v0, "android.hardware.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceService;

    return-object v1

    .line 176
    :cond_1
    new-instance v1, Landroid/hardware/face/IFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 185
    packed-switch p0, :pswitch_data_0

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 301
    :pswitch_0
    const-string/jumbo v0, "registerAuthenticators"

    return-object v0

    .line 297
    :pswitch_1
    const-string v0, "getFeature"

    return-object v0

    .line 293
    :pswitch_2
    const-string/jumbo v0, "setFeature"

    return-object v0

    .line 289
    :pswitch_3
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 285
    :pswitch_4
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 281
    :pswitch_5
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 277
    :pswitch_6
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 273
    :pswitch_7
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 269
    :pswitch_8
    const-string v0, "hasEnrolledFaces"

    return-object v0

    .line 265
    :pswitch_9
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 261
    :pswitch_a
    const-string v0, "generateChallenge"

    return-object v0

    .line 257
    :pswitch_b
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 253
    :pswitch_c
    const-string v0, "getEnrolledFaces"

    return-object v0

    .line 249
    :pswitch_d
    const-string/jumbo v0, "removeAll"

    return-object v0

    .line 245
    :pswitch_e
    const-string/jumbo v0, "remove"

    return-object v0

    .line 241
    :pswitch_f
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 237
    :pswitch_10
    const-string v0, "enrollRemotely"

    return-object v0

    .line 233
    :pswitch_11
    const-string v0, "enroll"

    return-object v0

    .line 229
    :pswitch_12
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 225
    :pswitch_13
    const-string v0, "cancelFaceDetect"

    return-object v0

    .line 221
    :pswitch_14
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 217
    :pswitch_15
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 213
    :pswitch_16
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 209
    :pswitch_17
    const-string v0, "detectFace"

    return-object v0

    .line 205
    :pswitch_18
    const-string v0, "authenticate"

    return-object v0

    .line 201
    :pswitch_19
    const-string v0, "getSensorProperties"

    return-object v0

    .line 197
    :pswitch_1a
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 193
    :pswitch_1b
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 189
    :pswitch_1c
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 180
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1411
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 312
    invoke-static {p1}, Landroid/hardware/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.hardware.face.IFaceService"

    .line 317
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v14, v9, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 318
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 328
    packed-switch v14, :pswitch_data_1

    .line 768
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 324
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    return v9

    .line 760
    :pswitch_1
    sget-object v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 761
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators(Ljava/util/List;)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 743
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 745
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 747
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 749
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v10

    .line 751
    .local v10, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 752
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 722
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 724
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 726
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 728
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 730
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 732
    .local v18, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v19

    .line 734
    .local v19, "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 735
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 711
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":[B
    .end local v19    # "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v0

    .line 713
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 694
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 696
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 698
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 700
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 702
    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 703
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 682
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 685
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId(II)J

    move-result-wide v2

    .line 687
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 689
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 669
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 674
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 660
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser(II)I

    move-result v2

    .line 662
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 643
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 645
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 647
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v3

    .line 650
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 626
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 628
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 630
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 632
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 634
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 635
    .local v17, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v10

    move-object/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 609
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":J
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 611
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 613
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 615
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v10

    .line 617
    .local v10, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 618
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 597
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 599
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v2

    .line 602
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 604
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 583
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 585
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 587
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 590
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 592
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 568
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 572
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 574
    .local v2, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 551
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 553
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 555
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 557
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v10

    .line 559
    .restart local v10    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 560
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 540
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 542
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 543
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 520
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 522
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 524
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 526
    .local v10, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v16

    .line 528
    .local v16, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 530
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 531
    .local v18, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v0

    .line 533
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 535
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 496
    .end local v0    # "_result":J
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v10    # "_arg2":[B
    .end local v16    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":[I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 498
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 500
    .local v16, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 502
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v18

    .line 504
    .local v18, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 506
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v20

    .line 508
    .local v20, "_arg5":[I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/Surface;

    .line 510
    .local v21, "_arg6":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 511
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/face/IFaceService$Stub;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    .line 513
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 515
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 481
    .end local v0    # "_result":J
    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":Landroid/os/IBinder;
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":[I
    .end local v21    # "_arg6":Landroid/view/Surface;
    .end local v22    # "_arg7":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 483
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 485
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 488
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 468
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":J
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 470
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 473
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 455
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 457
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 460
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 444
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient(II)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 417
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 419
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 421
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 423
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 425
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 427
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v22

    .line 429
    .local v22, "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 431
    .local v23, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 433
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 435
    .local v26, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v27

    .line 436
    .local v27, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move v14, v9

    move-wide/from16 v9, v24

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto/16 :goto_0

    .line 401
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":I
    .end local v27    # "_arg9":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 403
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 407
    .local v2, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 408
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J

    move-result-wide v4

    .line 410
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 412
    goto/16 :goto_0

    .line 381
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 383
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 385
    .local v9, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 387
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v12

    .line 389
    .local v12, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 391
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 392
    .local v17, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 394
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 396
    goto :goto_0

    .line 369
    .end local v0    # "_result":J
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":J
    .end local v12    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_1a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 371
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v2

    .line 374
    .local v2, "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 376
    goto :goto_0

    .line 359
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 364
    goto :goto_0

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 350
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v2

    .line 352
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 354
    goto :goto_0

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 337
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 340
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    nop

    .line 771
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    .end packed-switch
.end method
