.class Landroid/hardware/ICameraService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService$Stub;
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

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 552
    return-void
.end method


# virtual methods
.method public greylist-max-o addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;
    .locals 5
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 666
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 667
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 668
    sget-object v3, Landroid/hardware/CameraStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/CameraStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 671
    .local v2, "_result":[Landroid/hardware/CameraStatus;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    nop

    .line 674
    return-object v2

    .line 671
    .end local v2    # "_result":[Landroid/hardware/CameraStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 555
    iget-object v0, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist connect(Landroid/hardware/ICameraClient;ILjava/lang/String;III)Landroid/hardware/ICamera;
    .locals 5
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "clientUid"    # I
    .param p5, "clientPid"    # I
    .param p6, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 614
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ICamera$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICamera;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 618
    .local v2, "_result":Landroid/hardware/ICamera;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    nop

    .line 621
    return-object v2

    .line 618
    .end local v2    # "_result":Landroid/hardware/ICamera;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    throw v2
.end method

.method public blacklist connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 5
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "clientUid"    # I
    .param p6, "oomScoreOffset"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 635
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 642
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 646
    .local v2, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    nop

    .line 649
    return-object v2

    .line 646
    .end local v2    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    throw v2
.end method

.method public blacklist getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 750
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 754
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 755
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 758
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    nop

    .line 761
    return-object v2

    .line 758
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw v2
.end method

.method public greylist-max-o getCameraInfo(I)Landroid/hardware/CameraInfo;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 590
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 591
    sget-object v3, Landroid/hardware/CameraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/CameraInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 594
    .local v2, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    nop

    .line 597
    return-object v2

    .line 594
    .end local v2    # "_result":Landroid/hardware/CameraInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    throw v2
.end method

.method public greylist-max-o getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 799
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 800
    sget-object v3, Landroid/hardware/camera2/params/VendorTagDescriptorCache;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 803
    .local v2, "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    nop

    .line 806
    return-object v2

    .line 803
    .end local v2    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v2
.end method

.method public greylist-max-o getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 776
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 777
    sget-object v3, Landroid/hardware/camera2/params/VendorTagDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/VendorTagDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 780
    .local v2, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    nop

    .line 783
    return-object v2

    .line 780
    .end local v2    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    throw v2
.end method

.method public blacklist getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 680
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 685
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 686
    sget-object v3, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 689
    .local v2, "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    nop

    .line 692
    return-object v2

    .line 689
    .end local v2    # "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 559
    const-string v0, "android.hardware.ICameraService"

    return-object v0
.end method

.method public greylist-max-o getLegacyParameters(I)Ljava/lang/String;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 818
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 819
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 822
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    nop

    .line 825
    return-object v2

    .line 822
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    throw v2
.end method

.method public greylist-max-o getNumberOfCameras(I)I
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 575
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    nop

    .line 578
    return v2

    .line 575
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v2
.end method

.method public blacklist getTorchStrengthLevel(Ljava/lang/String;)I
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 931
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 934
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 938
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    nop

    .line 941
    return v2

    .line 938
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    throw v2
.end method

.method public blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "CameraInjectionCallback"    # Landroid/hardware/camera2/ICameraInjectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 878
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 879
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/ICameraInjectionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 883
    .local v2, "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    nop

    .line 886
    return-object v2

    .line 883
    .end local v2    # "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    throw v2
.end method

.method public blacklist isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z
    .locals 5
    .param p1, "sessions"    # [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 712
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-object v3, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 715
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 719
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return v2

    .line 719
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v2
.end method

.method public blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 857
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 861
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    nop

    .line 864
    return v2

    .line 861
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    throw v2
.end method

.method public blacklist notifyDeviceStateChange(J)V
    .locals 5
    .param p1, "newState"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 987
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.ICameraService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 989
    iget-object v1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    nop

    .line 994
    return-void

    .line 992
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    throw v1
.end method

.method public blacklist notifyDisplayConfigurationChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 966
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.ICameraService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    nop

    .line 972
    return-void

    .line 970
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    throw v1
.end method

.method public greylist-max-o notifySystemEvent(I[I)V
    .locals 5
    .param p1, "eventId"    # I
    .param p2, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 948
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.ICameraService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 951
    iget-object v1, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 955
    nop

    .line 956
    return-void

    .line 954
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 955
    throw v1
.end method

.method public greylist-max-o removeListener(Landroid/hardware/ICameraServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 732
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 733
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    nop

    .line 739
    return-void

    .line 736
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    throw v2
.end method

.method public greylist-max-o setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 896
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 897
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 898
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    nop

    .line 904
    return-void

    .line 901
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    throw v2
.end method

.method public greylist-max-o supportsCameraApi(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 838
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 842
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    nop

    .line 845
    return v2

    .line 842
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    throw v2
.end method

.method public blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "strengthLevel"    # I
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.ICameraService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 916
    iget-object v2, p0, Landroid/hardware/ICameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 917
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    nop

    .line 923
    return-void

    .line 920
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    throw v2
.end method
