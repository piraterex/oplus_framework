.class Landroid/app/IUiAutomationConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 424
    return-void
.end method


# virtual methods
.method public blacklist adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 673
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 679
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    nop

    .line 685
    return-void

    .line 682
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o clearWindowAnimationFrameStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 595
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    nop

    .line 601
    return-void

    .line 598
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    throw v2
.end method

.method public greylist-max-o clearWindowContentFrameStats(I)Z
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 561
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 565
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 567
    nop

    .line 568
    return v2

    .line 565
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 567
    throw v2
.end method

.method public greylist-max-o connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 442
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    nop

    .line 448
    return-void

    .line 445
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    throw v2
.end method

.method public greylist-max-o disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 456
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    nop

    .line 462
    return-void

    .line 459
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v2
.end method

.method public blacklist dropShellPermissionIdentity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 691
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 693
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 698
    nop

    .line 699
    return-void

    .line 696
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 698
    throw v2
.end method

.method public greylist-max-o executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 627
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 628
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 629
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    nop

    .line 635
    return-void

    .line 632
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    throw v2
.end method

.method public blacklist executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "stderrSink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 720
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 721
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 722
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 723
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    nop

    .line 729
    return-void

    .line 726
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    throw v2
.end method

.method public blacklist getAdoptedShellPermissions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 738
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 742
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    nop

    .line 745
    return-object v2

    .line 742
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 431
    const-string v0, "android.app.IUiAutomationConnection"

    return-object v0
.end method

.method public greylist-max-o getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 610
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 611
    sget-object v3, Landroid/view/WindowAnimationFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowAnimationFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 614
    .local v2, "_result":Landroid/view/WindowAnimationFrameStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    nop

    .line 617
    return-object v2

    .line 614
    .end local v2    # "_result":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    throw v2
.end method

.method public greylist-max-o getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 576
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 579
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 580
    sget-object v3, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowContentFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 583
    .local v2, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    nop

    .line 586
    return-object v2

    .line 583
    .end local v2    # "_result":Landroid/view/WindowContentFrameStats;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    throw v2
.end method

.method public greylist-max-o grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 646
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    nop

    .line 652
    return-void

    .line 649
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v2
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;ZZ)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z
    .param p3, "waitForAnimations"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 470
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 471
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 472
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 473
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 474
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 478
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    nop

    .line 481
    return v2

    .line 478
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v2
.end method

.method public greylist-max-o revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 663
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    nop

    .line 669
    return-void

    .line 666
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    throw v2
.end method

.method public greylist-max-o setRotation(I)Z
    .locals 5
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 507
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 511
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return v2

    .line 511
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v2
.end method

.method public greylist-max-o shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 705
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    nop

    .line 711
    return-void

    .line 709
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    throw v1
.end method

.method public blacklist syncInputTransactions(Z)V
    .locals 5
    .param p1, "waitForAnimations"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 490
    iget-object v2, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 491
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    nop

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw v2
.end method

.method public blacklist takeScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "crop"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 524
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 525
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 526
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 529
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    nop

    .line 532
    return-object v2

    .line 529
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw v2
.end method

.method public blacklist takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IUiAutomationConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 541
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 542
    iget-object v3, p0, Landroid/app/IUiAutomationConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 543
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 544
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 547
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    nop

    .line 550
    return-object v2

    .line 547
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    throw v2
.end method
