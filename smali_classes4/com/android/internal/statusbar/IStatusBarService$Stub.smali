.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final greylist-max-o TRANSACTION_addTile:I = 0x28

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x3d

.field static final blacklist TRANSACTION_clearInlineReplyUriPermissions:I = 0x21

.field static final greylist-max-o TRANSACTION_clearNotificationEffects:I = 0x11

.field static final greylist-max-o TRANSACTION_clickTile:I = 0x2a

.field static final greylist-max-o TRANSACTION_collapsePanels:I = 0x2

.field static final greylist-max-o TRANSACTION_disable:I = 0x4

.field static final greylist-max-o TRANSACTION_disable2:I = 0x6

.field static final greylist-max-o TRANSACTION_disable2ForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_disableForUser:I = 0x5

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x36

.field static final greylist-max-o TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final greylist-max-o TRANSACTION_expandSettingsPanel:I = 0xd

.field static final blacklist TRANSACTION_getDisableFlags:I = 0x8

.field static final blacklist TRANSACTION_getNavBarMode:I = 0x3f

.field static final blacklist TRANSACTION_grantInlineReplyUriPermission:I = 0x20

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2b

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x32

.field static final blacklist TRANSACTION_hideCurrentInputMethodForBubbles:I = 0x1f

.field static final blacklist TRANSACTION_isTracing:I = 0x39

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2f

.field static final blacklist TRANSACTION_onBiometricError:I = 0x31

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x30

.field static final blacklist TRANSACTION_onBubbleMetadataFlagChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_onClearAllNotifications:I = 0x15

.field static final greylist-max-o TRANSACTION_onGlobalActionsHidden:I = 0x24

.field static final greylist-max-o TRANSACTION_onGlobalActionsShown:I = 0x23

.field static final greylist-max-o TRANSACTION_onNotificationActionClick:I = 0x13

.field static final blacklist TRANSACTION_onNotificationBubbleChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_onNotificationClear:I = 0x16

.field static final greylist-max-o TRANSACTION_onNotificationClick:I = 0x12

.field static final greylist-max-o TRANSACTION_onNotificationDirectReplied:I = 0x19

.field static final greylist-max-o TRANSACTION_onNotificationError:I = 0x14

.field static final greylist-max-o TRANSACTION_onNotificationExpansionChanged:I = 0x18

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x22

.field static final greylist-max-o TRANSACTION_onNotificationSettingsViewed:I = 0x1c

.field static final greylist-max-o TRANSACTION_onNotificationSmartReplySent:I = 0x1b

.field static final blacklist TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationVisibilityChanged:I = 0x17

.field static final greylist-max-o TRANSACTION_onPanelHidden:I = 0x10

.field static final greylist-max-o TRANSACTION_onPanelRevealed:I = 0xf

.field static final blacklist TRANSACTION_onSessionEnded:I = 0x43

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x42

.field static final greylist-max-o TRANSACTION_reboot:I = 0x26

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x46

.field static final blacklist TRANSACTION_registerSessionListener:I = 0x40

.field static final greylist-max-o TRANSACTION_registerStatusBar:I = 0xe

.field static final greylist-max-o TRANSACTION_remTile:I = 0x29

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0xb

.field static final blacklist TRANSACTION_requestAddTile:I = 0x3c

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3b

.field static final blacklist TRANSACTION_restart:I = 0x27

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x33

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setIconVisibility:I = 0xa

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xc

.field static final blacklist TRANSACTION_setNavBarMode:I = 0x3e

.field static final blacklist TRANSACTION_setUdfpsHbmListener:I = 0x34

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2e

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x35

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2c

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2d

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x25

.field static final blacklist TRANSACTION_startTracing:I = 0x37

.field static final blacklist TRANSACTION_stopTracing:I = 0x38

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3a

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x3

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x47

.field static final blacklist TRANSACTION_unregisterSessionListener:I = 0x41

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x45

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x44


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 282
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 283
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 291
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 295
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 296
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v1

    .line 298
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 307
    packed-switch p0, :pswitch_data_0

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 591
    :pswitch_0
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 587
    :pswitch_1
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 583
    :pswitch_2
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 579
    :pswitch_3
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 575
    :pswitch_4
    const-string/jumbo v0, "onSessionEnded"

    return-object v0

    .line 571
    :pswitch_5
    const-string/jumbo v0, "onSessionStarted"

    return-object v0

    .line 567
    :pswitch_6
    const-string/jumbo v0, "unregisterSessionListener"

    return-object v0

    .line 563
    :pswitch_7
    const-string/jumbo v0, "registerSessionListener"

    return-object v0

    .line 559
    :pswitch_8
    const-string v0, "getNavBarMode"

    return-object v0

    .line 555
    :pswitch_9
    const-string/jumbo v0, "setNavBarMode"

    return-object v0

    .line 551
    :pswitch_a
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 547
    :pswitch_b
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 543
    :pswitch_c
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 539
    :pswitch_d
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 535
    :pswitch_e
    const-string/jumbo v0, "isTracing"

    return-object v0

    .line 531
    :pswitch_f
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 527
    :pswitch_10
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 523
    :pswitch_11
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 519
    :pswitch_12
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 515
    :pswitch_13
    const-string/jumbo v0, "setUdfpsHbmListener"

    return-object v0

    .line 511
    :pswitch_14
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 507
    :pswitch_15
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    .line 503
    :pswitch_16
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    .line 499
    :pswitch_17
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    .line 495
    :pswitch_18
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    .line 491
    :pswitch_19
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 487
    :pswitch_1a
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 483
    :pswitch_1b
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 479
    :pswitch_1c
    const-string v0, "handleSystemKey"

    return-object v0

    .line 475
    :pswitch_1d
    const-string v0, "clickTile"

    return-object v0

    .line 471
    :pswitch_1e
    const-string/jumbo v0, "remTile"

    return-object v0

    .line 467
    :pswitch_1f
    const-string v0, "addTile"

    return-object v0

    .line 463
    :pswitch_20
    const-string/jumbo v0, "restart"

    return-object v0

    .line 459
    :pswitch_21
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 455
    :pswitch_22
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 451
    :pswitch_23
    const-string/jumbo v0, "onGlobalActionsHidden"

    return-object v0

    .line 447
    :pswitch_24
    const-string/jumbo v0, "onGlobalActionsShown"

    return-object v0

    .line 443
    :pswitch_25
    const-string/jumbo v0, "onNotificationFeedbackReceived"

    return-object v0

    .line 439
    :pswitch_26
    const-string v0, "clearInlineReplyUriPermissions"

    return-object v0

    .line 435
    :pswitch_27
    const-string v0, "grantInlineReplyUriPermission"

    return-object v0

    .line 431
    :pswitch_28
    const-string v0, "hideCurrentInputMethodForBubbles"

    return-object v0

    .line 427
    :pswitch_29
    const-string/jumbo v0, "onBubbleMetadataFlagChanged"

    return-object v0

    .line 423
    :pswitch_2a
    const-string/jumbo v0, "onNotificationBubbleChanged"

    return-object v0

    .line 419
    :pswitch_2b
    const-string/jumbo v0, "onNotificationSettingsViewed"

    return-object v0

    .line 415
    :pswitch_2c
    const-string/jumbo v0, "onNotificationSmartReplySent"

    return-object v0

    .line 411
    :pswitch_2d
    const-string/jumbo v0, "onNotificationSmartSuggestionsAdded"

    return-object v0

    .line 407
    :pswitch_2e
    const-string/jumbo v0, "onNotificationDirectReplied"

    return-object v0

    .line 403
    :pswitch_2f
    const-string/jumbo v0, "onNotificationExpansionChanged"

    return-object v0

    .line 399
    :pswitch_30
    const-string/jumbo v0, "onNotificationVisibilityChanged"

    return-object v0

    .line 395
    :pswitch_31
    const-string/jumbo v0, "onNotificationClear"

    return-object v0

    .line 391
    :pswitch_32
    const-string/jumbo v0, "onClearAllNotifications"

    return-object v0

    .line 387
    :pswitch_33
    const-string/jumbo v0, "onNotificationError"

    return-object v0

    .line 383
    :pswitch_34
    const-string/jumbo v0, "onNotificationActionClick"

    return-object v0

    .line 379
    :pswitch_35
    const-string/jumbo v0, "onNotificationClick"

    return-object v0

    .line 375
    :pswitch_36
    const-string v0, "clearNotificationEffects"

    return-object v0

    .line 371
    :pswitch_37
    const-string/jumbo v0, "onPanelHidden"

    return-object v0

    .line 367
    :pswitch_38
    const-string/jumbo v0, "onPanelRevealed"

    return-object v0

    .line 363
    :pswitch_39
    const-string/jumbo v0, "registerStatusBar"

    return-object v0

    .line 359
    :pswitch_3a
    const-string v0, "expandSettingsPanel"

    return-object v0

    .line 355
    :pswitch_3b
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 351
    :pswitch_3c
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 347
    :pswitch_3d
    const-string/jumbo v0, "setIconVisibility"

    return-object v0

    .line 343
    :pswitch_3e
    const-string/jumbo v0, "setIcon"

    return-object v0

    .line 339
    :pswitch_3f
    const-string v0, "getDisableFlags"

    return-object v0

    .line 335
    :pswitch_40
    const-string v0, "disable2ForUser"

    return-object v0

    .line 331
    :pswitch_41
    const-string v0, "disable2"

    return-object v0

    .line 327
    :pswitch_42
    const-string v0, "disableForUser"

    return-object v0

    .line 323
    :pswitch_43
    const-string v0, "disable"

    return-object v0

    .line 319
    :pswitch_44
    const-string/jumbo v0, "togglePanel"

    return-object v0

    .line 315
    :pswitch_45
    const-string v0, "collapsePanels"

    return-object v0

    .line 311
    :pswitch_46
    const-string v0, "expandNotificationsPanel"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_46
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 302
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2674
    const/16 v0, 0x46

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 602
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 606
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v10, "com.android.internal.statusbar.IStatusBarService"

    .line 607
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 608
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 618
    packed-switch v14, :pswitch_data_1

    .line 1379
    move-object v6, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 614
    :pswitch_0
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    return v11

    .line 1371
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1372
    .local v0, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1362
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1363
    .restart local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1347
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1349
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1351
    .local v1, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 1353
    .local v2, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1354
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1334
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1336
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1338
    .restart local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    .line 1339
    .local v2, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1325
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/InstanceId;

    .line 1326
    .local v1, "_arg1":Lcom/android/internal/logging/InstanceId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/logging/InstanceId;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1314
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/InstanceId;

    .line 1315
    .restart local v1    # "_arg1":Lcom/android/internal/logging/InstanceId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1301
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/logging/InstanceId;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1303
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v1

    .line 1304
    .local v1, "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1290
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1292
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v1

    .line 1293
    .restart local v1    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getNavBarMode()I

    move-result v0

    .line 1283
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1274
    .end local v0    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1275
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavBarMode(I)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1265
    .end local v0    # "_arg0":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1248
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_c
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1250
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    .line 1252
    .local v7, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/drawable/Icon;

    .line 1254
    .local v8, "_arg2":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1256
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v16

    .line 1257
    .local v16, "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1237
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Ljava/lang/CharSequence;
    .end local v8    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1239
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1240
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V

    .line 1242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1228
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1229
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->suppressAmbientDisplay(Z)V

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1220
    .end local v0    # "_arg0":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isTracing()Z

    move-result v0

    .line 1221
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1223
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1214
    .end local v0    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->stopTracing()V

    .line 1215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1208
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startTracing()V

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1200
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1201
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1193
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showInattentiveSleepWarning()V

    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1185
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v0

    .line 1186
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1176
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    .line 1177
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1167
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1168
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideAuthenticationDialog(J)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1154
    .end local v0    # "_arg0":J
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1156
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1158
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1159
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(III)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1143
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1145
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1134
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1135
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(I)V

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    goto/16 :goto_0

    .line 1107
    .end local v0    # "_arg0":I
    :pswitch_1a
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    .line 1109
    .local v16, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    .line 1111
    .local v17, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 1113
    .local v18, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1115
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1117
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1119
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 1121
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1123
    .local v24, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 1125
    .local v25, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1126
    .local v27, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-wide/from16 v10, v25

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1100
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
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    .line 1101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1092
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1093
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1083
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1084
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(I)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1074
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1075
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1065
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1066
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1056
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1057
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1049
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restart()V

    .line 1050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1041
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1042
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(Z)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1034
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1028
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1022
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1012
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1015
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 1004
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearInlineReplyUriPermissions(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 989
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 991
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 993
    .local v1, "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 995
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 982
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCurrentInputMethodForBubbles()V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 972
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 961
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 963
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 950
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 933
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 935
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 937
    .local v7, "_arg1":I
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    .line 939
    .local v8, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 941
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 942
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 916
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/CharSequence;
    .end local v9    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 918
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 920
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 922
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 924
    .local v9, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 925
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 907
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 908
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 892
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 894
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 896
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 898
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 899
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 881
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 883
    .local v0, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 884
    .local v1, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 862
    .end local v0    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 866
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 870
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 872
    .local v11, "_arg4":I
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 873
    .local v12, "_arg5":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 853
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 832
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 834
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 836
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 838
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 840
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 842
    .local v12, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 844
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 845
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 815
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg3":I
    .end local v12    # "_arg4":I
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_35
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 817
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 819
    .local v7, "_arg1":I
    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/Notification$Action;

    .line 821
    .local v8, "_arg2":Landroid/app/Notification$Action;
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 823
    .local v9, "_arg3":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 824
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 804
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/app/Notification$Action;
    .end local v9    # "_arg3":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_36
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 807
    .local v1, "_arg1":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 798
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 799
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 792
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 782
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 784
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 785
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v6, p3

    goto/16 :goto_0

    .line 772
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    .line 773
    .local v0, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v1

    .line 775
    .local v1, "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move-object/from16 v6, p3

    invoke-virtual {v6, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 777
    goto/16 :goto_0

    .line 763
    .end local v0    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v1    # "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_0

    .line 746
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 748
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 750
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 752
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 754
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 755
    .local v11, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    goto/16 :goto_0

    .line 737
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_3d
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_0

    .line 726
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 728
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 729
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_0

    .line 709
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 713
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 715
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 717
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 718
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_0

    .line 697
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_40
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 699
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 700
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v2

    .line 702
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 704
    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 686
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 689
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_0

    .line 669
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 673
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto :goto_0

    .line 654
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 658
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 661
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto :goto_0

    .line 641
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 645
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 646
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto :goto_0

    .line 634
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto :goto_0

    .line 628
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_46
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto :goto_0

    .line 622
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_47
    move-object/from16 v28, v10

    move v14, v11

    move-object v6, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    nop

    .line 1382
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_47
        :pswitch_46
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
