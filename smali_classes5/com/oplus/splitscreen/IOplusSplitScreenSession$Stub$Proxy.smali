.class Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOplusSplitScreenSession.java"

# interfaces
.implements Lcom/oplus/splitscreen/IOplusSplitScreenSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 380
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 387
    const-string v0, "com.oplus.splitscreen.IOplusSplitScreenSession"

    return-object v0
.end method

.method public blacklist getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "maxNum"    # I
    .param p2, "period"    # J
    .param p4, "supportSplitScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    .local p5, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 513
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 514
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 518
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    nop

    .line 521
    return-object v2

    .line 518
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    throw v2
.end method

.method public blacklist maintainSplitToZoomTaskState(IZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "maintain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 546
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 547
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    nop

    .line 553
    return-void

    .line 550
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw v2
.end method

.method public blacklist moveChildrenTaskToBack(I)Z
    .locals 5
    .param p1, "rootTaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 493
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 497
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return v2

    .line 497
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw v2
.end method

.method public blacklist notifySplitRootTaskId(III)V
    .locals 5
    .param p1, "root"    # I
    .param p2, "primary"    # I
    .param p3, "secondary"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 430
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    nop

    .line 436
    return-void

    .line 433
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    throw v2
.end method

.method public blacklist registerActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "observer"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 599
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 600
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    nop

    .line 606
    return-void

    .line 603
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    throw v2
.end method

.method public blacklist registerStackDivider(Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/oplus/splitscreen/IOplusStackDividerConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 396
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 397
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    nop

    .line 403
    return-void

    .line 400
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw v2
.end method

.method public blacklist removeSelfSplitTaskIfNeed(II)V
    .locals 5
    .param p1, "toTopTaskId"    # I
    .param p2, "toBottomTaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 632
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    nop

    .line 638
    return-void

    .line 635
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    throw v2
.end method

.method public blacklist requestSwitchToFullScreen(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 581
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 582
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 586
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    nop

    .line 589
    return v2

    .line 586
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    throw v2
.end method

.method public blacklist requestSwitchToSplitScreen(Landroid/os/IBinder;Lcom/oplus/app/SplitScreenParams;)Z
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Lcom/oplus/app/SplitScreenParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 562
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 563
    iget-object v3, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 564
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 568
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    nop

    .line 571
    return v2

    .line 568
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    throw v2
.end method

.method public blacklist setSplitAnimatorStatus(II)V
    .locals 5
    .param p1, "animatorType"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 642
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 648
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    nop

    .line 654
    return-void

    .line 651
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    throw v2
.end method

.method public blacklist setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 411
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    iget-object v3, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    nop

    .line 419
    return-void

    .line 416
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v2
.end method

.method public blacklist setSplitRequestedOrientation(I)V
    .locals 5
    .param p1, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 531
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    nop

    .line 537
    return-void

    .line 534
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    throw v2
.end method

.method public blacklist setSplitRootTaskAlwaysOnTop(Z)V
    .locals 5
    .param p1, "onTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 476
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 477
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    nop

    .line 483
    return-void

    .line 480
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    throw v2
.end method

.method public blacklist setWallpaperVisible(Z)V
    .locals 5
    .param p1, "show"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 461
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-void

    .line 465
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v2
.end method

.method public blacklist startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 445
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 446
    iget-object v3, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    nop

    .line 453
    return-void

    .line 450
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    throw v2
.end method

.method public blacklist unregisterActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "observer"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 610
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 615
    iget-object v2, p0, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 616
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    nop

    .line 622
    return-void

    .line 619
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    throw v2
.end method
