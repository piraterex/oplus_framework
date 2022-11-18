.class public abstract Landroid/app/IActivityClientController$Stub;
.super Landroid/os/Binder;
.source "IActivityClientController.java"

# interfaces
.implements Landroid/app/IActivityClientController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityClientController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activityDestroyed:I = 0x6

.field static final blacklist TRANSACTION_activityIdle:I = 0x1

.field static final blacklist TRANSACTION_activityLocalRelaunch:I = 0x7

.field static final blacklist TRANSACTION_activityPaused:I = 0x4

.field static final blacklist TRANSACTION_activityRelaunched:I = 0x8

.field static final blacklist TRANSACTION_activityResumed:I = 0x2

.field static final blacklist TRANSACTION_activityStopped:I = 0x5

.field static final blacklist TRANSACTION_activityTopResumedStateLost:I = 0x3

.field static final blacklist TRANSACTION_convertFromTranslucent:I = 0x1c

.field static final blacklist TRANSACTION_convertToTranslucent:I = 0x1d

.field static final blacklist TRANSACTION_dismissKeyguard:I = 0x34

.field static final blacklist TRANSACTION_enterPictureInPictureMode:I = 0x20

.field static final blacklist TRANSACTION_finishActivity:I = 0xe

.field static final blacklist TRANSACTION_finishActivityAffinity:I = 0xf

.field static final blacklist TRANSACTION_finishSubActivity:I = 0x10

.field static final blacklist TRANSACTION_getActivityTokenBelow:I = 0x15

.field static final blacklist TRANSACTION_getCallingActivity:I = 0x16

.field static final blacklist TRANSACTION_getCallingPackage:I = 0x17

.field static final blacklist TRANSACTION_getDisplayId:I = 0x13

.field static final blacklist TRANSACTION_getLaunchedFromPackage:I = 0x19

.field static final blacklist TRANSACTION_getLaunchedFromUid:I = 0x18

.field static final blacklist TRANSACTION_getRequestedOrientation:I = 0x1b

.field static final blacklist TRANSACTION_getTaskForActivity:I = 0x14

.field static final blacklist TRANSACTION_invalidateHomeTaskSnapshot:I = 0x33

.field static final blacklist TRANSACTION_isImmersive:I = 0x1e

.field static final blacklist TRANSACTION_isRootVoiceInteraction:I = 0x29

.field static final blacklist TRANSACTION_isTopOfTask:I = 0x11

.field static final blacklist TRANSACTION_moveActivityTaskToBack:I = 0xa

.field static final blacklist TRANSACTION_navigateUpTo:I = 0xc

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x37

.field static final blacklist TRANSACTION_overridePendingTransition:I = 0x30

.field static final blacklist TRANSACTION_registerRemoteAnimations:I = 0x35

.field static final blacklist TRANSACTION_releaseActivityInstance:I = 0xd

.field static final blacklist TRANSACTION_reportActivityFullyDrawn:I = 0x2f

.field static final blacklist TRANSACTION_reportSizeConfigurations:I = 0x9

.field static final blacklist TRANSACTION_requestCompatCameraControl:I = 0x39

.field static final blacklist TRANSACTION_setImmersive:I = 0x1f

.field static final blacklist TRANSACTION_setInheritShowWhenLocked:I = 0x2d

.field static final blacklist TRANSACTION_setPictureInPictureParams:I = 0x21

.field static final blacklist TRANSACTION_setRecentsScreenshotEnabled:I = 0x32

.field static final blacklist TRANSACTION_setRequestedOrientation:I = 0x1a

.field static final blacklist TRANSACTION_setShouldDockBigOverlays:I = 0x22

.field static final blacklist TRANSACTION_setShowWhenLocked:I = 0x2c

.field static final blacklist TRANSACTION_setTaskDescription:I = 0x27

.field static final blacklist TRANSACTION_setTurnScreenOn:I = 0x2e

.field static final blacklist TRANSACTION_setVrMode:I = 0x31

.field static final blacklist TRANSACTION_shouldUpRecreateTask:I = 0xb

.field static final blacklist TRANSACTION_showAssistFromActivity:I = 0x28

.field static final blacklist TRANSACTION_showLockTaskEscapeMessage:I = 0x26

.field static final blacklist TRANSACTION_splashScreenAttached:I = 0x38

.field static final blacklist TRANSACTION_startLocalVoiceInteraction:I = 0x2a

.field static final blacklist TRANSACTION_startLockTaskModeByToken:I = 0x24

.field static final blacklist TRANSACTION_stopLocalVoiceInteraction:I = 0x2b

.field static final blacklist TRANSACTION_stopLockTaskModeByToken:I = 0x25

.field static final blacklist TRANSACTION_toggleFreeformWindowingMode:I = 0x23

.field static final blacklist TRANSACTION_unregisterRemoteAnimations:I = 0x36

.field static final blacklist TRANSACTION_willActivityBeVisible:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 260
    const-string v0, "android.app.IActivityClientController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityClientController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    const-string v0, "android.app.IActivityClientController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 272
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityClientController;

    if-eqz v1, :cond_1

    .line 273
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityClientController;

    return-object v1

    .line 275
    :cond_1
    new-instance v1, Landroid/app/IActivityClientController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityClientController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 284
    packed-switch p0, :pswitch_data_0

    .line 516
    const/4 v0, 0x0

    return-object v0

    .line 512
    :pswitch_0
    const-string/jumbo v0, "requestCompatCameraControl"

    return-object v0

    .line 508
    :pswitch_1
    const-string/jumbo v0, "splashScreenAttached"

    return-object v0

    .line 504
    :pswitch_2
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 500
    :pswitch_3
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    .line 496
    :pswitch_4
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    .line 492
    :pswitch_5
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 488
    :pswitch_6
    const-string v0, "invalidateHomeTaskSnapshot"

    return-object v0

    .line 484
    :pswitch_7
    const-string/jumbo v0, "setRecentsScreenshotEnabled"

    return-object v0

    .line 480
    :pswitch_8
    const-string/jumbo v0, "setVrMode"

    return-object v0

    .line 476
    :pswitch_9
    const-string/jumbo v0, "overridePendingTransition"

    return-object v0

    .line 472
    :pswitch_a
    const-string/jumbo v0, "reportActivityFullyDrawn"

    return-object v0

    .line 468
    :pswitch_b
    const-string/jumbo v0, "setTurnScreenOn"

    return-object v0

    .line 464
    :pswitch_c
    const-string/jumbo v0, "setInheritShowWhenLocked"

    return-object v0

    .line 460
    :pswitch_d
    const-string/jumbo v0, "setShowWhenLocked"

    return-object v0

    .line 456
    :pswitch_e
    const-string/jumbo v0, "stopLocalVoiceInteraction"

    return-object v0

    .line 452
    :pswitch_f
    const-string/jumbo v0, "startLocalVoiceInteraction"

    return-object v0

    .line 448
    :pswitch_10
    const-string v0, "isRootVoiceInteraction"

    return-object v0

    .line 444
    :pswitch_11
    const-string/jumbo v0, "showAssistFromActivity"

    return-object v0

    .line 440
    :pswitch_12
    const-string/jumbo v0, "setTaskDescription"

    return-object v0

    .line 436
    :pswitch_13
    const-string/jumbo v0, "showLockTaskEscapeMessage"

    return-object v0

    .line 432
    :pswitch_14
    const-string/jumbo v0, "stopLockTaskModeByToken"

    return-object v0

    .line 428
    :pswitch_15
    const-string/jumbo v0, "startLockTaskModeByToken"

    return-object v0

    .line 424
    :pswitch_16
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    .line 420
    :pswitch_17
    const-string/jumbo v0, "setShouldDockBigOverlays"

    return-object v0

    .line 416
    :pswitch_18
    const-string/jumbo v0, "setPictureInPictureParams"

    return-object v0

    .line 412
    :pswitch_19
    const-string v0, "enterPictureInPictureMode"

    return-object v0

    .line 408
    :pswitch_1a
    const-string/jumbo v0, "setImmersive"

    return-object v0

    .line 404
    :pswitch_1b
    const-string v0, "isImmersive"

    return-object v0

    .line 400
    :pswitch_1c
    const-string v0, "convertToTranslucent"

    return-object v0

    .line 396
    :pswitch_1d
    const-string v0, "convertFromTranslucent"

    return-object v0

    .line 392
    :pswitch_1e
    const-string v0, "getRequestedOrientation"

    return-object v0

    .line 388
    :pswitch_1f
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 384
    :pswitch_20
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 380
    :pswitch_21
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 376
    :pswitch_22
    const-string v0, "getCallingPackage"

    return-object v0

    .line 372
    :pswitch_23
    const-string v0, "getCallingActivity"

    return-object v0

    .line 368
    :pswitch_24
    const-string v0, "getActivityTokenBelow"

    return-object v0

    .line 364
    :pswitch_25
    const-string v0, "getTaskForActivity"

    return-object v0

    .line 360
    :pswitch_26
    const-string v0, "getDisplayId"

    return-object v0

    .line 356
    :pswitch_27
    const-string/jumbo v0, "willActivityBeVisible"

    return-object v0

    .line 352
    :pswitch_28
    const-string v0, "isTopOfTask"

    return-object v0

    .line 348
    :pswitch_29
    const-string v0, "finishSubActivity"

    return-object v0

    .line 344
    :pswitch_2a
    const-string v0, "finishActivityAffinity"

    return-object v0

    .line 340
    :pswitch_2b
    const-string v0, "finishActivity"

    return-object v0

    .line 336
    :pswitch_2c
    const-string/jumbo v0, "releaseActivityInstance"

    return-object v0

    .line 332
    :pswitch_2d
    const-string/jumbo v0, "navigateUpTo"

    return-object v0

    .line 328
    :pswitch_2e
    const-string/jumbo v0, "shouldUpRecreateTask"

    return-object v0

    .line 324
    :pswitch_2f
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 320
    :pswitch_30
    const-string/jumbo v0, "reportSizeConfigurations"

    return-object v0

    .line 316
    :pswitch_31
    const-string v0, "activityRelaunched"

    return-object v0

    .line 312
    :pswitch_32
    const-string v0, "activityLocalRelaunch"

    return-object v0

    .line 308
    :pswitch_33
    const-string v0, "activityDestroyed"

    return-object v0

    .line 304
    :pswitch_34
    const-string v0, "activityStopped"

    return-object v0

    .line 300
    :pswitch_35
    const-string v0, "activityPaused"

    return-object v0

    .line 296
    :pswitch_36
    const-string v0, "activityTopResumedStateLost"

    return-object v0

    .line 292
    :pswitch_37
    const-string v0, "activityResumed"

    return-object v0

    .line 288
    :pswitch_38
    const-string v0, "activityIdle"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 279
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2191
    const/16 v0, 0x38

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 523
    invoke-static {p1}, Landroid/app/IActivityClientController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 527
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.IActivityClientController"

    .line 528
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 529
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 539
    packed-switch v7, :pswitch_data_1

    .line 1147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 535
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    return v11

    .line 1134
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1136
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1138
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1140
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICompatCameraControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICompatCameraControlCallback;

    move-result-object v3

    .line 1141
    .local v3, "_arg3":Landroid/app/ICompatCameraControlCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->requestCompatCameraControl(Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V

    .line 1143
    goto/16 :goto_0

    .line 1126
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/app/ICompatCameraControlCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1127
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->splashScreenAttached(Landroid/os/IBinder;)V

    .line 1129
    goto/16 :goto_0

    .line 1116
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1118
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IRequestFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IRequestFinishCallback;

    move-result-object v1

    .line 1119
    .local v1, "_arg1":Landroid/app/IRequestFinishCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 1121
    goto/16 :goto_0

    .line 1107
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/IRequestFinishCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1108
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 1110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    goto/16 :goto_0

    .line 1096
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1098
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .line 1099
    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 1101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    goto/16 :goto_0

    .line 1083
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1085
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v1

    .line 1087
    .local v1, "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1088
    .local v2, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    goto/16 :goto_0

    .line 1074
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v2    # "_arg2":Ljava/lang/CharSequence;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1075
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    goto/16 :goto_0

    .line 1064
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1066
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1067
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 1069
    goto/16 :goto_0

    .line 1050
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1052
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1054
    .restart local v1    # "_arg1":Z
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1055
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v3

    .line 1057
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    goto/16 :goto_0

    .line 1033
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 1035
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1037
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1039
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1041
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1042
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_0

    .line 1023
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1025
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1026
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 1028
    goto/16 :goto_0

    .line 1013
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1015
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1016
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 1018
    goto/16 :goto_0

    .line 1003
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1005
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1006
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1008
    goto/16 :goto_0

    .line 993
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 995
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 996
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 998
    goto/16 :goto_0

    .line 984
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 985
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_0

    .line 973
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 975
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 976
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_0

    .line 963
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 964
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v1

    .line 966
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 968
    goto/16 :goto_0

    .line 951
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 953
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 954
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    .line 956
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 958
    goto/16 :goto_0

    .line 940
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 942
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    .line 943
    .local v1, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    goto/16 :goto_0

    .line 932
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 933
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 935
    goto/16 :goto_0

    .line 924
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 925
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 927
    goto/16 :goto_0

    .line 916
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 917
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 919
    goto/16 :goto_0

    .line 907
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 908
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_0

    .line 897
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 899
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 900
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 902
    goto/16 :goto_0

    .line 886
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 888
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    .line 889
    .local v1, "_arg1":Landroid/app/PictureInPictureParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    goto/16 :goto_0

    .line 874
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 876
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    .line 877
    .restart local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v2

    .line 879
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 881
    goto/16 :goto_0

    .line 863
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v2    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 865
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 866
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 854
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v1

    .line 856
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 858
    goto/16 :goto_0

    .line 841
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 843
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 844
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    .line 846
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 848
    goto/16 :goto_0

    .line 831
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 832
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    .line 834
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 836
    goto/16 :goto_0

    .line 821
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 822
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v1

    .line 824
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    goto/16 :goto_0

    .line 810
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 812
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_0

    .line 800
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 801
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 805
    goto/16 :goto_0

    .line 790
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 791
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    .line 793
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 781
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 785
    goto/16 :goto_0

    .line 770
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 771
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    .line 773
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 775
    goto/16 :goto_0

    .line 760
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 761
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 763
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 765
    goto/16 :goto_0

    .line 748
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 750
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 751
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 753
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    goto/16 :goto_0

    .line 738
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 739
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getDisplayId(Landroid/os/IBinder;)I

    move-result v1

    .line 741
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    goto/16 :goto_0

    .line 728
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 729
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v1

    .line 731
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 733
    goto/16 :goto_0

    .line 718
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 719
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    .line 721
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 723
    goto/16 :goto_0

    .line 705
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 707
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 710
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_0

    .line 695
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 696
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    .line 698
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 700
    goto/16 :goto_0

    .line 679
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 681
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 685
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 686
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    .line 688
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 690
    goto/16 :goto_0

    .line 669
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 670
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v1

    .line 672
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 674
    goto/16 :goto_0

    .line 653
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 655
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 657
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    .local v2, "_arg2":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 660
    .local v3, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    .line 662
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 664
    goto/16 :goto_0

    .line 641
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/Intent;
    .end local v4    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 643
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    .line 646
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 648
    goto/16 :goto_0

    .line 629
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 631
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 632
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 634
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    goto/16 :goto_0

    .line 619
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 621
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SizeConfigurationBuckets;

    .line 622
    .local v1, "_arg1":Landroid/window/SizeConfigurationBuckets;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 624
    goto/16 :goto_0

    .line 611
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/window/SizeConfigurationBuckets;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 612
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 614
    goto/16 :goto_0

    .line 603
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 604
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 606
    goto :goto_0

    .line 595
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 596
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 598
    goto :goto_0

    .line 581
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 583
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 585
    .local v1, "_arg1":Landroid/os/Bundle;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 587
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 588
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 590
    goto :goto_0

    .line 572
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/os/PersistableBundle;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 573
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto :goto_0

    .line 565
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityClientController$Stub;->activityTopResumedStateLost()V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto :goto_0

    .line 556
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 558
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 559
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->activityResumed(Landroid/os/IBinder;Z)V

    .line 561
    goto :goto_0

    .line 544
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 546
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 548
    .local v1, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 549
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 551
    nop

    .line 1150
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/res/Configuration;
    .end local v2    # "_arg2":Z
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
