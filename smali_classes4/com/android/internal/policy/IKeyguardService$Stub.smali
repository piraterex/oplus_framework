.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final greylist-max-o TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x4

.field static final blacklist TRANSACTION_dismissKeyguardToLaunch:I = 0x18

.field static final greylist-max-o TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final greylist-max-o TRANSACTION_onBootCompleted:I = 0x14

.field static final greylist-max-o TRANSACTION_onDreamingStarted:I = 0x5

.field static final greylist-max-o TRANSACTION_onDreamingStopped:I = 0x6

.field static final greylist-max-o TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final greylist-max-o TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final greylist-max-o TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final greylist-max-o TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final greylist-max-o TRANSACTION_onScreenTurningOff:I = 0xd

.field static final greylist-max-o TRANSACTION_onScreenTurningOn:I = 0xb

.field static final greylist-max-o TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final greylist-max-o TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final greylist-max-o TRANSACTION_onStartedWakingUp:I = 0x9

.field static final blacklist TRANSACTION_onSystemKeyPressed:I = 0x19

.field static final greylist-max-o TRANSACTION_onSystemReady:I = 0x10

.field static final blacklist TRANSACTION_requestKeyguard:I = 0x17

.field static final greylist-max-o TRANSACTION_setCurrentUser:I = 0x13

.field static final greylist-max-o TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_setOccluded:I = 0x1

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x12

.field static final greylist-max-o TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final greylist-max-o TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    .line 167
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    .line 169
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 178
    packed-switch p0, :pswitch_data_0

    .line 282
    const/4 v0, 0x0

    return-object v0

    .line 278
    :pswitch_0
    const-string/jumbo v0, "onSystemKeyPressed"

    return-object v0

    .line 274
    :pswitch_1
    const-string v0, "dismissKeyguardToLaunch"

    return-object v0

    .line 270
    :pswitch_2
    const-string/jumbo v0, "requestKeyguard"

    return-object v0

    .line 266
    :pswitch_3
    const-string/jumbo v0, "onShortPowerPressedGoHome"

    return-object v0

    .line 262
    :pswitch_4
    const-string/jumbo v0, "startKeyguardExitAnimation"

    return-object v0

    .line 258
    :pswitch_5
    const-string/jumbo v0, "onBootCompleted"

    return-object v0

    .line 254
    :pswitch_6
    const-string/jumbo v0, "setCurrentUser"

    return-object v0

    .line 250
    :pswitch_7
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 246
    :pswitch_8
    const-string v0, "doKeyguardTimeout"

    return-object v0

    .line 242
    :pswitch_9
    const-string/jumbo v0, "onSystemReady"

    return-object v0

    .line 238
    :pswitch_a
    const-string/jumbo v0, "setKeyguardEnabled"

    return-object v0

    .line 234
    :pswitch_b
    const-string/jumbo v0, "onScreenTurnedOff"

    return-object v0

    .line 230
    :pswitch_c
    const-string/jumbo v0, "onScreenTurningOff"

    return-object v0

    .line 226
    :pswitch_d
    const-string/jumbo v0, "onScreenTurnedOn"

    return-object v0

    .line 222
    :pswitch_e
    const-string/jumbo v0, "onScreenTurningOn"

    return-object v0

    .line 218
    :pswitch_f
    const-string/jumbo v0, "onFinishedWakingUp"

    return-object v0

    .line 214
    :pswitch_10
    const-string/jumbo v0, "onStartedWakingUp"

    return-object v0

    .line 210
    :pswitch_11
    const-string/jumbo v0, "onFinishedGoingToSleep"

    return-object v0

    .line 206
    :pswitch_12
    const-string/jumbo v0, "onStartedGoingToSleep"

    return-object v0

    .line 202
    :pswitch_13
    const-string/jumbo v0, "onDreamingStopped"

    return-object v0

    .line 198
    :pswitch_14
    const-string/jumbo v0, "onDreamingStarted"

    return-object v0

    .line 194
    :pswitch_15
    const-string v0, "dismiss"

    return-object v0

    .line 190
    :pswitch_16
    const-string/jumbo v0, "verifyUnlock"

    return-object v0

    .line 186
    :pswitch_17
    const-string v0, "addStateMonitorCallback"

    return-object v0

    .line 182
    :pswitch_18
    const-string/jumbo v0, "setOccluded"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 173
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 902
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 289
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    const-string v0, "com.android.internal.policy.IKeyguardService"

    .line 294
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 295
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 305
    packed-switch p1, :pswitch_data_1

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 301
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    return v1

    .line 485
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    .line 488
    goto/16 :goto_0

    .line 477
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 478
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 480
    goto/16 :goto_0

    .line 469
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->requestKeyguard(Ljava/lang/String;)V

    .line 472
    goto/16 :goto_0

    .line 463
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    .line 464
    goto/16 :goto_0

    .line 454
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 456
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 457
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    .line 459
    goto/16 :goto_0

    .line 448
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    .line 449
    goto/16 :goto_0

    .line 441
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    .line 444
    goto/16 :goto_0

    .line 433
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 434
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    .line 436
    goto/16 :goto_0

    .line 425
    .end local v2    # "_arg0":Z
    :pswitch_9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 426
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 428
    goto/16 :goto_0

    .line 419
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    .line 420
    goto/16 :goto_0

    .line 412
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 413
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    .line 415
    goto/16 :goto_0

    .line 406
    .end local v2    # "_arg0":Z
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    .line 407
    goto/16 :goto_0

    .line 401
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    .line 402
    goto/16 :goto_0

    .line 396
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    .line 397
    goto/16 :goto_0

    .line 389
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    .line 390
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 392
    goto/16 :goto_0

    .line 383
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    .line 384
    goto/16 :goto_0

    .line 374
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 377
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    .line 379
    goto :goto_0

    .line 364
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 367
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    .line 369
    goto :goto_0

    .line 356
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    .line 359
    goto :goto_0

    .line 350
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    .line 351
    goto :goto_0

    .line 345
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    .line 346
    goto :goto_0

    .line 336
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 338
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 339
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 341
    goto :goto_0

    .line 328
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v2

    .line 329
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 331
    goto :goto_0

    .line 320
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 323
    goto :goto_0

    .line 310
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 313
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    .line 315
    nop

    .line 495
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
