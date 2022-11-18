.class Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioSimResponse.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I

    .line 549
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 546
    iput-object p1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 547
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 570
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    nop

    .line 572
    return-void

    .line 566
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeRequest is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    throw v1
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 577
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 579
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 580
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 586
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    nop

    .line 588
    return-void

    .line 582
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method areUiccApplicationsEnabledResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "enabled":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "enabled":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 552
    iget-object v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 593
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 595
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 602
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    nop

    .line 604
    return-void

    .line 598
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method changeIccPin2ForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    throw v1
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 609
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 610
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 618
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    nop

    .line 620
    return-void

    .line 614
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method changeIccPinForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    throw v1
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 625
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 627
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 633
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    nop

    .line 635
    return-void

    .line 629
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method enableUiccApplicationsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    throw v1
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "carriers"    # Landroid/hardware/radio/sim/CarrierRestrictions;
    .param p3, "multiSimPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 642
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 643
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 650
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    nop

    .line 652
    return-void

    .line 646
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getAllowedCarriersResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "carriers":Landroid/hardware/radio/sim/CarrierRestrictions;
    .end local p3    # "multiSimPolicy":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "carriers":Landroid/hardware/radio/sim/CarrierRestrictions;
    .restart local p3    # "multiSimPolicy":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v1
.end method

.method public blacklist getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "hSid"    # Ljava/lang/String;
    .param p4, "hNid"    # Ljava/lang/String;
    .param p5, "min"    # Ljava/lang/String;
    .param p6, "prl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 657
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 670
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    nop

    .line 672
    return-void

    .line 666
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCdmaSubscriptionResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "mdn":Ljava/lang/String;
    .end local p3    # "hSid":Ljava/lang/String;
    .end local p4    # "hNid":Ljava/lang/String;
    .end local p5    # "min":Ljava/lang/String;
    .end local p6    # "prl":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "mdn":Ljava/lang/String;
    .restart local p3    # "hSid":Ljava/lang/String;
    .restart local p4    # "hNid":Ljava/lang/String;
    .restart local p5    # "min":Ljava/lang/String;
    .restart local p6    # "prl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    throw v1
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 686
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    nop

    .line 688
    return-void

    .line 682
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCdmaSubscriptionSourceResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "source":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "source":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    throw v1
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 693
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 702
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    nop

    .line 704
    return-void

    .line 698
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getFacilityLockForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "response":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "response":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v1
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/sim/CardStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 709
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 711
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 712
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 718
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    nop

    .line 720
    return-void

    .line 714
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getIccCardStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "cardStatus":Landroid/hardware/radio/sim/CardStatus;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "cardStatus":Landroid/hardware/radio/sim/CardStatus;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    throw v1
.end method

.method public blacklist getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 725
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 734
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    nop

    .line 736
    return-void

    .line 730
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsiForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "imsi":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "imsi":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 556
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1133
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1135
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1137
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1139
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    goto :goto_0

    .line 1142
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    throw v2

    .line 1146
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1132
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    iget v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1120
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1121
    iget-object v2, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1122
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    throw v2

    .line 1129
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "capacity"    # Landroid/hardware/radio/sim/PhonebookCapacity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 741
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 743
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 744
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 750
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    nop

    .line 752
    return-void

    .line 746
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimPhonebookCapacityResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "capacity":Landroid/hardware/radio/sim/PhonebookCapacity;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "capacity":Landroid/hardware/radio/sim/PhonebookCapacity;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    throw v1
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 759
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 765
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    nop

    .line 767
    return-void

    .line 761
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimPhonebookRecordsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    throw v1
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 772
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 773
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 774
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 780
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    nop

    .line 782
    return-void

    .line 776
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccCloseLogicalChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    throw v1
.end method

.method public blacklist iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 787
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 789
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 790
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 796
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    nop

    .line 798
    return-void

    .line 792
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccIoForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    throw v1
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "channelId"    # I
    .param p3, "selectResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 803
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 807
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 813
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    nop

    .line 815
    return-void

    .line 809
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccOpenLogicalChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "channelId":I
    .end local p3    # "selectResponse":[B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "channelId":I
    .restart local p3    # "selectResponse":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    throw v1
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 820
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 822
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 823
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 829
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    nop

    .line 831
    return-void

    .line 825
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccTransmitApduBasicChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw v1
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 836
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 837
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 838
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 839
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 845
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    nop

    .line 847
    return-void

    .line 841
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method iccTransmitApduLogicalChannelResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    throw v1
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 854
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 860
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    nop

    .line 862
    return-void

    .line 856
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method reportStkServiceIsRunningResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v1
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 867
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 869
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 870
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 876
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    nop

    .line 878
    return-void

    .line 872
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method requestIccSimAuthenticationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "result":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw v1
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 885
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 892
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return-void

    .line 888
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendEnvelopeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "commandResponse":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "commandResponse":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v1
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 900
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 901
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 902
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 908
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    nop

    .line 910
    return-void

    .line 904
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendEnvelopeWithStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "iccIo":Landroid/hardware/radio/sim/IccIoResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    throw v1
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 915
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 917
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 923
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    nop

    .line 925
    return-void

    .line 919
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendTerminalResponseToSimResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    throw v1
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 932
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 938
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    nop

    .line 940
    return-void

    .line 934
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setAllowedCarriersResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    throw v1
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 945
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 947
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 953
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    nop

    .line 955
    return-void

    .line 949
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCarrierInfoForImsiEncryptionResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    throw v1
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 960
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 961
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 962
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 968
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 969
    nop

    .line 970
    return-void

    .line 964
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCdmaSubscriptionSourceResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 969
    throw v1
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 975
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 977
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 984
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    nop

    .line 986
    return-void

    .line 980
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setFacilityLockForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "retry":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "retry":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    throw v1
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 991
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 993
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 999
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    nop

    .line 1001
    return-void

    .line 995
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSimCardPowerResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    throw v1
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1006
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1008
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1014
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1015
    nop

    .line 1016
    return-void

    .line 1010
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setUiccSubscriptionResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1015
    throw v1
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1021
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1022
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1030
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1026
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPin2ForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    throw v1
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1037
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1046
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    nop

    .line 1048
    return-void

    .line 1042
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPinForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw v1
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1062
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    nop

    .line 1064
    return-void

    .line 1058
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPuk2ForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw v1
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1071
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1078
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    nop

    .line 1080
    return-void

    .line 1074
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplyIccPukForAppResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    throw v1
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "persoType"    # I
    .param p3, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1085
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1087
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1095
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    nop

    .line 1097
    return-void

    .line 1091
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method supplySimDepersonalizationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "persoType":I
    .end local p3    # "remainingRetries":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "persoType":I
    .restart local p3    # "remainingRetries":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    throw v1
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "updatedRecordIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1102
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1103
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1104
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object v1, p0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 1111
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    nop

    .line 1113
    return-void

    .line 1107
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method updateSimPhonebookRecordsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "updatedRecordIndex":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "updatedRecordIndex":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    throw v1
.end method
