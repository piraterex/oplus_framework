.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x32

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x20

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x6

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x15

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x17

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x14

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x16

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x10

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x41

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x22

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x34

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x12

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x23

.field static final blacklist TRANSACTION_handleWindowManagerLoggingCommand:I = 0x39

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x2b

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xc

.field static final blacklist TRANSACTION_hideToast:I = 0x36

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x28

.field static final blacklist TRANSACTION_onBiometricError:I = 0x2a

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x29

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1a

.field static final blacklist TRANSACTION_onDisplayReady:I = 0x2e

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x1b

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x1e

.field static final blacklist TRANSACTION_onRecentsAnimationStateChanged:I = 0x2f

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x30

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x3c

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0xf

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x44

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x21

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x40

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3f

.field static final blacklist TRANSACTION_requestWindowMagnificationConnection:I = 0x3b

.field static final blacklist TRANSACTION_runGcForTest:I = 0x3e

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x2c

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0x9

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x3d

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x1f

.field static final blacklist TRANSACTION_setUdfpsHbmListener:I = 0x2d

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xa

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x18

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x27

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x1d

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x33

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x1c

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x24

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x25

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xb

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x11

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x26

.field static final blacklist TRANSACTION_showToast:I = 0x35

.field static final blacklist TRANSACTION_showTransient:I = 0x31

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x19

.field static final blacklist TRANSACTION_startTracing:I = 0x37

.field static final blacklist TRANSACTION_stopTracing:I = 0x38

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3a

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x13

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x7

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xd

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0xe

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x45

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x43

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x42


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 346
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 347
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 355
    if-nez p0, :cond_0

    .line 356
    const/4 v0, 0x0

    return-object v0

    .line 358
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 359
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 360
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    .line 362
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 371
    packed-switch p0, :pswitch_data_0

    .line 651
    const/4 v0, 0x0

    return-object v0

    .line 647
    :pswitch_0
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 643
    :pswitch_1
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 639
    :pswitch_2
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 635
    :pswitch_3
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 631
    :pswitch_4
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 627
    :pswitch_5
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 623
    :pswitch_6
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 619
    :pswitch_7
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    .line 615
    :pswitch_8
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    .line 611
    :pswitch_9
    const-string/jumbo v0, "passThroughShellCommand"

    return-object v0

    .line 607
    :pswitch_a
    const-string/jumbo v0, "requestWindowMagnificationConnection"

    return-object v0

    .line 603
    :pswitch_b
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 599
    :pswitch_c
    const-string v0, "handleWindowManagerLoggingCommand"

    return-object v0

    .line 595
    :pswitch_d
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 591
    :pswitch_e
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 587
    :pswitch_f
    const-string v0, "hideToast"

    return-object v0

    .line 583
    :pswitch_10
    const-string/jumbo v0, "showToast"

    return-object v0

    .line 579
    :pswitch_11
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 575
    :pswitch_12
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 571
    :pswitch_13
    const-string v0, "abortTransient"

    return-object v0

    .line 567
    :pswitch_14
    const-string/jumbo v0, "showTransient"

    return-object v0

    .line 563
    :pswitch_15
    const-string/jumbo v0, "onSystemBarAttributesChanged"

    return-object v0

    .line 559
    :pswitch_16
    const-string/jumbo v0, "onRecentsAnimationStateChanged"

    return-object v0

    .line 555
    :pswitch_17
    const-string/jumbo v0, "onDisplayReady"

    return-object v0

    .line 551
    :pswitch_18
    const-string/jumbo v0, "setUdfpsHbmListener"

    return-object v0

    .line 547
    :pswitch_19
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 543
    :pswitch_1a
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    .line 539
    :pswitch_1b
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    .line 535
    :pswitch_1c
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    .line 531
    :pswitch_1d
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    .line 527
    :pswitch_1e
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 523
    :pswitch_1f
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    .line 519
    :pswitch_20
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 515
    :pswitch_21
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 511
    :pswitch_22
    const-string v0, "handleSystemKey"

    return-object v0

    .line 507
    :pswitch_23
    const-string v0, "clickQsTile"

    return-object v0

    .line 503
    :pswitch_24
    const-string/jumbo v0, "remQsTile"

    return-object v0

    .line 499
    :pswitch_25
    const-string v0, "addQsTile"

    return-object v0

    .line 495
    :pswitch_26
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    .line 491
    :pswitch_27
    const-string/jumbo v0, "onProposedRotationChanged"

    return-object v0

    .line 487
    :pswitch_28
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    .line 483
    :pswitch_29
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    .line 479
    :pswitch_2a
    const-string/jumbo v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    .line 475
    :pswitch_2b
    const-string/jumbo v0, "onCameraLaunchGestureDetected"

    return-object v0

    .line 471
    :pswitch_2c
    const-string/jumbo v0, "startAssist"

    return-object v0

    .line 467
    :pswitch_2d
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    .line 463
    :pswitch_2e
    const-string v0, "appTransitionFinished"

    return-object v0

    .line 459
    :pswitch_2f
    const-string v0, "appTransitionStarting"

    return-object v0

    .line 455
    :pswitch_30
    const-string v0, "appTransitionCancelled"

    return-object v0

    .line 451
    :pswitch_31
    const-string v0, "appTransitionPending"

    return-object v0

    .line 447
    :pswitch_32
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    .line 443
    :pswitch_33
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    .line 439
    :pswitch_34
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    .line 435
    :pswitch_35
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    .line 431
    :pswitch_36
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    .line 427
    :pswitch_37
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    .line 423
    :pswitch_38
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    .line 419
    :pswitch_39
    const-string v0, "hideRecentApps"

    return-object v0

    .line 415
    :pswitch_3a
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    .line 411
    :pswitch_3b
    const-string/jumbo v0, "setWindowState"

    return-object v0

    .line 407
    :pswitch_3c
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 403
    :pswitch_3d
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    .line 399
    :pswitch_3e
    const-string/jumbo v0, "togglePanel"

    return-object v0

    .line 395
    :pswitch_3f
    const-string v0, "animateCollapsePanels"

    return-object v0

    .line 391
    :pswitch_40
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    .line 387
    :pswitch_41
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    .line 383
    :pswitch_42
    const-string v0, "disable"

    return-object v0

    .line 379
    :pswitch_43
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 375
    :pswitch_44
    const-string/jumbo v0, "setIcon"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 366
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2391
    const/16 v0, 0x44

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 658
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "com.android.internal.statusbar.IStatusBar"

    .line 663
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 664
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 674
    move-object/from16 v11, p3

    packed-switch v14, :pswitch_data_1

    .line 1289
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 670
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    return v10

    .line 1282
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1283
    .local v0, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1285
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1274
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1275
    .restart local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1277
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1260
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1262
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1264
    .local v1, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 1266
    .local v2, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1267
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1269
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1248
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1250
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1252
    .restart local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    .line 1253
    .local v2, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1255
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1240
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1243
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1224
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1226
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    .line 1228
    .local v7, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    .line 1230
    .local v8, "_arg2":Ljava/lang/CharSequence;
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/drawable/Icon;

    .line 1232
    .local v9, "_arg3":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v16

    .line 1233
    .local v16, "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1235
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1216
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Ljava/lang/CharSequence;
    .end local v8    # "_arg2":Ljava/lang/CharSequence;
    .end local v9    # "_arg3":Landroid/graphics/drawable/Icon;
    .end local v16    # "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_7
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1217
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1219
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1210
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1211
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1201
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1203
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1204
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1206
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1191
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "_arg0":[Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1194
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1196
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1183
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1184
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestWindowMagnificationConnection(Z)V

    .line 1186
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1175
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1176
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1178
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1165
    .end local v0    # "_arg0":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "_arg0":[Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1168
    .restart local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1170
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1159
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1160
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1154
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1155
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1145
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1148
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1150
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1125
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1127
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1129
    .local v17, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    .line 1131
    .local v18, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1133
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1135
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v21

    .line 1137
    .local v21, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1138
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1140
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1115
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Ljava/lang/CharSequence;
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v22    # "_arg7":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1116
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1118
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1109
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1110
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1100
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1102
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1103
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(I[I)V

    .line 1105
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1088
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1092
    .restart local v1    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1093
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(I[IZ)V

    .line 1095
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1068
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1070
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1072
    .local v9, "_arg1":I
    sget-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Lcom/android/internal/view/AppearanceRegion;

    .line 1074
    .local v16, "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1076
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1078
    .local v18, "_arg4":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsVisibilities;

    .line 1080
    .local v19, "_arg5":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1081
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    .line 1083
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1060
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v16    # "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Landroid/view/InsetsVisibilities;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1061
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onRecentsAnimationStateChanged(Z)V

    .line 1063
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1052
    .end local v0    # "_arg0":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1053
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayReady(I)V

    .line 1055
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1044
    .end local v0    # "_arg0":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v0

    .line 1045
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 1047
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1036
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    .line 1037
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1039
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1028
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1029
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1031
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1016
    .end local v0    # "_arg0":J
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1018
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1020
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1021
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1023
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1006
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1008
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1011
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 998
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1001
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 972
    .end local v0    # "_arg0":I
    :pswitch_1f
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    .line 974
    .local v16, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    .line 976
    .local v17, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 978
    .local v18, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 980
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 982
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 984
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 986
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 988
    .local v24, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 990
    .local v25, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 991
    .local v27, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move/from16 v28, v10

    move-wide/from16 v10, v25

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    .line 993
    goto/16 :goto_0

    .line 962
    .end local v16    # "_arg0":Landroid/hardware/biometrics/PromptInfo;
    .end local v17    # "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .end local v18    # "_arg2":[I
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":Ljava/lang/String;
    .end local v25    # "_arg8":J
    .end local v27    # "_arg9":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 964
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 965
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    .line 967
    goto/16 :goto_0

    .line 956
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 957
    goto/16 :goto_0

    .line 949
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 950
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 952
    goto/16 :goto_0

    .line 941
    .end local v0    # "_arg0":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 942
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    .line 944
    goto/16 :goto_0

    .line 933
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 934
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 936
    goto/16 :goto_0

    .line 925
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 926
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 928
    goto/16 :goto_0

    .line 917
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 918
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 920
    goto/16 :goto_0

    .line 909
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 910
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 912
    goto/16 :goto_0

    .line 899
    .end local v0    # "_arg0":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 901
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 902
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 904
    goto/16 :goto_0

    .line 893
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    .line 894
    goto/16 :goto_0

    .line 888
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 889
    goto/16 :goto_0

    .line 883
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 884
    goto/16 :goto_0

    .line 876
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 877
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 879
    goto/16 :goto_0

    .line 868
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 869
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 871
    goto/16 :goto_0

    .line 862
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 863
    goto/16 :goto_0

    .line 855
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 856
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 858
    goto/16 :goto_0

    .line 843
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 845
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 847
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 848
    .local v9, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 850
    goto/16 :goto_0

    .line 835
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":J
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 836
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 838
    goto/16 :goto_0

    .line 827
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 830
    goto/16 :goto_0

    .line 819
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 822
    goto/16 :goto_0

    .line 813
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 814
    goto/16 :goto_0

    .line 806
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 807
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 809
    goto/16 :goto_0

    .line 800
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 801
    goto/16 :goto_0

    .line 795
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 796
    goto/16 :goto_0

    .line 790
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 791
    goto/16 :goto_0

    .line 785
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 786
    goto/16 :goto_0

    .line 776
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 778
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 779
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 781
    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 769
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 771
    goto/16 :goto_0

    .line 756
    .end local v0    # "_arg0":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 758
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 760
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 761
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 763
    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 742
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 744
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 746
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 748
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 749
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 751
    goto/16 :goto_0

    .line 732
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 735
    goto/16 :goto_0

    .line 726
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    .line 727
    goto :goto_0

    .line 721
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_40
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 722
    goto :goto_0

    .line 714
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 717
    goto :goto_0

    .line 708
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 709
    goto :goto_0

    .line 697
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 702
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 704
    goto :goto_0

    .line 689
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 692
    goto :goto_0

    .line 679
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 682
    .local v1, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 684
    nop

    .line 1292
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_0
    return v28

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
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
