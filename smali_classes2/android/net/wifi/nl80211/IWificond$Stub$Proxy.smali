.class Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWificond$Stub;
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

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 418
    return-void
.end method


# virtual methods
.method public blacklist GetApInterfaces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

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

    .line 544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 546
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 550
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    nop

    .line 553
    return-object v2

    .line 550
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw v2
.end method

.method public blacklist GetClientInterfaces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 528
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 532
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    nop

    .line 535
    return-object v2

    .line 532
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    throw v2
.end method

.method public blacklist RegisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 661
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 663
    iget-object v1, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
    nop

    .line 668
    return-void

    .line 666
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
    throw v1
.end method

.method public blacklist UnregisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 681
    iget-object v1, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    nop

    .line 686
    return-void

    .line 684
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;
    .locals 5
    .param p1, "iface_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 437
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/nl80211/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 441
    .local v2, "_result":Landroid/net/wifi/nl80211/IApInterface;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    nop

    .line 444
    return-object v2

    .line 441
    .end local v2    # "_result":Landroid/net/wifi/nl80211/IApInterface;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    throw v2
.end method

.method public blacklist createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;
    .locals 5
    .param p1, "iface_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 456
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 460
    .local v2, "_result":Landroid/net/wifi/nl80211/IClientInterface;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    nop

    .line 463
    return-object v2

    .line 460
    .end local v2    # "_result":Landroid/net/wifi/nl80211/IClientInterface;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw v2
.end method

.method public blacklist getAvailable2gChannels()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 563
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 565
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 569
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    nop

    .line 572
    return-object v2

    .line 569
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    throw v2
.end method

.method public blacklist getAvailable5gNonDFSChannels()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 588
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    nop

    .line 591
    return-object v2

    .line 588
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v2
.end method

.method public blacklist getAvailable60gChannels()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 642
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 646
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    nop

    .line 649
    return-object v2

    .line 646
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    throw v2
.end method

.method public blacklist getAvailable6gChannels()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 623
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 627
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    nop

    .line 630
    return-object v2

    .line 627
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    throw v2
.end method

.method public blacklist getAvailableDFSChannels()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 604
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 608
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    nop

    .line 611
    return-object v2

    .line 608
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw v2
.end method

.method public blacklist getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .locals 5
    .param p1, "iface_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 733
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 734
    sget-object v3, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 737
    .local v2, "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    nop

    .line 740
    return-object v2

    .line 737
    .end local v2    # "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 425
    const-string v0, "android.net.wifi.nl80211.IWificond"

    return-object v0
.end method

.method public blacklist notifyCountryCodeChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    nop

    .line 754
    return-void

    .line 752
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    throw v1
.end method

.method public blacklist registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/net/wifi/nl80211/IWificondEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 699
    iget-object v1, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v1
.end method

.method public blacklist tearDownApInterface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "iface_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 479
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    nop

    .line 482
    return v2

    .line 479
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v2
.end method

.method public blacklist tearDownClientInterface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "iface_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 494
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 498
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    nop

    .line 501
    return v2

    .line 498
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw v2
.end method

.method public blacklist tearDownInterfaces()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 512
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    nop

    .line 518
    return-void

    .line 515
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    throw v2
.end method

.method public blacklist unregisterWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/net/wifi/nl80211/IWificondEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 717
    iget-object v1, p0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return-void

    .line 720
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v1
.end method
