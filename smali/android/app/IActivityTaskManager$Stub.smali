.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppTask:I = 0x29

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x4d

.field static final blacklist TRANSACTION_cancelRecentsAnimation:I = 0x21

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x45

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x58

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x5b

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x28

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x12

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x35

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x37

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2a

.field static final blacklist TRANSACTION_getAppTasks:I = 0x25

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x3a

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x44

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x48

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x24

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x56

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x54

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1a

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x36

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x38

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x20

.field static final blacklist TRANSACTION_getTaskDescription:I = 0x1c

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2c

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x46

.field static final blacklist TRANSACTION_getTasks:I = 0x18

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0xa

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x41

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0x10

.field static final blacklist TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0x3d

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x23

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1b

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x3f

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x31

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x19

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x32

.field static final blacklist TRANSACTION_onPictureInPictureStateChanged:I = 0x5a

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x59

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4b

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x4c

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2b

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x17

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x33

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x34

.field static final blacklist TRANSACTION_removeTask:I = 0x16

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x3b

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x3e

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x3c

.field static final blacklist TRANSACTION_resizeTask:I = 0x30

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x51

.field static final blacklist TRANSACTION_setActivityController:I = 0x52

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x15

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x14

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x39

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x57

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x55

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x4f

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x5c

.field static final blacklist TRANSACTION_setSplitScreenResizing:I = 0x42

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x2f

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x53

.field static final blacklist TRANSACTION_setVrThread:I = 0x4e

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x7

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xf

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xc

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xe

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x6

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x8

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xb

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x5d

.field static final blacklist TRANSACTION_startDreamActivity:I = 0x5

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startRecentsActivity:I = 0xd

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x26

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x9

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x50

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x27

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x43

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x40

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x47

.field static final blacklist TRANSACTION_unhandledBack:I = 0x11

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x49

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x4a

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 442
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 443
    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 451
    if-nez p0, :cond_0

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_0
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 455
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_1

    .line 456
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    .line 458
    :cond_1
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 467
    packed-switch p0, :pswitch_data_0

    .line 843
    const/4 v0, 0x0

    return-object v0

    .line 839
    :pswitch_0
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    .line 835
    :pswitch_1
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    .line 831
    :pswitch_2
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 827
    :pswitch_3
    const-string/jumbo v0, "onPictureInPictureStateChanged"

    return-object v0

    .line 823
    :pswitch_4
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    .line 819
    :pswitch_5
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    .line 815
    :pswitch_6
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    .line 811
    :pswitch_7
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    .line 807
    :pswitch_8
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 803
    :pswitch_9
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    .line 799
    :pswitch_a
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    .line 795
    :pswitch_b
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 791
    :pswitch_c
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 787
    :pswitch_d
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 783
    :pswitch_e
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 779
    :pswitch_f
    const-string/jumbo v0, "setVrThread"

    return-object v0

    .line 775
    :pswitch_10
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    .line 771
    :pswitch_11
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    .line 767
    :pswitch_12
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    .line 763
    :pswitch_13
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    .line 759
    :pswitch_14
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 755
    :pswitch_15
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    .line 751
    :pswitch_16
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    .line 747
    :pswitch_17
    const-string v0, "getTaskSnapshot"

    return-object v0

    .line 743
    :pswitch_18
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 739
    :pswitch_19
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    .line 735
    :pswitch_1a
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    .line 731
    :pswitch_1b
    const-string/jumbo v0, "setSplitScreenResizing"

    return-object v0

    .line 727
    :pswitch_1c
    const-string v0, "getWindowOrganizerController"

    return-object v0

    .line 723
    :pswitch_1d
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 719
    :pswitch_1e
    const-string v0, "keyguardGoingAway"

    return-object v0

    .line 715
    :pswitch_1f
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    .line 711
    :pswitch_20
    const-string v0, "isAssistDataAllowedOnCurrentActivity"

    return-object v0

    .line 707
    :pswitch_21
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    .line 703
    :pswitch_22
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 699
    :pswitch_23
    const-string v0, "getAssistContextExtras"

    return-object v0

    .line 695
    :pswitch_24
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    .line 691
    :pswitch_25
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    .line 687
    :pswitch_26
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    .line 683
    :pswitch_27
    const-string v0, "getRootTaskInfo"

    return-object v0

    .line 679
    :pswitch_28
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 675
    :pswitch_29
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    .line 671
    :pswitch_2a
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    .line 667
    :pswitch_2b
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 663
    :pswitch_2c
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    .line 659
    :pswitch_2d
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 655
    :pswitch_2e
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 651
    :pswitch_2f
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 647
    :pswitch_30
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 643
    :pswitch_31
    const-string v0, "getTaskDescriptionIcon"

    return-object v0

    .line 639
    :pswitch_32
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    .line 635
    :pswitch_33
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    .line 631
    :pswitch_34
    const-string v0, "addAppTask"

    return-object v0

    .line 627
    :pswitch_35
    const-string v0, "finishVoiceTask"

    return-object v0

    .line 623
    :pswitch_36
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    .line 619
    :pswitch_37
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 615
    :pswitch_38
    const-string v0, "getAppTasks"

    return-object v0

    .line 611
    :pswitch_39
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 607
    :pswitch_3a
    const-string v0, "isInLockTaskMode"

    return-object v0

    .line 603
    :pswitch_3b
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 599
    :pswitch_3c
    const-string v0, "cancelRecentsAnimation"

    return-object v0

    .line 595
    :pswitch_3d
    const-string v0, "getTaskBounds"

    return-object v0

    .line 591
    :pswitch_3e
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 587
    :pswitch_3f
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 583
    :pswitch_40
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    .line 579
    :pswitch_41
    const-string v0, "getTaskDescription"

    return-object v0

    .line 575
    :pswitch_42
    const-string v0, "isTopActivityImmersive"

    return-object v0

    .line 571
    :pswitch_43
    const-string v0, "getRecentTasks"

    return-object v0

    .line 567
    :pswitch_44
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 563
    :pswitch_45
    const-string v0, "getTasks"

    return-object v0

    .line 559
    :pswitch_46
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    .line 555
    :pswitch_47
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 551
    :pswitch_48
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    .line 547
    :pswitch_49
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    .line 543
    :pswitch_4a
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    .line 539
    :pswitch_4b
    const-string v0, "getActivityClientController"

    return-object v0

    .line 535
    :pswitch_4c
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 531
    :pswitch_4d
    const-string v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    .line 527
    :pswitch_4e
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    .line 523
    :pswitch_4f
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 519
    :pswitch_50
    const-string/jumbo v0, "startRecentsActivity"

    return-object v0

    .line 515
    :pswitch_51
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    .line 511
    :pswitch_52
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 507
    :pswitch_53
    const-string v0, "getVoiceInteractorPackageName"

    return-object v0

    .line 503
    :pswitch_54
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 499
    :pswitch_55
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    .line 495
    :pswitch_56
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    .line 491
    :pswitch_57
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    .line 487
    :pswitch_58
    const-string/jumbo v0, "startDreamActivity"

    return-object v0

    .line 483
    :pswitch_59
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    .line 479
    :pswitch_5a
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 475
    :pswitch_5b
    const-string/jumbo v0, "startActivities"

    return-object v0

    .line 471
    :pswitch_5c
    const-string/jumbo v0, "startActivity"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 462
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3878
    const/16 v0, 0x5c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 850
    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 854
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityTaskManager"

    .line 855
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 856
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 866
    packed-switch v14, :pswitch_data_1

    .line 2004
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 862
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    return v10

    .line 1995
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1996
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1997
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Z)Landroid/window/BackNavigationInfo;

    move-result-object v1

    .line 1998
    .local v1, "_result":Landroid/window/BackNavigationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2000
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1986
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/window/BackNavigationInfo;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1987
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1988
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 1989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1977
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1978
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1979
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 1980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1968
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_4
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    .line 1969
    .local v0, "_arg0":Landroid/app/PictureInPictureUiState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1970
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1957
    .end local v0    # "_arg0":Landroid/app/PictureInPictureUiState;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1959
    .local v0, "_arg0":I
    sget-object v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 1960
    .local v1, "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1961
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 1962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1963
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1948
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1949
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1950
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    .line 1951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1952
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1937
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1940
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1941
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1927
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1928
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1929
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    .line 1930
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1931
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1932
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1916
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1918
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1919
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1920
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1906
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1907
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1908
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    .line 1909
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1895
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 1897
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1898
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1899
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 1900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1884
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v1    # "_arg1":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    .line 1886
    .local v0, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1887
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1888
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1877
    .end local v0    # "_arg0":Landroid/app/IActivityController;
    .end local v1    # "_arg1":Z
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1871
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    .line 1872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1863
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1864
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1865
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    .line 1866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1867
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1854
    .end local v0    # "_arg0":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1855
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    .line 1857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1845
    .end local v0    # "_arg0":I
    :pswitch_11
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1846
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 1848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1834
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1836
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .line 1837
    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1838
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1821
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    .line 1825
    .local v1, "_arg1":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1826
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1827
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 1828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1810
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1812
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1813
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1814
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    .line 1815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1800
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_15
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 1801
    .local v0, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 1803
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1805
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1792
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    .line 1793
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1783
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1785
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    .line 1786
    .local v1, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1788
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1771
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1773
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1774
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1775
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    .line 1776
    .local v2, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1778
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1762
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1763
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1754
    .end local v0    # "_arg0":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 1755
    .local v0, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1757
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1747
    .end local v0    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 1748
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1750
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1739
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1740
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setSplitScreenResizing(Z)V

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1731
    .end local v0    # "_arg0":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    .line 1732
    .local v0, "_result":Landroid/window/IWindowOrganizerController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1734
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1723
    .end local v0    # "_result":Landroid/window/IWindowOrganizerController;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1724
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1725
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 1726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1727
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1714
    .end local v0    # "_arg0":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1715
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1716
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    .line 1717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1700
    .end local v0    # "_arg0":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 1702
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1704
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1705
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1706
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z

    move-result v3

    .line 1707
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1709
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1692
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    .line 1693
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1695
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1677
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 1679
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1681
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1683
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1684
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    .line 1686
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1688
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1657
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1659
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    .line 1661
    .local v8, "_arg1":Landroid/app/IAssistDataReceiver;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 1663
    .local v9, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 1665
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1667
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1668
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1669
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    .line 1670
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1672
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1647
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v9    # "_arg2":Landroid/os/Bundle;
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1648
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1650
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1652
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1636
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1638
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1639
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1622
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1624
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1626
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1627
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1628
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    .line 1629
    .local v3, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1631
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1612
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1613
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1614
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 1615
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1617
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1600
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1602
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1603
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    .line 1605
    .local v2, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1607
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1592
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 1593
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1595
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1584
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1585
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    .line 1587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1575
    .end local v0    # "_arg0":[I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1576
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    .line 1578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1562
    .end local v0    # "_arg0":[I
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1564
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1566
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1567
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1568
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1551
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1553
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1554
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1555
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1537
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1539
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1541
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1542
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)Z

    move-result v3

    .line 1544
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1546
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1526
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1528
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1529
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1530
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 1518
    .local v0, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1519
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1508
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 1509
    .restart local v0    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1510
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1496
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1499
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1500
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1501
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1503
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1488
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1489
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 1491
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1480
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1481
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1483
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1465
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1467
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1469
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    .line 1471
    .local v2, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1472
    .local v3, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1473
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 1474
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1456
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "_arg3":Landroid/graphics/Bitmap;
    .end local v4    # "_result":I
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 1457
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1449
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1441
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1442
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1443
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    .line 1444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1431
    .end local v0    # "_arg0":I
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1434
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 1436
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1423
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 1424
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1416
    .end local v0    # "_result":I
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 1417
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1419
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1406
    .end local v0    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1408
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1397
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1398
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelRecentsAnimation(Z)V

    .line 1400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1387
    .end local v0    # "_arg0":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1388
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1389
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1390
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1379
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 1380
    .local v0, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1382
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1371
    .end local v0    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1372
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1354
    .end local v0    # "_arg0":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1356
    .local v6, "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1358
    .local v7, "_arg1":Landroid/os/Bundle;
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/assist/AssistStructure;

    .line 1360
    .local v8, "_arg2":Landroid/app/assist/AssistStructure;
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/assist/AssistContent;

    .line 1362
    .local v9, "_arg3":Landroid/app/assist/AssistContent;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Uri;

    .line 1363
    .local v16, "_arg4":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1344
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_arg2":Landroid/app/assist/AssistStructure;
    .end local v9    # "_arg3":Landroid/app/assist/AssistContent;
    .end local v16    # "_arg4":Landroid/net/Uri;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1345
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    .line 1347
    .local v1, "_result":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1349
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1336
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 1337
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1339
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1323
    .end local v0    # "_result":Z
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1325
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1327
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1328
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1330
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1332
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1306
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1308
    .local v6, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1310
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1312
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1314
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1315
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1292
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1296
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1297
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZ)Ljava/util/List;

    move-result-object v3

    .line 1299
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1301
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1285
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1276
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1277
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v1

    .line 1279
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1281
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1267
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1268
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1258
    .end local v0    # "_arg0":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1259
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1250
    .end local v0    # "_arg0":I
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 1251
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1243
    .end local v0    # "_result":I
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    .line 1244
    .local v0, "_result":Landroid/app/IActivityClientController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1246
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1237
    .end local v0    # "_result":Landroid/app/IActivityClientController;
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1222
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1226
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1229
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    .line 1231
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1233
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1190
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1192
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1194
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1196
    .local v18, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1198
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1200
    .local v20, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1202
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1204
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1206
    .local v23, "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 1208
    .local v24, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1210
    .local v25, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 1212
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1213
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    .line 1215
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    goto/16 :goto_0

    .line 1178
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/content/Intent;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/IBinder;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v25    # "_arg9":Landroid/os/Bundle;
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_50
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1180
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1181
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    .line 1183
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    goto/16 :goto_0

    .line 1165
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_51
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1167
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1169
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v3

    .line 1170
    .local v3, "_arg2":Landroid/view/IRecentsAnimationRunner;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_0

    .line 1141
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Landroid/view/IRecentsAnimationRunner;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_52
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 1143
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1145
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1147
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1149
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1151
    .local v16, "_arg4":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 1153
    .local v17, "_arg5":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1155
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1156
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1157
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    .line 1158
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    goto/16 :goto_0

    .line 1117
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroid/content/Intent;
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_53
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1119
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1121
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1123
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1125
    .restart local v12    # "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 1127
    .local v16, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1129
    .local v17, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1131
    .local v18, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1132
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    .line 1134
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    goto/16 :goto_0

    .line 1107
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/Intent;
    .end local v17    # "_arg5":Ljava/lang/String;
    .end local v18    # "_arg6":Landroid/os/Bundle;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_54
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1108
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    goto/16 :goto_0

    .line 1075
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_55
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1077
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1079
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1081
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1083
    .local v19, "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    .line 1085
    .local v20, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1087
    .restart local v21    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v22

    .line 1089
    .local v22, "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v23

    .line 1091
    .local v23, "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1093
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1095
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1097
    .local v26, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1098
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1100
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    goto/16 :goto_0

    .line 1043
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/content/Intent;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    .end local v23    # "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1045
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1047
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1049
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1051
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1053
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1055
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1057
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1059
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1061
    .restart local v24    # "_arg8":I
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/res/Configuration;

    .line 1063
    .local v25, "_arg9":Landroid/content/res/Configuration;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1065
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1066
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1068
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    goto/16 :goto_0

    .line 1011
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/content/res/Configuration;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1013
    .restart local v16    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1015
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1017
    .restart local v18    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1019
    .restart local v19    # "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1021
    .restart local v20    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1023
    .restart local v21    # "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1025
    .restart local v22    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1027
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1029
    .restart local v24    # "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1031
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1033
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1034
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    .line 1036
    .local v0, "_result":Landroid/app/WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1038
    goto/16 :goto_0

    .line 981
    .end local v0    # "_result":Landroid/app/WaitResult;
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 983
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v16

    .line 985
    .local v16, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 987
    .local v17, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 989
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 991
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 993
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 995
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 997
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 999
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1001
    .local v24, "_arg9":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1002
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    .line 1004
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    goto/16 :goto_0

    .line 971
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Landroid/content/IIntentSender;
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/IBinder;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":I
    .end local v25    # "_arg10":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_59
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 972
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startDreamActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 974
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 976
    goto/16 :goto_0

    .line 957
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 959
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 961
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 962
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 964
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 966
    goto/16 :goto_0

    .line 925
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 927
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 929
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 931
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 933
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 935
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 937
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 939
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 941
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 943
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 945
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 947
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 948
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 950
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    goto/16 :goto_0

    .line 901
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 903
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 905
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 907
    .local v11, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/content/Intent;

    .line 909
    .local v12, "_arg3":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 911
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 913
    .local v17, "_arg5":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 915
    .local v18, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 916
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 918
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    goto :goto_0

    .line 871
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":[Landroid/content/Intent;
    .end local v16    # "_arg4":[Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/os/IBinder;
    .end local v18    # "_arg6":Landroid/os/Bundle;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_5d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 873
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 875
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 877
    .local v17, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 879
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 881
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 883
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 885
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 887
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 889
    .local v23, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 891
    .local v24, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 892
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 894
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    nop

    .line 2007
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/IBinder;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v25    # "_arg10":Landroid/os/Bundle;
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
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
