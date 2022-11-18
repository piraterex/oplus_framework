.class Landroid/permission/IPermissionManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPermissionManager.java"

# interfaces
.implements Landroid/permission/IPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionManager$Stub;
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

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p1, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 653
    return-void
.end method


# virtual methods
.method public blacklist addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 891
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 892
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 895
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    nop

    .line 898
    return v2

    .line 895
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    throw v2
.end method

.method public blacklist addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 836
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 837
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    nop

    .line 843
    return-void

    .line 840
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw v2
.end method

.method public blacklist addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 5
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 741
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 745
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 747
    iget-object v3, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 748
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 752
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    nop

    .line 755
    return v2

    .line 752
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 656
    iget-object v0, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 671
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 672
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 675
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    nop

    .line 678
    return-object v2

    .line 675
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    throw v2
.end method

.method public blacklist getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
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

    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 870
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 874
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 876
    nop

    .line 877
    return-object v2

    .line 874
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 876
    throw v2
.end method

.method public blacklist getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1092
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1096
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1098
    nop

    .line 1099
    return-object v2

    .line 1096
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1098
    throw v2
.end method

.method public blacklist getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    .line 1067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1068
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1071
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1074
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1075
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1078
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    nop

    .line 1081
    return-object v2

    .line 1078
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 660
    const-string v0, "android.permission.IPermissionManager"

    return-object v0
.end method

.method public blacklist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 783
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 787
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    nop

    .line 790
    return v2

    .line 787
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    throw v2
.end method

.method public blacklist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 690
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 691
    sget-object v3, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 694
    .local v2, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 696
    nop

    .line 697
    return-object v2

    .line 694
    .end local v2    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 696
    throw v2
.end method

.method public blacklist getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 710
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 711
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 714
    .local v2, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    nop

    .line 717
    return-object v2

    .line 714
    .end local v2    # "_result":Landroid/content/pm/PermissionInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    throw v2
.end method

.method public blacklist getSplitPermissions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1015
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1020
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1021
    sget-object v3, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1024
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    nop

    .line 1027
    return-object v2

    .line 1024
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    throw v2
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 926
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 931
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    nop

    .line 937
    return-void

    .line 934
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    throw v2
.end method

.method public blacklist isAutoRevokeExempted(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1131
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1135
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1137
    nop

    .line 1138
    return v2

    .line 1135
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1137
    throw v2
.end method

.method public blacklist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1003
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1007
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    nop

    .line 1010
    return v2

    .line 1007
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    throw v2
.end method

.method public blacklist isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z
    .locals 5
    .param p1, "source"    # Landroid/content/AttributionSourceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1163
    iget-object v3, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1164
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1168
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    nop

    .line 1171
    return v2

    .line 1168
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    throw v2
.end method

.method public blacklist queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 729
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 730
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 733
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    nop

    .line 736
    return-object v2

    .line 733
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    throw v2
.end method

.method public blacklist registerAttributionSource(Landroid/content/AttributionSourceState;)V
    .locals 5
    .param p1, "source"    # Landroid/content/AttributionSourceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1146
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1147
    iget-object v3, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1148
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    nop

    .line 1154
    return-void

    .line 1151
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    throw v2
.end method

.method public blacklist removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 906
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 916
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 918
    nop

    .line 919
    return v2

    .line 916
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 918
    throw v2
.end method

.method public blacklist removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 851
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 852
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 857
    nop

    .line 858
    return-void

    .line 855
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 857
    throw v2
.end method

.method public blacklist removePermission(Ljava/lang/String;)V
    .locals 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 765
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    nop

    .line 771
    return-void

    .line 768
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    throw v2
.end method

.method public blacklist revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 965
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    nop

    .line 971
    return-void

    .line 968
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw v2
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 948
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 949
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    nop

    .line 955
    return-void

    .line 952
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    throw v2
.end method

.method public blacklist setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exempted"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1112
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1116
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1118
    nop

    .line 1119
    return v2

    .line 1116
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1118
    throw v2
.end method

.method public blacklist shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 983
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 987
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 989
    nop

    .line 990
    return v2

    .line 987
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 989
    throw v2
.end method

.method public blacklist startOneTimePermissionSession(Ljava/lang/String;IJJII)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeout"    # J
    .param p5, "revokeAfterKilledDelay"    # J
    .param p7, "importanceToResetTimer"    # I
    .param p8, "importanceToKeepSessionAlive"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1038
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1039
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1042
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    nop

    .line 1048
    return-void

    .line 1045
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw v2
.end method

.method public blacklist stopOneTimePermissionSession(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1058
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    nop

    .line 1064
    return-void

    .line 1061
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw v2
.end method

.method public blacklist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 803
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 805
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    nop

    .line 811
    return-void

    .line 808
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    throw v2
.end method

.method public blacklist updatePermissionFlagsForAllApps(III)V
    .locals 5
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 817
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 822
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    nop

    .line 828
    return-void

    .line 825
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v2
.end method
