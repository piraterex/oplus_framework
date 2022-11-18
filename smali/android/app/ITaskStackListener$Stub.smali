.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final blacklist TRANSACTION_onActivityDismissingDockedTask:I = 0x6

.field static final greylist-max-o TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final greylist-max-o TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final blacklist TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final greylist-max-o TRANSACTION_onActivityPinned:I = 0x2

.field static final greylist-max-o TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final blacklist TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final blacklist TRANSACTION_onActivityRotation:I = 0x17

.field static final greylist-max-o TRANSACTION_onActivityUnpinned:I = 0x3

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x11

.field static final blacklist TRANSACTION_onLockTaskModeChanged:I = 0x19

.field static final blacklist TRANSACTION_onRecentTaskListFrozenChanged:I = 0x14

.field static final blacklist TRANSACTION_onRecentTaskListUpdated:I = 0x13

.field static final greylist-max-o TRANSACTION_onTaskCreated:I = 0x9

.field static final greylist-max-o TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final blacklist TRANSACTION_onTaskDisplayChanged:I = 0x12

.field static final blacklist TRANSACTION_onTaskFocusChanged:I = 0x15

.field static final blacklist TRANSACTION_onTaskMovedToBack:I = 0x18

.field static final greylist-max-o TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final greylist-max-o TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final greylist-max-o TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final greylist-max-o TRANSACTION_onTaskRemoved:I = 0xa

.field static final blacklist TRANSACTION_onTaskRequestedOrientationChanged:I = 0x16

.field static final greylist-max-o TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final greylist-max-o TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 227
    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 235
    if-nez p0, :cond_0

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 238
    :cond_0
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 239
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_1

    .line 240
    move-object v1, v0

    check-cast v1, Landroid/app/ITaskStackListener;

    return-object v1

    .line 242
    :cond_1
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 251
    packed-switch p0, :pswitch_data_0

    .line 355
    const/4 v0, 0x0

    return-object v0

    .line 351
    :pswitch_0
    const-string/jumbo v0, "onLockTaskModeChanged"

    return-object v0

    .line 347
    :pswitch_1
    const-string/jumbo v0, "onTaskMovedToBack"

    return-object v0

    .line 343
    :pswitch_2
    const-string/jumbo v0, "onActivityRotation"

    return-object v0

    .line 339
    :pswitch_3
    const-string/jumbo v0, "onTaskRequestedOrientationChanged"

    return-object v0

    .line 335
    :pswitch_4
    const-string/jumbo v0, "onTaskFocusChanged"

    return-object v0

    .line 331
    :pswitch_5
    const-string/jumbo v0, "onRecentTaskListFrozenChanged"

    return-object v0

    .line 327
    :pswitch_6
    const-string/jumbo v0, "onRecentTaskListUpdated"

    return-object v0

    .line 323
    :pswitch_7
    const-string/jumbo v0, "onTaskDisplayChanged"

    return-object v0

    .line 319
    :pswitch_8
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 315
    :pswitch_9
    const-string/jumbo v0, "onTaskSnapshotChanged"

    return-object v0

    .line 311
    :pswitch_a
    const-string/jumbo v0, "onTaskProfileLocked"

    return-object v0

    .line 307
    :pswitch_b
    const-string/jumbo v0, "onTaskRemovalStarted"

    return-object v0

    .line 303
    :pswitch_c
    const-string/jumbo v0, "onActivityRequestedOrientationChanged"

    return-object v0

    .line 299
    :pswitch_d
    const-string/jumbo v0, "onTaskDescriptionChanged"

    return-object v0

    .line 295
    :pswitch_e
    const-string/jumbo v0, "onTaskMovedToFront"

    return-object v0

    .line 291
    :pswitch_f
    const-string/jumbo v0, "onTaskRemoved"

    return-object v0

    .line 287
    :pswitch_10
    const-string/jumbo v0, "onTaskCreated"

    return-object v0

    .line 283
    :pswitch_11
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object v0

    .line 279
    :pswitch_12
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object v0

    .line 275
    :pswitch_13
    const-string/jumbo v0, "onActivityDismissingDockedTask"

    return-object v0

    .line 271
    :pswitch_14
    const-string/jumbo v0, "onActivityForcedResizable"

    return-object v0

    .line 267
    :pswitch_15
    const-string/jumbo v0, "onActivityRestartAttempt"

    return-object v0

    .line 263
    :pswitch_16
    const-string/jumbo v0, "onActivityUnpinned"

    return-object v0

    .line 259
    :pswitch_17
    const-string/jumbo v0, "onActivityPinned"

    return-object v0

    .line 255
    :pswitch_18
    const-string/jumbo v0, "onTaskStackChanged"

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

    .line 246
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1094
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 362
    invoke-static {p1}, Landroid/app/ITaskStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 366
    const-string v0, "android.app.ITaskStackListener"

    .line 367
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 368
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 378
    packed-switch p1, :pswitch_data_1

    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 374
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    return v1

    .line 595
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onLockTaskModeChanged(I)V

    .line 598
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 588
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 590
    goto/16 :goto_0

    .line 579
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onActivityRotation(I)V

    .line 582
    goto/16 :goto_0

    .line 569
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 572
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskRequestedOrientationChanged(II)V

    .line 574
    goto/16 :goto_0

    .line 559
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 561
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 562
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskFocusChanged(IZ)V

    .line 564
    goto/16 :goto_0

    .line 551
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 552
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListFrozenChanged(Z)V

    .line 554
    goto/16 :goto_0

    .line 545
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListUpdated()V

    .line 546
    goto/16 :goto_0

    .line 536
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 539
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskDisplayChanged(II)V

    .line 541
    goto/16 :goto_0

    .line 528
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 529
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 531
    goto/16 :goto_0

    .line 518
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .local v2, "_arg0":I
    sget-object v3, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskSnapshot;

    .line 521
    .local v3, "_arg1":Landroid/window/TaskSnapshot;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 523
    goto/16 :goto_0

    .line 510
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/TaskSnapshot;
    :pswitch_b
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 511
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 513
    goto/16 :goto_0

    .line 502
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_c
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 503
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 505
    goto/16 :goto_0

    .line 492
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 494
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    .line 497
    goto/16 :goto_0

    .line 484
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 485
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 487
    goto/16 :goto_0

    .line 476
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_f
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 477
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 479
    goto/16 :goto_0

    .line 468
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    .line 471
    goto/16 :goto_0

    .line 458
    .end local v2    # "_arg0":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 461
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 463
    goto/16 :goto_0

    .line 448
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_12
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 450
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 453
    goto :goto_0

    .line 438
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_13
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 440
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 443
    goto :goto_0

    .line 432
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_14
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedTask()V

    .line 433
    goto :goto_0

    .line 421
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 425
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 426
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 428
    goto :goto_0

    .line 407
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_16
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 409
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 411
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 413
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 414
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 416
    goto :goto_0

    .line 401
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    :pswitch_17
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    .line 402
    goto :goto_0

    .line 388
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 392
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 395
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;III)V

    .line 397
    goto :goto_0

    .line 382
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_19
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    .line 383
    nop

    .line 605
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
