.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final greylist-max-o TRANSACTION_attachAgent:I = 0x32

.field static final blacklist TRANSACTION_attachStartupAgents:I = 0x33

.field static final greylist-max-o TRANSACTION_bindApplication:I = 0x5

.field static final greylist-max-o TRANSACTION_clearDnsCache:I = 0x1b

.field static final greylist-max-o TRANSACTION_dispatchPackageBroadcast:I = 0x16

.field static final greylist-max-o TRANSACTION_dumpActivity:I = 0x19

.field static final blacklist TRANSACTION_dumpCacheInfo:I = 0x23

.field static final greylist-max-o TRANSACTION_dumpDbInfo:I = 0x25

.field static final greylist-max-o TRANSACTION_dumpGfxInfo:I = 0x22

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x18

.field static final greylist-max-o TRANSACTION_dumpMemInfo:I = 0x20

.field static final greylist-max-o TRANSACTION_dumpMemInfoProto:I = 0x21

.field static final blacklist TRANSACTION_dumpMessage:I = 0x3b

.field static final greylist-max-o TRANSACTION_dumpProvider:I = 0x24

.field static final blacklist TRANSACTION_dumpResources:I = 0x1a

.field static final greylist-max-o TRANSACTION_dumpService:I = 0xd

.field static final blacklist TRANSACTION_enableActivityThreadLog:I = 0x39

.field static final blacklist TRANSACTION_enableProcessMainThreadLooperLog:I = 0x3a

.field static final blacklist TRANSACTION_getBroadcastState:I = 0x3e

.field static final greylist-max-o TRANSACTION_handleTrustStorageUpdate:I = 0x31

.field static final blacklist TRANSACTION_instrumentWithoutRestart:I = 0x40

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0x2d

.field static final blacklist TRANSACTION_notifyContentProviderPublishStatus:I = 0x3f

.field static final blacklist TRANSACTION_oplusScheduleReceiver:I = 0x2

.field static final blacklist TRANSACTION_performDirectAction:I = 0x38

.field static final greylist-max-o TRANSACTION_processInBackground:I = 0xa

.field static final greylist-max-o TRANSACTION_profilerControl:I = 0x10

.field static final greylist-max-o TRANSACTION_requestAssistContextExtras:I = 0x27

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x37

.field static final greylist-max-o TRANSACTION_runIsolatedEntryPoint:I = 0x6

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0x34

.field static final greylist-max-o TRANSACTION_scheduleBindService:I = 0xb

.field static final greylist-max-o TRANSACTION_scheduleCrash:I = 0x17

.field static final greylist-max-o TRANSACTION_scheduleCreateBackupAgent:I = 0x12

.field static final greylist-max-o TRANSACTION_scheduleCreateService:I = 0x3

.field static final greylist-max-o TRANSACTION_scheduleDestroyBackupAgent:I = 0x13

.field static final greylist-max-o TRANSACTION_scheduleEnterAnimationComplete:I = 0x2c

.field static final greylist-max-o TRANSACTION_scheduleExit:I = 0x7

.field static final greylist-max-o TRANSACTION_scheduleInstallProvider:I = 0x2a

.field static final greylist-max-o TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x30

.field static final greylist-max-o TRANSACTION_scheduleLowMemory:I = 0xf

.field static final greylist-max-o TRANSACTION_scheduleOnNewActivityOptions:I = 0x14

.field static final greylist-max-o TRANSACTION_scheduleReceiver:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleRegisteredReceiver:I = 0xe

.field static final greylist-max-o TRANSACTION_scheduleServiceArgs:I = 0x8

.field static final greylist-max-o TRANSACTION_scheduleStopService:I = 0x4

.field static final greylist-max-o TRANSACTION_scheduleSuicide:I = 0x15

.field static final greylist-max-o TRANSACTION_scheduleTransaction:I = 0x36

.field static final greylist-max-o TRANSACTION_scheduleTranslucentConversionComplete:I = 0x28

.field static final greylist-max-o TRANSACTION_scheduleTrimMemory:I = 0x1f

.field static final greylist-max-o TRANSACTION_scheduleUnbindService:I = 0xc

.field static final greylist-max-o TRANSACTION_setCoreSettings:I = 0x1d

.field static final blacklist TRANSACTION_setDynamicalLogConfig:I = 0x3d

.field static final blacklist TRANSACTION_setDynamicalLogEnable:I = 0x3c

.field static final greylist-max-o TRANSACTION_setNetworkBlockSeq:I = 0x35

.field static final greylist-max-o TRANSACTION_setProcessState:I = 0x29

.field static final greylist-max-o TRANSACTION_setSchedulingGroup:I = 0x11

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0x2e

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0x2f

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x26

.field static final blacklist TRANSACTION_updateHttpProxy:I = 0x1c

.field static final greylist-max-o TRANSACTION_updatePackageCompatibilityInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_updateTimePrefs:I = 0x2b

.field static final greylist-max-o TRANSACTION_updateTimeZone:I = 0x9

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x41


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 235
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 236
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 244
    if-nez p0, :cond_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 248
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    .line 249
    move-object v1, v0

    check-cast v1, Landroid/app/IApplicationThread;

    return-object v1

    .line 251
    :cond_1
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 260
    packed-switch p0, :pswitch_data_0

    .line 524
    const/4 v0, 0x0

    return-object v0

    .line 520
    :pswitch_0
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    .line 516
    :pswitch_1
    const-string v0, "instrumentWithoutRestart"

    return-object v0

    .line 512
    :pswitch_2
    const-string/jumbo v0, "notifyContentProviderPublishStatus"

    return-object v0

    .line 508
    :pswitch_3
    const-string v0, "getBroadcastState"

    return-object v0

    .line 504
    :pswitch_4
    const-string/jumbo v0, "setDynamicalLogConfig"

    return-object v0

    .line 500
    :pswitch_5
    const-string/jumbo v0, "setDynamicalLogEnable"

    return-object v0

    .line 496
    :pswitch_6
    const-string v0, "dumpMessage"

    return-object v0

    .line 492
    :pswitch_7
    const-string v0, "enableProcessMainThreadLooperLog"

    return-object v0

    .line 488
    :pswitch_8
    const-string v0, "enableActivityThreadLog"

    return-object v0

    .line 484
    :pswitch_9
    const-string/jumbo v0, "performDirectAction"

    return-object v0

    .line 480
    :pswitch_a
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    .line 476
    :pswitch_b
    const-string/jumbo v0, "scheduleTransaction"

    return-object v0

    .line 472
    :pswitch_c
    const-string/jumbo v0, "setNetworkBlockSeq"

    return-object v0

    .line 468
    :pswitch_d
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 464
    :pswitch_e
    const-string v0, "attachStartupAgents"

    return-object v0

    .line 460
    :pswitch_f
    const-string v0, "attachAgent"

    return-object v0

    .line 456
    :pswitch_10
    const-string v0, "handleTrustStorageUpdate"

    return-object v0

    .line 452
    :pswitch_11
    const-string/jumbo v0, "scheduleLocalVoiceInteractionStarted"

    return-object v0

    .line 448
    :pswitch_12
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 444
    :pswitch_13
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 440
    :pswitch_14
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 436
    :pswitch_15
    const-string/jumbo v0, "scheduleEnterAnimationComplete"

    return-object v0

    .line 432
    :pswitch_16
    const-string/jumbo v0, "updateTimePrefs"

    return-object v0

    .line 428
    :pswitch_17
    const-string/jumbo v0, "scheduleInstallProvider"

    return-object v0

    .line 424
    :pswitch_18
    const-string/jumbo v0, "setProcessState"

    return-object v0

    .line 420
    :pswitch_19
    const-string/jumbo v0, "scheduleTranslucentConversionComplete"

    return-object v0

    .line 416
    :pswitch_1a
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 412
    :pswitch_1b
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 408
    :pswitch_1c
    const-string v0, "dumpDbInfo"

    return-object v0

    .line 404
    :pswitch_1d
    const-string v0, "dumpProvider"

    return-object v0

    .line 400
    :pswitch_1e
    const-string v0, "dumpCacheInfo"

    return-object v0

    .line 396
    :pswitch_1f
    const-string v0, "dumpGfxInfo"

    return-object v0

    .line 392
    :pswitch_20
    const-string v0, "dumpMemInfoProto"

    return-object v0

    .line 388
    :pswitch_21
    const-string v0, "dumpMemInfo"

    return-object v0

    .line 384
    :pswitch_22
    const-string/jumbo v0, "scheduleTrimMemory"

    return-object v0

    .line 380
    :pswitch_23
    const-string/jumbo v0, "updatePackageCompatibilityInfo"

    return-object v0

    .line 376
    :pswitch_24
    const-string/jumbo v0, "setCoreSettings"

    return-object v0

    .line 372
    :pswitch_25
    const-string/jumbo v0, "updateHttpProxy"

    return-object v0

    .line 368
    :pswitch_26
    const-string v0, "clearDnsCache"

    return-object v0

    .line 364
    :pswitch_27
    const-string v0, "dumpResources"

    return-object v0

    .line 360
    :pswitch_28
    const-string v0, "dumpActivity"

    return-object v0

    .line 356
    :pswitch_29
    const-string v0, "dumpHeap"

    return-object v0

    .line 352
    :pswitch_2a
    const-string/jumbo v0, "scheduleCrash"

    return-object v0

    .line 348
    :pswitch_2b
    const-string v0, "dispatchPackageBroadcast"

    return-object v0

    .line 344
    :pswitch_2c
    const-string/jumbo v0, "scheduleSuicide"

    return-object v0

    .line 340
    :pswitch_2d
    const-string/jumbo v0, "scheduleOnNewActivityOptions"

    return-object v0

    .line 336
    :pswitch_2e
    const-string/jumbo v0, "scheduleDestroyBackupAgent"

    return-object v0

    .line 332
    :pswitch_2f
    const-string/jumbo v0, "scheduleCreateBackupAgent"

    return-object v0

    .line 328
    :pswitch_30
    const-string/jumbo v0, "setSchedulingGroup"

    return-object v0

    .line 324
    :pswitch_31
    const-string/jumbo v0, "profilerControl"

    return-object v0

    .line 320
    :pswitch_32
    const-string/jumbo v0, "scheduleLowMemory"

    return-object v0

    .line 316
    :pswitch_33
    const-string/jumbo v0, "scheduleRegisteredReceiver"

    return-object v0

    .line 312
    :pswitch_34
    const-string v0, "dumpService"

    return-object v0

    .line 308
    :pswitch_35
    const-string/jumbo v0, "scheduleUnbindService"

    return-object v0

    .line 304
    :pswitch_36
    const-string/jumbo v0, "scheduleBindService"

    return-object v0

    .line 300
    :pswitch_37
    const-string/jumbo v0, "processInBackground"

    return-object v0

    .line 296
    :pswitch_38
    const-string/jumbo v0, "updateTimeZone"

    return-object v0

    .line 292
    :pswitch_39
    const-string/jumbo v0, "scheduleServiceArgs"

    return-object v0

    .line 288
    :pswitch_3a
    const-string/jumbo v0, "scheduleExit"

    return-object v0

    .line 284
    :pswitch_3b
    const-string/jumbo v0, "runIsolatedEntryPoint"

    return-object v0

    .line 280
    :pswitch_3c
    const-string v0, "bindApplication"

    return-object v0

    .line 276
    :pswitch_3d
    const-string/jumbo v0, "scheduleStopService"

    return-object v0

    .line 272
    :pswitch_3e
    const-string/jumbo v0, "scheduleCreateService"

    return-object v0

    .line 268
    :pswitch_3f
    const-string/jumbo v0, "oplusScheduleReceiver"

    return-object v0

    .line 264
    :pswitch_40
    const-string/jumbo v0, "scheduleReceiver"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 255
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2293
    const/16 v0, 0x40

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 531
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 61
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    const-string v12, "android.app.IApplicationThread"

    .line 536
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 537
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 547
    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_1

    .line 1294
    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v42, "descriptor":Ljava/lang/String;
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 543
    .end local v42    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    return v11

    .line 1277
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1279
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1281
    .local v8, "_arg1":I
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/translation/TranslationSpec;

    .line 1283
    .local v9, "_arg2":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/translation/TranslationSpec;

    .line 1285
    .local v16, "_arg3":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1287
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/translation/UiTranslationSpec;

    .line 1288
    .local v18, "_arg5":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 1290
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1261
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/view/translation/TranslationSpec;
    .end local v16    # "_arg3":Landroid/view/translation/TranslationSpec;
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "_arg5":Landroid/view/translation/UiTranslationSpec;
    :pswitch_2
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1263
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1265
    .local v7, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v8

    .line 1267
    .local v8, "_arg2":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v9

    .line 1269
    .local v9, "_arg3":Landroid/app/IUiAutomationConnection;
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/pm/ApplicationInfo;

    .line 1270
    .local v16, "_arg4":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 1272
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1247
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_arg2":Landroid/app/IInstrumentationWatcher;
    .end local v9    # "_arg3":Landroid/app/IUiAutomationConnection;
    .end local v16    # "_arg4":Landroid/content/pm/ApplicationInfo;
    :pswitch_3
    sget-object v0, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContentProviderHolder;

    .line 1249
    .local v0, "_arg0":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1251
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1253
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1254
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 1256
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1239
    .end local v0    # "_arg0":Landroid/app/ContentProviderHolder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1240
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->getBroadcastState(I)V

    .line 1242
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1231
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1232
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setDynamicalLogConfig(Ljava/util/List;)V

    .line 1234
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1223
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1224
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setDynamicalLogEnable(Z)V

    .line 1226
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1215
    .end local v0    # "_arg0":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1216
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->dumpMessage(Z)V

    .line 1218
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1209
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->enableProcessMainThreadLooperLog()V

    .line 1210
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1202
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1203
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->enableActivityThreadLog(Z)V

    .line 1205
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1186
    .end local v0    # "_arg0":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1188
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1190
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    .line 1192
    .local v8, "_arg2":Landroid/os/Bundle;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/RemoteCallback;

    .line 1194
    .local v9, "_arg3":Landroid/os/RemoteCallback;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    .line 1195
    .local v16, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1197
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1172
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v9    # "_arg3":Landroid/os/RemoteCallback;
    .end local v16    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1174
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 1176
    .local v1, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 1178
    .local v2, "_arg2":Landroid/os/RemoteCallback;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1179
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1181
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1164
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    .end local v2    # "_arg2":Landroid/os/RemoteCallback;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_c
    sget-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 1165
    .local v0, "_arg0":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1167
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1156
    .end local v0    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1157
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 1159
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1148
    .end local v0    # "_arg0":J
    :pswitch_e
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1149
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1151
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachStartupAgents(Ljava/lang/String;)V

    .line 1143
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1132
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 1135
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1126
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 1127
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1117
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1119
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 1120
    .restart local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1122
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1109
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_13
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1110
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 1112
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1103
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 1104
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1096
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1097
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 1099
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1088
    .end local v0    # "_arg0":[B
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1089
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 1091
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1080
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1081
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 1083
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1072
    .end local v0    # "_arg0":I
    :pswitch_18
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 1073
    .local v0, "_arg0":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 1075
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1064
    .end local v0    # "_arg0":Landroid/content/pm/ProviderInfo;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1065
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 1067
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1054
    .end local v0    # "_arg0":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1056
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1057
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 1059
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1038
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1040
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1042
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1044
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1046
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1047
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 1049
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1030
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1031
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1033
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1020
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1d
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1022
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1025
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 1008
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1010
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1012
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 1015
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 998
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_1f
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1000
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1003
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 988
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_20
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 990
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 991
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 993
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 968
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_21
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 970
    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Debug$MemoryInfo;

    .line 972
    .local v9, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 974
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 976
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 978
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 980
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 981
    .local v20, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 983
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 946
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":[Ljava/lang/String;
    :pswitch_22
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 948
    .local v9, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Debug$MemoryInfo;

    .line 950
    .local v16, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 952
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 954
    .local v18, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 956
    .local v19, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 958
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 960
    .local v21, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 961
    .local v22, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    .line 963
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 938
    .end local v9    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":Z
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":[Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 939
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 941
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 928
    .end local v0    # "_arg0":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 931
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 933
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :pswitch_25
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 921
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 923
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 914
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateHttpProxy()V

    .line 915
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 909
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 910
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 900
    :pswitch_28
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 902
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 903
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 905
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 886
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_29
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 888
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 890
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 893
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 895
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 868
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[Ljava/lang/String;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 870
    .local v7, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 872
    .local v8, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 874
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 876
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .line 878
    .local v17, "_arg4":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/RemoteCallback;

    .line 879
    .local v18, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 881
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 856
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "_arg5":Landroid/os/RemoteCallback;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 861
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 863
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 846
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 851
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 841
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 831
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 833
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 834
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 836
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 819
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_2f
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 821
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 823
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 824
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 826
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 803
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "_arg2":I
    :pswitch_30
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 805
    .local v6, "_arg0":Landroid/content/pm/ApplicationInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .line 807
    .local v7, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 809
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 811
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 812
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V

    .line 814
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 795
    .end local v6    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 796
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 798
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 783
    .end local v0    # "_arg0":I
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 785
    .local v0, "_arg0":Z
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    .line 787
    .local v1, "_arg1":Landroid/app/ProfilerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 790
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 777
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/app/ProfilerInfo;
    .end local v2    # "_arg2":I
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 778
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 754
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v16

    .line 756
    .local v16, "_arg0":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 758
    .local v17, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 760
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 762
    .local v19, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 764
    .local v20, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 766
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 768
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 770
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 771
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 773
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 742
    .end local v16    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v17    # "_arg1":Landroid/content/Intent;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_35
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 744
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 749
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 732
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 734
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 735
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 737
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 718
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 720
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 722
    .restart local v1    # "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 724
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 725
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 727
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 713
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 707
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 708
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 698
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 700
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 701
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 703
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 693
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 683
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 688
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .local v29, "_arg0":Ljava/lang/String;
    move-object/from16 v1, v29

    .line 626
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/content/pm/ApplicationInfo;

    .local v30, "_arg1":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v2, v30

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v31

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v32

    .line 632
    sget-object v0, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Landroid/content/pm/ProviderInfoList;

    .local v33, "_arg4":Landroid/content/pm/ProviderInfoList;
    move-object/from16 v5, v33

    .line 634
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroid/content/ComponentName;

    .local v34, "_arg5":Landroid/content/ComponentName;
    move-object/from16 v6, v34

    .line 636
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Landroid/app/ProfilerInfo;

    .local v35, "_arg6":Landroid/app/ProfilerInfo;
    move-object/from16 v7, v35

    .line 638
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/os/Bundle;

    .local v36, "_arg7":Landroid/os/Bundle;
    move-object/from16 v8, v36

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v37

    .local v37, "_arg8":Landroid/app/IInstrumentationWatcher;
    move-object/from16 v9, v37

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v38

    .local v38, "_arg9":Landroid/app/IUiAutomationConnection;
    move-object/from16 v10, v38

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move/from16 v40, v11

    .local v39, "_arg10":I
    move/from16 v11, v39

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v41

    move-object/from16 v42, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v41, "_arg11":Z
    .restart local v42    # "descriptor":Ljava/lang/String;
    move/from16 v12, v41

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v43

    move-object v0, v13

    .local v43, "_arg12":Z
    move/from16 v13, v43

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v44

    .local v44, "_arg13":Z
    move/from16 v14, v44

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v45

    .local v45, "_arg14":Z
    move/from16 v15, v45

    .line 654
    move-object/from16 v46, v1

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Landroid/content/res/Configuration;

    .local v47, "_arg15":Landroid/content/res/Configuration;
    move-object/from16 v16, v47

    .line 656
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Landroid/content/res/CompatibilityInfo;

    .local v48, "_arg16":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v17, v48

    .line 658
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 659
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v49

    .local v49, "_arg17":Ljava/util/Map;
    move-object/from16 v18, v49

    .line 661
    move-object/from16 v50, v1

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .local v50, "cl":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Landroid/os/Bundle;

    .local v51, "_arg18":Landroid/os/Bundle;
    move-object/from16 v19, v51

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .local v52, "_arg19":Ljava/lang/String;
    move-object/from16 v20, v52

    .line 665
    sget-object v1, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Landroid/content/AutofillOptions;

    .local v53, "_arg20":Landroid/content/AutofillOptions;
    move-object/from16 v21, v53

    .line 667
    sget-object v1, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Landroid/content/ContentCaptureOptions;

    .local v54, "_arg21":Landroid/content/ContentCaptureOptions;
    move-object/from16 v22, v54

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v55

    .local v55, "_arg22":[J
    move-object/from16 v23, v55

    .line 671
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Landroid/os/SharedMemory;

    .local v56, "_arg23":Landroid/os/SharedMemory;
    move-object/from16 v24, v56

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v57

    .local v57, "_arg24":J
    move-wide/from16 v25, v57

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v59

    .local v59, "_arg25":J
    move-wide/from16 v27, v59

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v46, v50

    .end local v50    # "cl":Ljava/lang/ClassLoader;
    .local v46, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {v0 .. v28}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJ)V

    .line 678
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    goto/16 :goto_0

    .line 616
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg3":Ljava/lang/String;
    .end local v33    # "_arg4":Landroid/content/pm/ProviderInfoList;
    .end local v34    # "_arg5":Landroid/content/ComponentName;
    .end local v35    # "_arg6":Landroid/app/ProfilerInfo;
    .end local v36    # "_arg7":Landroid/os/Bundle;
    .end local v37    # "_arg8":Landroid/app/IInstrumentationWatcher;
    .end local v38    # "_arg9":Landroid/app/IUiAutomationConnection;
    .end local v39    # "_arg10":I
    .end local v41    # "_arg11":Z
    .end local v42    # "descriptor":Ljava/lang/String;
    .end local v43    # "_arg12":Z
    .end local v44    # "_arg13":Z
    .end local v45    # "_arg14":Z
    .end local v46    # "cl":Ljava/lang/ClassLoader;
    .end local v47    # "_arg15":Landroid/content/res/Configuration;
    .end local v48    # "_arg16":Landroid/content/res/CompatibilityInfo;
    .end local v49    # "_arg17":Ljava/util/Map;
    .end local v51    # "_arg18":Landroid/os/Bundle;
    .end local v52    # "_arg19":Ljava/lang/String;
    .end local v53    # "_arg20":Landroid/content/AutofillOptions;
    .end local v54    # "_arg21":Landroid/content/ContentCaptureOptions;
    .end local v55    # "_arg22":[J
    .end local v56    # "_arg23":Landroid/os/SharedMemory;
    .end local v57    # "_arg24":J
    .end local v59    # "_arg25":J
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move/from16 v40, v11

    move-object/from16 v42, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 617
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 619
    move-object/from16 v12, p2

    goto/16 :goto_0

    .line 602
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v42    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 604
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v12, p2

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 606
    .local v1, "_arg1":Landroid/content/pm/ServiceInfo;
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 608
    .local v2, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 611
    goto/16 :goto_0

    .line 576
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ServiceInfo;
    .end local v2    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "_arg3":I
    .end local v42    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_40
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/Intent;

    .line 578
    .local v13, "_arg0":Landroid/content/Intent;
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ActivityInfo;

    .line 580
    .local v14, "_arg1":Landroid/content/pm/ActivityInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/res/CompatibilityInfo;

    .line 582
    .local v15, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 584
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 586
    .local v17, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 588
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 590
    .local v19, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 592
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 594
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 595
    .local v22, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    invoke-virtual/range {v0 .. v10}, Landroid/app/IApplicationThread$Stub;->oplusScheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZIII)V

    .line 597
    goto :goto_0

    .line 552
    .end local v13    # "_arg0":Landroid/content/Intent;
    .end local v14    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v15    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/os/Bundle;
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":I
    .end local v42    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v12, v13

    move-object v11, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/Intent;

    .line 554
    .local v10, "_arg0":Landroid/content/Intent;
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ActivityInfo;

    .line 556
    .local v13, "_arg1":Landroid/content/pm/ActivityInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/res/CompatibilityInfo;

    .line 558
    .local v14, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 560
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 562
    .local v16, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 564
    .local v17, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 566
    .local v18, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 568
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 569
    .local v20, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 571
    nop

    .line 1297
    .end local v10    # "_arg0":Landroid/content/Intent;
    .end local v13    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v14    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/os/Bundle;
    .end local v18    # "_arg6":Z
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":I
    :goto_0
    return v40

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
