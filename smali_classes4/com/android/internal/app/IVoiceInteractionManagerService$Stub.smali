.class public abstract Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionManagerService"

.field static final greylist-max-o TRANSACTION_activeServiceSupportsAssist:I = 0x17

.field static final greylist-max-o TRANSACTION_activeServiceSupportsLaunchFromKeyguard:I = 0x18

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x8

.field static final blacklist TRANSACTION_createSoundTriggerSessionAsOriginator:I = 0x20

.field static final greylist-max-o TRANSACTION_deleteKeyphraseSoundModel:I = 0xf

.field static final greylist-max-o TRANSACTION_deliverNewSession:I = 0x2

.field static final greylist-max-o TRANSACTION_finish:I = 0x9

.field static final greylist-max-o TRANSACTION_getActiveServiceComponentName:I = 0x12

.field static final blacklist TRANSACTION_getActiveServiceSupportedActions:I = 0x1b

.field static final greylist-max-o TRANSACTION_getDisabledShowContext:I = 0xb

.field static final blacklist TRANSACTION_getEnrolledKeyphraseMetadata:I = 0x11

.field static final greylist-max-o TRANSACTION_getKeyphraseSoundModel:I = 0xd

.field static final greylist-max-o TRANSACTION_getUserDisabledShowContext:I = 0xc

.field static final greylist-max-o TRANSACTION_hideCurrentSession:I = 0x14

.field static final greylist-max-o TRANSACTION_hideSessionFromSession:I = 0x4

.field static final greylist-max-o TRANSACTION_isEnrolledForKeyphrase:I = 0x10

.field static final greylist-max-o TRANSACTION_isSessionRunning:I = 0x16

.field static final greylist-max-o TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x15

.field static final greylist-max-o TRANSACTION_onLockscreenShown:I = 0x19

.field static final blacklist TRANSACTION_performDirectAction:I = 0x1e

.field static final greylist-max-o TRANSACTION_registerVoiceInteractionSessionListener:I = 0x1a

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x1d

.field static final blacklist TRANSACTION_setDisabled:I = 0x1f

.field static final greylist-max-o TRANSACTION_setDisabledShowContext:I = 0xa

.field static final greylist-max-o TRANSACTION_setKeepAwake:I = 0x7

.field static final blacklist TRANSACTION_setSessionWindowVisible:I = 0x29

.field static final blacklist TRANSACTION_setUiHints:I = 0x1c

.field static final greylist-max-o TRANSACTION_showSession:I = 0x1

.field static final greylist-max-o TRANSACTION_showSessionForActiveService:I = 0x13

.field static final greylist-max-o TRANSACTION_showSessionFromSession:I = 0x3

.field static final blacklist TRANSACTION_shutdownHotwordDetectionService:I = 0x22

.field static final greylist-max-o TRANSACTION_startAssistantActivity:I = 0x6

.field static final blacklist TRANSACTION_startListeningFromExternalSource:I = 0x25

.field static final blacklist TRANSACTION_startListeningFromMic:I = 0x23

.field static final blacklist TRANSACTION_startListeningVisibleActivityChanged:I = 0x27

.field static final greylist-max-o TRANSACTION_startVoiceActivity:I = 0x5

.field static final blacklist TRANSACTION_stopListeningFromMic:I = 0x24

.field static final blacklist TRANSACTION_stopListeningVisibleActivityChanged:I = 0x28

.field static final blacklist TRANSACTION_triggerHardwareRecognitionEventForTest:I = 0x26

.field static final greylist-max-o TRANSACTION_updateKeyphraseSoundModel:I = 0xe

.field static final blacklist TRANSACTION_updateState:I = 0x21


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 306
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 307
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 315
    if-nez p0, :cond_0

    .line 316
    const/4 v0, 0x0

    return-object v0

    .line 318
    :cond_0
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 319
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_1

    .line 320
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object v1

    .line 322
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 331
    packed-switch p0, :pswitch_data_0

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 495
    :pswitch_0
    const-string/jumbo v0, "setSessionWindowVisible"

    return-object v0

    .line 491
    :pswitch_1
    const-string/jumbo v0, "stopListeningVisibleActivityChanged"

    return-object v0

    .line 487
    :pswitch_2
    const-string/jumbo v0, "startListeningVisibleActivityChanged"

    return-object v0

    .line 483
    :pswitch_3
    const-string/jumbo v0, "triggerHardwareRecognitionEventForTest"

    return-object v0

    .line 479
    :pswitch_4
    const-string/jumbo v0, "startListeningFromExternalSource"

    return-object v0

    .line 475
    :pswitch_5
    const-string/jumbo v0, "stopListeningFromMic"

    return-object v0

    .line 471
    :pswitch_6
    const-string/jumbo v0, "startListeningFromMic"

    return-object v0

    .line 467
    :pswitch_7
    const-string/jumbo v0, "shutdownHotwordDetectionService"

    return-object v0

    .line 463
    :pswitch_8
    const-string/jumbo v0, "updateState"

    return-object v0

    .line 459
    :pswitch_9
    const-string v0, "createSoundTriggerSessionAsOriginator"

    return-object v0

    .line 455
    :pswitch_a
    const-string/jumbo v0, "setDisabled"

    return-object v0

    .line 451
    :pswitch_b
    const-string/jumbo v0, "performDirectAction"

    return-object v0

    .line 447
    :pswitch_c
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    .line 443
    :pswitch_d
    const-string/jumbo v0, "setUiHints"

    return-object v0

    .line 439
    :pswitch_e
    const-string v0, "getActiveServiceSupportedActions"

    return-object v0

    .line 435
    :pswitch_f
    const-string/jumbo v0, "registerVoiceInteractionSessionListener"

    return-object v0

    .line 431
    :pswitch_10
    const-string/jumbo v0, "onLockscreenShown"

    return-object v0

    .line 427
    :pswitch_11
    const-string v0, "activeServiceSupportsLaunchFromKeyguard"

    return-object v0

    .line 423
    :pswitch_12
    const-string v0, "activeServiceSupportsAssist"

    return-object v0

    .line 419
    :pswitch_13
    const-string/jumbo v0, "isSessionRunning"

    return-object v0

    .line 415
    :pswitch_14
    const-string/jumbo v0, "launchVoiceAssistFromKeyguard"

    return-object v0

    .line 411
    :pswitch_15
    const-string v0, "hideCurrentSession"

    return-object v0

    .line 407
    :pswitch_16
    const-string/jumbo v0, "showSessionForActiveService"

    return-object v0

    .line 403
    :pswitch_17
    const-string v0, "getActiveServiceComponentName"

    return-object v0

    .line 399
    :pswitch_18
    const-string v0, "getEnrolledKeyphraseMetadata"

    return-object v0

    .line 395
    :pswitch_19
    const-string v0, "isEnrolledForKeyphrase"

    return-object v0

    .line 391
    :pswitch_1a
    const-string v0, "deleteKeyphraseSoundModel"

    return-object v0

    .line 387
    :pswitch_1b
    const-string/jumbo v0, "updateKeyphraseSoundModel"

    return-object v0

    .line 383
    :pswitch_1c
    const-string v0, "getKeyphraseSoundModel"

    return-object v0

    .line 379
    :pswitch_1d
    const-string v0, "getUserDisabledShowContext"

    return-object v0

    .line 375
    :pswitch_1e
    const-string v0, "getDisabledShowContext"

    return-object v0

    .line 371
    :pswitch_1f
    const-string/jumbo v0, "setDisabledShowContext"

    return-object v0

    .line 367
    :pswitch_20
    const-string v0, "finish"

    return-object v0

    .line 363
    :pswitch_21
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 359
    :pswitch_22
    const-string/jumbo v0, "setKeepAwake"

    return-object v0

    .line 355
    :pswitch_23
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 351
    :pswitch_24
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 347
    :pswitch_25
    const-string v0, "hideSessionFromSession"

    return-object v0

    .line 343
    :pswitch_26
    const-string/jumbo v0, "showSessionFromSession"

    return-object v0

    .line 339
    :pswitch_27
    const-string v0, "deliverNewSession"

    return-object v0

    .line 335
    :pswitch_28
    const-string/jumbo v0, "showSession"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 326
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1872
    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 506
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 510
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.app.IVoiceInteractionManagerService"

    .line 511
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 512
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 522
    packed-switch v9, :pswitch_data_1

    .line 962
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 518
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    return v13

    .line 952
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 954
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 955
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setSessionWindowVisible(Landroid/os/IBinder;Z)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_0

    .line 943
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 944
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopListeningVisibleActivityChanged(Landroid/os/IBinder;)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_0

    .line 934
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 935
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningVisibleActivityChanged(Landroid/os/IBinder;)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    goto/16 :goto_0

    .line 923
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_4
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 925
    .local v0, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v1

    .line 926
    .local v1, "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_0

    .line 908
    .end local v0    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .end local v1    # "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    :pswitch_5
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 910
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 912
    .local v1, "_arg1":Landroid/media/AudioFormat;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 914
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v3

    .line 915
    .local v3, "_arg3":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    goto/16 :goto_0

    .line 901
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/media/AudioFormat;
    .end local v2    # "_arg2":Landroid/os/PersistableBundle;
    .end local v3    # "_arg3":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopListeningFromMic()V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    goto/16 :goto_0

    .line 891
    :pswitch_7
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    .line 893
    .local v0, "_arg0":Landroid/media/AudioFormat;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v1

    .line 894
    .local v1, "_arg1":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_0

    .line 884
    .end local v0    # "_arg0":Landroid/media/AudioFormat;
    .end local v1    # "_arg1":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->shutdownHotwordDetectionService()V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_0

    .line 868
    :pswitch_9
    sget-object v0, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/permission/Identity;

    .line 870
    .local v6, "_arg0":Landroid/media/permission/Identity;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/PersistableBundle;

    .line 872
    .local v7, "_arg1":Landroid/os/PersistableBundle;
    sget-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/SharedMemory;

    .line 874
    .local v14, "_arg2":Landroid/os/SharedMemory;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v15

    .line 876
    .local v15, "_arg3":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 877
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateState(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_0

    .line 856
    .end local v6    # "_arg0":Landroid/media/permission/Identity;
    .end local v7    # "_arg1":Landroid/os/PersistableBundle;
    .end local v14    # "_arg2":Landroid/os/SharedMemory;
    .end local v15    # "_arg3":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v16    # "_arg4":I
    :pswitch_a
    sget-object v0, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/permission/Identity;

    .line 858
    .local v0, "_arg0":Landroid/media/permission/Identity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 859
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v2

    .line 861
    .local v2, "_result":Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 863
    goto/16 :goto_0

    .line 847
    .end local v0    # "_arg0":Landroid/media/permission/Identity;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 848
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabled(Z)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    goto/16 :goto_0

    .line 826
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 828
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 830
    .local v15, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 832
    .local v16, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 834
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 836
    .local v18, "_arg4":Landroid/os/IBinder;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/RemoteCallback;

    .line 838
    .local v19, "_arg5":Landroid/os/RemoteCallback;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/RemoteCallback;

    .line 839
    .local v20, "_arg6":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto/16 :goto_0

    .line 809
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Landroid/os/Bundle;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/os/IBinder;
    .end local v19    # "_arg5":Landroid/os/RemoteCallback;
    .end local v20    # "_arg6":Landroid/os/RemoteCallback;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 811
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 813
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 815
    .local v14, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/RemoteCallback;

    .line 817
    .local v15, "_arg3":Landroid/os/RemoteCallback;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    .line 818
    .local v16, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto/16 :goto_0

    .line 800
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":Landroid/os/IBinder;
    .end local v15    # "_arg3":Landroid/os/RemoteCallback;
    .end local v16    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 801
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setUiHints(Landroid/os/Bundle;)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_0

    .line 789
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 791
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;

    move-result-object v1

    .line 792
    .local v1, "_arg1":Lcom/android/internal/app/IVoiceActionCheckCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceActionCheckCallback;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v0

    .line 781
    .local v0, "_arg0":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_0

    .line 773
    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onLockscreenShown()V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_0

    .line 766
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v0

    .line 767
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 769
    goto/16 :goto_0

    .line 759
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsAssist()Z

    move-result v0

    .line 760
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 762
    goto/16 :goto_0

    .line 752
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isSessionRunning()Z

    move-result v0

    .line 753
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 755
    goto/16 :goto_0

    .line 746
    .end local v0    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->launchVoiceAssistFromKeyguard()V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_0

    .line 740
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideCurrentSession()V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_0

    .line 725
    :pswitch_17
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 727
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 729
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v2

    .line 731
    .local v2, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 732
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v4

    .line 734
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 736
    goto/16 :goto_0

    .line 717
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 718
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 720
    goto/16 :goto_0

    .line 706
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getEnrolledKeyphraseMetadata(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    .line 711
    .local v2, "_result":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 713
    goto/16 :goto_0

    .line 694
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 696
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 697
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isEnrolledForKeyphrase(ILjava/lang/String;)Z

    move-result v2

    .line 699
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 701
    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 685
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result v2

    .line 687
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    goto/16 :goto_0

    .line 672
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1c
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 673
    .local v0, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v1

    .line 675
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    goto/16 :goto_0

    .line 660
    .end local v0    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v1    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v2

    .line 665
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 667
    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getUserDisabledShowContext()I

    move-result v0

    .line 653
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    goto/16 :goto_0

    .line 645
    .end local v0    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDisabledShowContext()I

    move-result v0

    .line 646
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    goto/16 :goto_0

    .line 637
    .end local v0    # "_result":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 638
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabledShowContext(I)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_0

    .line 628
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 629
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->finish(Landroid/os/IBinder;)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_0

    .line 619
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 620
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->closeSystemDialogs(Landroid/os/IBinder;)V

    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    goto/16 :goto_0

    .line 608
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 611
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setKeepAwake(Landroid/os/IBinder;Z)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_0

    .line 592
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 594
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 596
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 601
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    goto/16 :goto_0

    .line 576
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 578
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 580
    .restart local v1    # "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 585
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    goto :goto_0

    .line 566
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 567
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v8, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideSessionFromSession(Landroid/os/IBinder;)Z

    move-result v1

    .line 569
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 571
    goto :goto_0

    .line 552
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 554
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 556
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    move-result v3

    .line 559
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 561
    goto :goto_0

    .line 538
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 540
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 542
    .local v1, "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v2

    .line 543
    .local v2, "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result v3

    .line 545
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 547
    goto :goto_0

    .line 527
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    .end local v2    # "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    .end local v3    # "_result":Z
    :pswitch_29
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 529
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 530
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSession(Landroid/os/Bundle;I)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    nop

    .line 965
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
