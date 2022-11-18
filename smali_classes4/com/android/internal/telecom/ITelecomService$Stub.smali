.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final greylist-max-o TRANSACTION_acceptHandover:I = 0x38

.field static final greylist-max-o TRANSACTION_acceptRingingCall:I = 0x23

.field static final greylist-max-o TRANSACTION_acceptRingingCallWithVideoState:I = 0x24

.field static final greylist-max-o TRANSACTION_addNewIncomingCall:I = 0x2b

.field static final blacklist TRANSACTION_addNewIncomingConference:I = 0x2c

.field static final blacklist TRANSACTION_addNewOutgoingCall:I = 0x44

.field static final greylist-max-o TRANSACTION_addNewUnknownCall:I = 0x2d

.field static final blacklist TRANSACTION_addOrRemoveTestCallCompanionApp:I = 0x43

.field static final greylist-max-o TRANSACTION_cancelMissedCallsNotification:I = 0x25

.field static final blacklist TRANSACTION_cleanupOrphanPhoneAccounts:I = 0x3d

.field static final blacklist TRANSACTION_cleanupStuckCalls:I = 0x3c

.field static final greylist-max-o TRANSACTION_clearAccounts:I = 0x12

.field static final blacklist TRANSACTION_createLaunchEmergencyDialerIntent:I = 0x34

.field static final greylist-max-o TRANSACTION_createManageBlockedNumbersIntent:I = 0x33

.field static final greylist-max-o TRANSACTION_dumpCallAnalytics:I = 0x1a

.field static final greylist-max-o TRANSACTION_enablePhoneAccount:I = 0x30

.field static final greylist-max-o TRANSACTION_endCall:I = 0x22

.field static final greylist-max-o TRANSACTION_getAdnUriForPhoneAccount:I = 0x28

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountHandles:I = 0xd

.field static final greylist-max-o TRANSACTION_getAllPhoneAccounts:I = 0xc

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountsCount:I = 0xb

.field static final greylist-max-o TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x20

.field static final blacklist TRANSACTION_getCallStateUsingPackage:I = 0x21

.field static final greylist-max-o TRANSACTION_getCurrentTtyMode:I = 0x2a

.field static final greylist-max-o TRANSACTION_getDefaultDialerPackage:I = 0x17

.field static final blacklist TRANSACTION_getDefaultDialerPackageForUser:I = 0x18

.field static final greylist-max-o TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final greylist-max-o TRANSACTION_getDefaultPhoneApp:I = 0x16

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0x15

.field static final blacklist TRANSACTION_getOwnSelfManagedPhoneAccounts:I = 0x7

.field static final greylist-max-o TRANSACTION_getPhoneAccount:I = 0xa

.field static final greylist-max-o TRANSACTION_getPhoneAccountsForPackage:I = 0x9

.field static final greylist-max-o TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x8

.field static final greylist-max-o TRANSACTION_getSelfManagedPhoneAccounts:I = 0x6

.field static final greylist-max-o TRANSACTION_getSimCallManager:I = 0xe

.field static final greylist-max-o TRANSACTION_getSimCallManagerForUser:I = 0xf

.field static final greylist-max-o TRANSACTION_getSystemDialerPackage:I = 0x19

.field static final greylist-max-o TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x14

.field static final blacklist TRANSACTION_handleCallIntent:I = 0x3b

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0x26

.field static final greylist-max-o TRANSACTION_handlePinMmiForPhoneAccount:I = 0x27

.field static final blacklist TRANSACTION_hasManageOngoingCallsPermission:I = 0x1d

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x1c

.field static final blacklist TRANSACTION_isInEmergencyCall:I = 0x3a

.field static final greylist-max-o TRANSACTION_isInManagedCall:I = 0x1e

.field static final blacklist TRANSACTION_isInSelfManagedCall:I = 0x49

.field static final greylist-max-o TRANSACTION_isIncomingCallPermitted:I = 0x35

.field static final greylist-max-o TRANSACTION_isOutgoingCallPermitted:I = 0x36

.field static final greylist-max-o TRANSACTION_isRinging:I = 0x1f

.field static final greylist-max-o TRANSACTION_isTtySupported:I = 0x29

.field static final greylist-max-o TRANSACTION_isVoiceMailNumber:I = 0x13

.field static final blacklist TRANSACTION_oplusCancelMissedCallsNotification:I = 0x45

.field static final greylist-max-o TRANSACTION_placeCall:I = 0x2f

.field static final greylist-max-o TRANSACTION_registerPhoneAccount:I = 0x10

.field static final blacklist TRANSACTION_requestLogMark:I = 0x40

.field static final blacklist TRANSACTION_resetCarMode:I = 0x3e

.field static final greylist-max-o TRANSACTION_setDefaultDialer:I = 0x31

.field static final blacklist TRANSACTION_setSystemDialer:I = 0x46

.field static final blacklist TRANSACTION_setTestCallDiagnosticService:I = 0x48

.field static final blacklist TRANSACTION_setTestDefaultCallRedirectionApp:I = 0x3f

.field static final blacklist TRANSACTION_setTestDefaultCallScreeningApp:I = 0x42

.field static final blacklist TRANSACTION_setTestDefaultDialer:I = 0x47

.field static final blacklist TRANSACTION_setTestEmergencyPhoneAccountPackageNameFilter:I = 0x39

.field static final blacklist TRANSACTION_setTestPhoneAcctSuggestionComponent:I = 0x41

.field static final greylist-max-o TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final greylist-max-o TRANSACTION_showInCallScreen:I = 0x1

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0x1b

.field static final blacklist TRANSACTION_startConference:I = 0x2e

.field static final blacklist TRANSACTION_stopBlockSuppression:I = 0x32

.field static final greylist-max-o TRANSACTION_unregisterPhoneAccount:I = 0x11

.field static final greylist-max-o TRANSACTION_waitOnHandlers:I = 0x37


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 371
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 372
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 380
    if-nez p0, :cond_0

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 384
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_1

    .line 385
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ITelecomService;

    return-object v1

    .line 387
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 396
    packed-switch p0, :pswitch_data_0

    .line 692
    const/4 v0, 0x0

    return-object v0

    .line 688
    :pswitch_0
    const-string v0, "isInSelfManagedCall"

    return-object v0

    .line 684
    :pswitch_1
    const-string/jumbo v0, "setTestCallDiagnosticService"

    return-object v0

    .line 680
    :pswitch_2
    const-string/jumbo v0, "setTestDefaultDialer"

    return-object v0

    .line 676
    :pswitch_3
    const-string/jumbo v0, "setSystemDialer"

    return-object v0

    .line 672
    :pswitch_4
    const-string/jumbo v0, "oplusCancelMissedCallsNotification"

    return-object v0

    .line 668
    :pswitch_5
    const-string v0, "addNewOutgoingCall"

    return-object v0

    .line 664
    :pswitch_6
    const-string v0, "addOrRemoveTestCallCompanionApp"

    return-object v0

    .line 660
    :pswitch_7
    const-string/jumbo v0, "setTestDefaultCallScreeningApp"

    return-object v0

    .line 656
    :pswitch_8
    const-string/jumbo v0, "setTestPhoneAcctSuggestionComponent"

    return-object v0

    .line 652
    :pswitch_9
    const-string/jumbo v0, "requestLogMark"

    return-object v0

    .line 648
    :pswitch_a
    const-string/jumbo v0, "setTestDefaultCallRedirectionApp"

    return-object v0

    .line 644
    :pswitch_b
    const-string/jumbo v0, "resetCarMode"

    return-object v0

    .line 640
    :pswitch_c
    const-string v0, "cleanupOrphanPhoneAccounts"

    return-object v0

    .line 636
    :pswitch_d
    const-string v0, "cleanupStuckCalls"

    return-object v0

    .line 632
    :pswitch_e
    const-string v0, "handleCallIntent"

    return-object v0

    .line 628
    :pswitch_f
    const-string v0, "isInEmergencyCall"

    return-object v0

    .line 624
    :pswitch_10
    const-string/jumbo v0, "setTestEmergencyPhoneAccountPackageNameFilter"

    return-object v0

    .line 620
    :pswitch_11
    const-string v0, "acceptHandover"

    return-object v0

    .line 616
    :pswitch_12
    const-string/jumbo v0, "waitOnHandlers"

    return-object v0

    .line 612
    :pswitch_13
    const-string v0, "isOutgoingCallPermitted"

    return-object v0

    .line 608
    :pswitch_14
    const-string v0, "isIncomingCallPermitted"

    return-object v0

    .line 604
    :pswitch_15
    const-string v0, "createLaunchEmergencyDialerIntent"

    return-object v0

    .line 600
    :pswitch_16
    const-string v0, "createManageBlockedNumbersIntent"

    return-object v0

    .line 596
    :pswitch_17
    const-string/jumbo v0, "stopBlockSuppression"

    return-object v0

    .line 592
    :pswitch_18
    const-string/jumbo v0, "setDefaultDialer"

    return-object v0

    .line 588
    :pswitch_19
    const-string v0, "enablePhoneAccount"

    return-object v0

    .line 584
    :pswitch_1a
    const-string/jumbo v0, "placeCall"

    return-object v0

    .line 580
    :pswitch_1b
    const-string/jumbo v0, "startConference"

    return-object v0

    .line 576
    :pswitch_1c
    const-string v0, "addNewUnknownCall"

    return-object v0

    .line 572
    :pswitch_1d
    const-string v0, "addNewIncomingConference"

    return-object v0

    .line 568
    :pswitch_1e
    const-string v0, "addNewIncomingCall"

    return-object v0

    .line 564
    :pswitch_1f
    const-string v0, "getCurrentTtyMode"

    return-object v0

    .line 560
    :pswitch_20
    const-string/jumbo v0, "isTtySupported"

    return-object v0

    .line 556
    :pswitch_21
    const-string v0, "getAdnUriForPhoneAccount"

    return-object v0

    .line 552
    :pswitch_22
    const-string v0, "handlePinMmiForPhoneAccount"

    return-object v0

    .line 548
    :pswitch_23
    const-string v0, "handlePinMmi"

    return-object v0

    .line 544
    :pswitch_24
    const-string v0, "cancelMissedCallsNotification"

    return-object v0

    .line 540
    :pswitch_25
    const-string v0, "acceptRingingCallWithVideoState"

    return-object v0

    .line 536
    :pswitch_26
    const-string v0, "acceptRingingCall"

    return-object v0

    .line 532
    :pswitch_27
    const-string v0, "endCall"

    return-object v0

    .line 528
    :pswitch_28
    const-string v0, "getCallStateUsingPackage"

    return-object v0

    .line 524
    :pswitch_29
    const-string v0, "getCallState"

    return-object v0

    .line 520
    :pswitch_2a
    const-string v0, "isRinging"

    return-object v0

    .line 516
    :pswitch_2b
    const-string v0, "isInManagedCall"

    return-object v0

    .line 512
    :pswitch_2c
    const-string v0, "hasManageOngoingCallsPermission"

    return-object v0

    .line 508
    :pswitch_2d
    const-string v0, "isInCall"

    return-object v0

    .line 504
    :pswitch_2e
    const-string/jumbo v0, "silenceRinger"

    return-object v0

    .line 500
    :pswitch_2f
    const-string v0, "dumpCallAnalytics"

    return-object v0

    .line 496
    :pswitch_30
    const-string v0, "getSystemDialerPackage"

    return-object v0

    .line 492
    :pswitch_31
    const-string v0, "getDefaultDialerPackageForUser"

    return-object v0

    .line 488
    :pswitch_32
    const-string v0, "getDefaultDialerPackage"

    return-object v0

    .line 484
    :pswitch_33
    const-string v0, "getDefaultPhoneApp"

    return-object v0

    .line 480
    :pswitch_34
    const-string v0, "getLine1Number"

    return-object v0

    .line 476
    :pswitch_35
    const-string v0, "getVoiceMailNumber"

    return-object v0

    .line 472
    :pswitch_36
    const-string/jumbo v0, "isVoiceMailNumber"

    return-object v0

    .line 468
    :pswitch_37
    const-string v0, "clearAccounts"

    return-object v0

    .line 464
    :pswitch_38
    const-string/jumbo v0, "unregisterPhoneAccount"

    return-object v0

    .line 460
    :pswitch_39
    const-string/jumbo v0, "registerPhoneAccount"

    return-object v0

    .line 456
    :pswitch_3a
    const-string v0, "getSimCallManagerForUser"

    return-object v0

    .line 452
    :pswitch_3b
    const-string v0, "getSimCallManager"

    return-object v0

    .line 448
    :pswitch_3c
    const-string v0, "getAllPhoneAccountHandles"

    return-object v0

    .line 444
    :pswitch_3d
    const-string v0, "getAllPhoneAccounts"

    return-object v0

    .line 440
    :pswitch_3e
    const-string v0, "getAllPhoneAccountsCount"

    return-object v0

    .line 436
    :pswitch_3f
    const-string v0, "getPhoneAccount"

    return-object v0

    .line 432
    :pswitch_40
    const-string v0, "getPhoneAccountsForPackage"

    return-object v0

    .line 428
    :pswitch_41
    const-string v0, "getPhoneAccountsSupportingScheme"

    return-object v0

    .line 424
    :pswitch_42
    const-string v0, "getOwnSelfManagedPhoneAccounts"

    return-object v0

    .line 420
    :pswitch_43
    const-string v0, "getSelfManagedPhoneAccounts"

    return-object v0

    .line 416
    :pswitch_44
    const-string v0, "getCallCapablePhoneAccounts"

    return-object v0

    .line 412
    :pswitch_45
    const-string/jumbo v0, "setUserSelectedOutgoingPhoneAccount"

    return-object v0

    .line 408
    :pswitch_46
    const-string v0, "getUserSelectedOutgoingPhoneAccount"

    return-object v0

    .line 404
    :pswitch_47
    const-string v0, "getDefaultOutgoingPhoneAccount"

    return-object v0

    .line 400
    :pswitch_48
    const-string/jumbo v0, "showInCallScreen"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 391
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2897
    const/16 v0, 0x48

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 699
    invoke-static {p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    const-string v0, "com.android.internal.telecom.ITelecomService"

    .line 704
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 705
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 715
    packed-switch p1, :pswitch_data_1

    .line 1463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 711
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    return v1

    .line 1450
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1454
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1455
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1456
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    .line 1457
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1459
    goto/16 :goto_0

    .line 1441
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1442
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1443
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestCallDiagnosticService(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    goto/16 :goto_0

    .line 1432
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1433
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1434
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultDialer(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    goto/16 :goto_0

    .line 1423
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1424
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setSystemDialer(Landroid/content/ComponentName;)V

    .line 1426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    goto/16 :goto_0

    .line 1412
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1415
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->oplusCancelMissedCallsNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    goto/16 :goto_0

    .line 1403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_6
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1404
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewOutgoingCall(Landroid/content/Intent;)V

    .line 1406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    goto/16 :goto_0

    .line 1392
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1394
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1395
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addOrRemoveTestCallCompanionApp(Ljava/lang/String;Z)V

    .line 1397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    goto/16 :goto_0

    .line 1383
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1384
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallScreeningApp(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    goto/16 :goto_0

    .line 1374
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1375
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestPhoneAcctSuggestionComponent(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    goto/16 :goto_0

    .line 1365
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1366
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->requestLogMark(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_0

    .line 1356
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1357
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallRedirectionApp(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    goto/16 :goto_0

    .line 1349
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->resetCarMode()V

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    goto/16 :goto_0

    .line 1342
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupOrphanPhoneAccounts()I

    move-result v2

    .line 1343
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    goto/16 :goto_0

    .line 1336
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupStuckCalls()V

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    goto/16 :goto_0

    .line 1326
    :pswitch_f
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1328
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1329
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    goto/16 :goto_0

    .line 1318
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInEmergencyCall()Z

    move-result v2

    .line 1319
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1321
    goto/16 :goto_0

    .line 1310
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    goto/16 :goto_0

    .line 1297
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1299
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1301
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 1302
    .local v4, "_arg2":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_0

    .line 1290
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/PhoneAccountHandle;
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->waitOnHandlers()V

    .line 1291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    goto/16 :goto_0

    .line 1279
    :pswitch_14
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1281
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1282
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1284
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1286
    goto/16 :goto_0

    .line 1267
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_15
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1269
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1270
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1272
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1274
    goto/16 :goto_0

    .line 1257
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1258
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1260
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1262
    goto/16 :goto_0

    .line 1249
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1250
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1252
    goto/16 :goto_0

    .line 1243
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->stopBlockSuppression()V

    .line 1244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    goto/16 :goto_0

    .line 1234
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1235
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v3

    .line 1237
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1239
    goto/16 :goto_0

    .line 1222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1a
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1224
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1225
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v4

    .line 1227
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1229
    goto/16 :goto_0

    .line 1207
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1b
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1209
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1211
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1213
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    goto/16 :goto_0

    .line 1194
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_1c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1196
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1198
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1199
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    goto/16 :goto_0

    .line 1183
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_1d
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1185
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1186
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_0

    .line 1172
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1e
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1174
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1175
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    goto/16 :goto_0

    .line 1161
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1f
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1163
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1164
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_0

    .line 1149
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1152
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1154
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    goto/16 :goto_0

    .line 1137
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1142
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1144
    goto/16 :goto_0

    .line 1125
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_22
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1127
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1130
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1132
    goto/16 :goto_0

    .line 1111
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_23
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1113
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1116
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1118
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1120
    goto/16 :goto_0

    .line 1099
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1104
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1106
    goto/16 :goto_0

    .line 1090
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    goto/16 :goto_0

    .line 1079
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1082
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V

    .line 1084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    goto/16 :goto_0

    .line 1070
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1071
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_0

    .line 1060
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1061
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall(Ljava/lang/String;)Z

    move-result v3

    .line 1063
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1065
    goto/16 :goto_0

    .line 1048
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1051
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1053
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    goto/16 :goto_0

    .line 1040
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result v2

    .line 1041
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    goto/16 :goto_0

    .line 1031
    .end local v2    # "_result":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v3

    .line 1034
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1036
    goto/16 :goto_0

    .line 1019
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1024
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1026
    goto/16 :goto_0

    .line 1009
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result v3

    .line 1012
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1014
    goto/16 :goto_0

    .line 997
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 999
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1002
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1004
    goto/16 :goto_0

    .line 988
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 989
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_0

    .line 980
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object v2

    .line 981
    .local v2, "_result":Landroid/telecom/TelecomAnalytics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 983
    goto/16 :goto_0

    .line 973
    .end local v2    # "_result":Landroid/telecom/TelecomAnalytics;
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    goto/16 :goto_0

    .line 964
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    goto/16 :goto_0

    .line 956
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    goto/16 :goto_0

    .line 949
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v2

    .line 950
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 952
    goto/16 :goto_0

    .line 936
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_35
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 938
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    goto/16 :goto_0

    .line 922
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_36
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 924
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 926
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 927
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 929
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 931
    goto/16 :goto_0

    .line 906
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_37
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 908
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 910
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 912
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 915
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 917
    goto/16 :goto_0

    .line 897
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    goto/16 :goto_0

    .line 888
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_39
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 889
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    goto/16 :goto_0

    .line 879
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :pswitch_3a
    sget-object v2, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccount;

    .line 880
    .local v2, "_arg0":Landroid/telecom/PhoneAccount;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    goto/16 :goto_0

    .line 869
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccount;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 870
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 872
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 874
    goto/16 :goto_0

    .line 859
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 860
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 862
    .restart local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 864
    goto/16 :goto_0

    .line 851
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v2

    .line 852
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 854
    goto/16 :goto_0

    .line 844
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 845
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 847
    goto/16 :goto_0

    .line 837
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result v2

    .line 838
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    goto/16 :goto_0

    .line 826
    .end local v2    # "_result":I
    :pswitch_40
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 828
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 829
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 831
    .local v4, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 833
    goto/16 :goto_0

    .line 816
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telecom/PhoneAccount;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 819
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 821
    goto/16 :goto_0

    .line 804
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 806
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 809
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 811
    goto/16 :goto_0

    .line 792
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 794
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 795
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 797
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 799
    goto/16 :goto_0

    .line 780
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 782
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 783
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 785
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 787
    goto :goto_0

    .line 766
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 768
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 770
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 773
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 775
    goto :goto_0

    .line 757
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_46
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 758
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto :goto_0

    .line 747
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 750
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 752
    goto :goto_0

    .line 733
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 735
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 738
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 740
    .local v5, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 742
    goto :goto_0

    .line 720
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 722
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 724
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 725
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    nop

    .line 1466
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
