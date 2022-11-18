.class Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager$Stub;
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

    .line 6063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6064
    iput-object p1, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6065
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeDeviceCompliant()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12020
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12021
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12024
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12026
    nop

    .line 12027
    return-void

    .line 12024
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12026
    throw v2
.end method

.method public blacklist acknowledgeNewUserDisclaimer(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8975
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8976
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8979
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8981
    nop

    .line 8982
    return-void

    .line 8979
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8981
    throw v2
.end method

.method public greylist-max-o addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8484
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8485
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8487
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8488
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8491
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8493
    nop

    .line 8494
    return-void

    .line 8491
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8493
    throw v2
.end method

.method public greylist-max-o addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9712
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9714
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xca

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9715
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9716
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9719
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9721
    nop

    .line 9722
    return v2

    .line 9719
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9721
    throw v2
.end method

.method public greylist-max-o addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11389
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11390
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11391
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x128

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11392
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11393
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11396
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11398
    nop

    .line 11399
    return v2

    .line 11396
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11398
    throw v2
.end method

.method public greylist-max-o addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8270
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8271
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8272
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8273
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8274
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8277
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8279
    nop

    .line 8280
    return-void

    .line 8277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8279
    throw v2
.end method

.method public greylist-max-o approveCaCert(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7904
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7905
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7907
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7910
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7912
    nop

    .line 7913
    return v2

    .line 7910
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7912
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 6068
    iget-object v0, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "service"    # Landroid/content/Intent;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10946
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10947
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10948
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10949
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10950
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10951
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10952
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 10953
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x110

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10954
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10955
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10958
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10960
    nop

    .line 10961
    return v2

    .line 10958
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10960
    throw v2
.end method

.method public blacklist canAdminGrantSensorsPermissionsForUser(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12240
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x158

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12242
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12245
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12247
    nop

    .line 12248
    return v2

    .line 12245
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12247
    throw v2
.end method

.method public blacklist canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12053
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12055
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12058
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12060
    nop

    .line 12061
    return v2

    .line 12058
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12060
    throw v2
.end method

.method public blacklist canUsbDataSignalingBeDisabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12309
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12310
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12311
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12314
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12316
    nop

    .line 12317
    return v2

    .line 12314
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12316
    throw v2
.end method

.method public blacklist checkDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7735
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7736
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7737
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7740
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7742
    nop

    .line 7743
    return v2

    .line 7740
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7742
    throw v2
.end method

.method public blacklist checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10170
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10175
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10177
    nop

    .line 10178
    return v2

    .line 10175
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10177
    throw v2
.end method

.method public greylist-max-o choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "aliasCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8053
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8054
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8055
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8056
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8057
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8060
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8062
    nop

    .line 8063
    return-void

    .line 8060
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8062
    throw v2
.end method

.method public greylist-max-o clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11167
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11169
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11170
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11176
    nop

    .line 11177
    return-void

    .line 11174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11176
    throw v2
.end method

.method public greylist-max-o clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8501
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8502
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8503
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8506
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8508
    nop

    .line 8509
    return-void

    .line 8506
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8508
    throw v2
.end method

.method public greylist-max-o clearDeviceOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7528
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7529
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7532
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7534
    nop

    .line 7535
    return-void

    .line 7532
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7534
    throw v2
.end method

.method public blacklist clearOrganizationIdForUser(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10424
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10425
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10428
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10430
    nop

    .line 10431
    return-void

    .line 10428
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10430
    throw v2
.end method

.method public greylist-max-o clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8287
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8289
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8290
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8293
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8295
    nop

    .line 8296
    return-void

    .line 8293
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8295
    throw v2
.end method

.method public greylist-max-o clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7682
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7683
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7684
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7687
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7689
    nop

    .line 7690
    return-void

    .line 7687
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7689
    throw v2
.end method

.method public greylist-max-o clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11072
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11075
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11076
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11077
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x117

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11078
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11079
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11082
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11084
    nop

    .line 11085
    return v2

    .line 11082
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11084
    throw v2
.end method

.method public greylist-max-o clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9967
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9970
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9971
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9974
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9976
    nop

    .line 9977
    return-void

    .line 9974
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9976
    throw v2
.end method

.method public greylist-max-o createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8727
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8728
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8729
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8732
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8734
    nop

    .line 8735
    return-object v2

    .line 8732
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8734
    throw v2
.end method

.method public greylist-max-o createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8806
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8808
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8809
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8810
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8811
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8812
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8813
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8816
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8818
    nop

    .line 8819
    return-object v2

    .line 8816
    .end local v2    # "_result":Landroid/os/UserHandle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8818
    throw v2
.end method

.method public blacklist createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 5
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12139
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12141
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x152

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12142
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12143
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12146
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12148
    nop

    .line 12149
    return-object v2

    .line 12146
    .end local v2    # "_result":Landroid/os/UserHandle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12148
    throw v2
.end method

.method public greylist-max-o enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9004
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9006
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9007
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9008
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9009
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9010
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9011
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9014
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9016
    nop

    .line 9017
    return-void

    .line 9014
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9016
    throw v2
.end method

.method public greylist-max-o enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9021
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9024
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9025
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9027
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9028
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9029
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9033
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9035
    nop

    .line 9036
    return v2

    .line 9033
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9035
    throw v2
.end method

.method public greylist-max-o enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7885
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7887
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7888
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7891
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7893
    nop

    .line 7894
    return-void

    .line 7891
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7893
    throw v2
.end method

.method public blacklist finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12173
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12174
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12175
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x154

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12176
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12179
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12181
    nop

    .line 12182
    return-void

    .line 12179
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12181
    throw v2
.end method

.method public blacklist forceNetworkLogs()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10726
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x103

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10727
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10728
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 10731
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10733
    nop

    .line 10734
    return-wide v2

    .line 10731
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10733
    throw v2
.end method

.method public greylist-max-o forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7312
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7314
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7315
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7318
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7320
    nop

    .line 7321
    return-void

    .line 7318
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7320
    throw v2
.end method

.method public greylist-max-o forceSecurityLogs()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10743
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x104

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10744
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10745
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 10748
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10750
    nop

    .line 10751
    return-wide v2

    .line 10748
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10750
    throw v2
.end method

.method public blacklist forceUpdateUserSetupComplete(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10841
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10842
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10845
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10847
    nop

    .line 10848
    return-void

    .line 10845
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10847
    throw v2
.end method

.method public greylist-max-o generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySpec"    # Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .param p5, "idAttestationFlags"    # I
    .param p6, "attestationChain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8005
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8007
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8008
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8009
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8010
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8011
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8012
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 8013
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 8014
    invoke-virtual {p6, v1}, Landroid/security/keymaster/KeymasterCertificateChain;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8018
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8020
    nop

    .line 8021
    return v3

    .line 8018
    .end local v3    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8020
    throw v2
.end method

.method public greylist-max-o getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9079
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9083
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9085
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9088
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9090
    nop

    .line 9091
    return-object v2

    .line 9088
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9090
    throw v2
.end method

.method public blacklist getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9102
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9103
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9104
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9107
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9109
    nop

    .line 9110
    return-object v2

    .line 9107
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9109
    throw v2
.end method

.method public greylist-max-o getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7244
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7245
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7246
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7249
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7251
    nop

    .line 7252
    return-object v2

    .line 7249
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7251
    throw v2
.end method

.method public greylist-max-o getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 10594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10599
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10600
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10601
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10602
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10605
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10607
    nop

    .line 10608
    return-object v2

    .line 10605
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10607
    throw v2
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(IZ)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6599
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6600
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6601
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6604
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6606
    nop

    .line 6607
    return v2

    .line 6604
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6606
    throw v2
.end method

.method public blacklist getAllCrossProfilePackages()Ljava/util/List;
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

    .line 11709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11714
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11715
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11716
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11719
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11721
    nop

    .line 11722
    return-object v2

    .line 11719
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11721
    throw v2
.end method

.method public blacklist getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 8248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8253
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8254
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8255
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8256
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8259
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8261
    nop

    .line 8262
    return-object v2

    .line 8259
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8261
    throw v2
.end method

.method public greylist-max-o getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8181
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8182
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8183
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8184
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8187
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8189
    nop

    .line 8190
    return-object v2

    .line 8187
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8189
    throw v2
.end method

.method public blacklist getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8195
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8200
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8201
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8202
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8205
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8207
    nop

    .line 8208
    return-object v2

    .line 8205
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8207
    throw v2
.end method

.method public greylist-max-o getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8339
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8341
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8342
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8343
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8344
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8347
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8349
    nop

    .line 8350
    return-object v2

    .line 8347
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8349
    throw v2
.end method

.method public greylist-max-o getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8378
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8379
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8381
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8384
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8386
    nop

    .line 8387
    return-object v2

    .line 8384
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8386
    throw v2
.end method

.method public blacklist getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9817
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9818
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9819
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9820
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9823
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9825
    nop

    .line 9826
    return v2

    .line 9823
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9825
    throw v2
.end method

.method public greylist-max-o getAutoTimeRequired()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9784
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9785
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9786
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9789
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9791
    nop

    .line 9792
    return v2

    .line 9789
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9791
    throw v2
.end method

.method public blacklist getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9851
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9852
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9853
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9854
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9857
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9859
    nop

    .line 9860
    return v2

    .line 9857
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9859
    throw v2
.end method

.method public greylist-max-o getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10970
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10971
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x111

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10972
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10973
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10976
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10978
    nop

    .line 10979
    return-object v2

    .line 10976
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10978
    throw v2
.end method

.method public greylist-max-o getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9637
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9638
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9639
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9640
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9643
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9645
    nop

    .line 9646
    return v2

    .line 9643
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9645
    throw v2
.end method

.method public greylist-max-o getBluetoothContactSharingDisabledForUser(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9651
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9656
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9657
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9658
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9661
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9663
    nop

    .line 9664
    return v2

    .line 9661
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9663
    throw v2
.end method

.method public blacklist getCameraDisabled(Landroid/content/ComponentName;IZ)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7047
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7048
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7049
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7050
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7051
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7052
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7055
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7057
    nop

    .line 7058
    return v2

    .line 7055
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7057
    throw v2
.end method

.method public greylist-max-o getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8142
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8143
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8144
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8145
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8148
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8150
    nop

    .line 8151
    return-object v2

    .line 8148
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8150
    throw v2
.end method

.method public blacklist getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 11620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11625
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11626
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x135

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11627
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11628
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11631
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11633
    nop

    .line 11634
    return-object v2

    .line 11631
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11633
    throw v2
.end method

.method public blacklist getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
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

    .line 11657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11663
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x137

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11664
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11665
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11668
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11670
    nop

    .line 11671
    return-object v2

    .line 11668
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11670
    throw v2
.end method

.method public greylist-max-o getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9514
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9515
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9516
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9517
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9520
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9522
    nop

    .line 9523
    return v2

    .line 9520
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9522
    throw v2
.end method

.method public greylist-max-o getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9533
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9534
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9535
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9538
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9540
    nop

    .line 9541
    return v2

    .line 9538
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9540
    throw v2
.end method

.method public greylist-max-o getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9566
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9567
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9568
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9569
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9572
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9574
    nop

    .line 9575
    return v2

    .line 9572
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9574
    throw v2
.end method

.method public greylist-max-o getCrossProfileContactsSearchDisabledForUser(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9585
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9586
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9587
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9590
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9592
    nop

    .line 9593
    return v2

    .line 9590
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9592
    throw v2
.end method

.method public blacklist getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 11691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11696
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11697
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x139

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11699
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11702
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11704
    nop

    .line 11705
    return-object v2

    .line 11702
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11704
    throw v2
.end method

.method public greylist-max-o getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 9745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9750
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9751
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9752
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9753
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9756
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9758
    nop

    .line 9759
    return-object v2

    .line 9756
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9758
    throw v2
.end method

.method public greylist-max-o getCurrentFailedPasswordAttempts(IZ)I
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6635
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6636
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6637
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6641
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6643
    nop

    .line 6644
    return v2

    .line 6641
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6643
    throw v2
.end method

.method public blacklist getDefaultCrossProfilePackages()Ljava/util/List;
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

    .line 11726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11731
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11732
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11733
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11736
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11738
    nop

    .line 11739
    return-object v2

    .line 11736
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11738
    throw v2
.end method

.method public greylist-max-o getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
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

    .line 8102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8107
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8109
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8110
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8111
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8114
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8116
    nop

    .line 8117
    return-object v2

    .line 8114
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8116
    throw v2
.end method

.method public greylist-max-o getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
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

    .line 8083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8087
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8088
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8090
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8091
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8092
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8095
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8097
    nop

    .line 8098
    return-object v2

    .line 8095
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8097
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .locals 5
    .param p1, "callingUserOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7477
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7478
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7479
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7482
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7484
    nop

    .line 7485
    return-object v2

    .line 7482
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7484
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7774
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7776
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7779
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7781
    nop

    .line 7782
    return-object v2

    .line 7779
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7781
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7511
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7512
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7513
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7516
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7518
    nop

    .line 7519
    return-object v2

    .line 7516
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7518
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10515
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10516
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10517
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10520
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10522
    nop

    .line 10523
    return-object v2

    .line 10520
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10522
    throw v2
.end method

.method public blacklist getDeviceOwnerType(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12206
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12207
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x156

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12208
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12212
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12214
    nop

    .line 12215
    return v2

    .line 12212
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12214
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerUserId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7543
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7544
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7545
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7548
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7550
    nop

    .line 7551
    return v2

    .line 7548
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7550
    throw v2
.end method

.method public greylist-max-o getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
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

    .line 11213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11218
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11219
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11220
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11221
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11223
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11226
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11228
    nop

    .line 11229
    return-object v2

    .line 11226
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11228
    throw v2
.end method

.method public greylist-max-o getDoNotAskCredentialsOnBoot()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10023
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10024
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10025
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10028
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10030
    nop

    .line 10031
    return v2

    .line 10028
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10030
    throw v2
.end method

.method public blacklist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 5
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12438
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12439
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12440
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x164

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12441
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12442
    sget-object v3, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ParcelableResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12445
    .local v2, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12447
    nop

    .line 12448
    return-object v2

    .line 12445
    .end local v2    # "_result":Landroid/app/admin/ParcelableResource;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12447
    throw v2
.end method

.method public greylist-max-o getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11334
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11335
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x125

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11336
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11337
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11340
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11342
    nop

    .line 11343
    return-object v2

    .line 11340
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11342
    throw v2
.end method

.method public blacklist getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8745
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8746
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8747
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8748
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8751
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8753
    nop

    .line 8754
    return-object v2

    .line 8751
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8753
    throw v2
.end method

.method public blacklist getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12105
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x150

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12107
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12110
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12112
    nop

    .line 12113
    return-object v2

    .line 12110
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12112
    throw v2
.end method

.method public blacklist getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6851
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6852
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6853
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6854
    sget-object v3, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FactoryResetProtectionPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6857
    .local v2, "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6859
    nop

    .line 6860
    return-object v2

    .line 6857
    .end local v2    # "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6859
    throw v2
.end method

.method public greylist-max-o getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9885
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9886
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9888
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9891
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9893
    nop

    .line 9894
    return v2

    .line 9891
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9893
    throw v2
.end method

.method public blacklist getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11557
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11558
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x131

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11559
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11560
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11563
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11565
    nop

    .line 11566
    return-object v2

    .line 11563
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11565
    throw v2
.end method

.method public blacklist getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11539
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11540
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x130

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11541
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11542
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11545
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11547
    nop

    .line 11548
    return v2

    .line 11545
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11547
    throw v2
.end method

.method public greylist-max-o getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6922
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6924
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6927
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6929
    nop

    .line 6930
    return-object v2

    .line 6927
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6929
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 6072
    const-string v0, "android.app.admin.IDevicePolicyManager"

    return-object v0
.end method

.method public greylist-max-o getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
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

    .line 10199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10204
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10206
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10207
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10208
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10211
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10213
    nop

    .line 10214
    return-object v2

    .line 10211
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10213
    throw v2
.end method

.method public blacklist getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11828
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11829
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x140

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11830
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11831
    sget-object v3, Landroid/app/admin/ParcelableGranteeMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ParcelableGranteeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11834
    .local v2, "_result":Landroid/app/admin/ParcelableGranteeMap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11836
    nop

    .line 11837
    return-object v2

    .line 11834
    .end local v2    # "_result":Landroid/app/admin/ParcelableGranteeMap;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11836
    throw v2
.end method

.method public greylist-max-o getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7187
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7190
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7191
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7195
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7197
    nop

    .line 7198
    return v2

    .line 7195
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7197
    throw v2
.end method

.method public greylist-max-o getLastBugReportRequestTime()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11023
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x114

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11024
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11025
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 11028
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11030
    nop

    .line 11031
    return-wide v2

    .line 11028
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11030
    throw v2
.end method

.method public greylist-max-o getLastNetworkLogRetrievalTime()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11039
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11040
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x115

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11041
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11042
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 11045
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11047
    nop

    .line 11048
    return-wide v2

    .line 11045
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11047
    throw v2
.end method

.method public greylist-max-o getLastSecurityLogRetrievalTime()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11006
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x113

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11007
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11008
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 11011
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11013
    nop

    .line 11014
    return-wide v2

    .line 11011
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11013
    throw v2
.end method

.method public greylist-max-o getLockTaskFeatures(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9253
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9254
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9255
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9259
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9261
    nop

    .line 9262
    return v2

    .line 9259
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9261
    throw v2
.end method

.method public greylist-max-o getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9201
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9202
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xad

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9203
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9204
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9207
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9209
    nop

    .line 9210
    return-object v2

    .line 9207
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9209
    throw v2
.end method

.method public blacklist getLogoutUserId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8940
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8941
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8945
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8947
    nop

    .line 8948
    return v2

    .line 8945
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8947
    throw v2
.end method

.method public greylist-max-o getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10336
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10337
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xed

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10338
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10339
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10342
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10344
    nop

    .line 10345
    return-object v2

    .line 10342
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10344
    throw v2
.end method

.method public greylist-max-o getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10373
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10375
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xef

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10376
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10377
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10380
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10382
    nop

    .line 10383
    return-object v2

    .line 10380
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10382
    throw v2
.end method

.method public blacklist getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11986
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11987
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11988
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x149

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11989
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11990
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 11993
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11995
    nop

    .line 11996
    return-wide v2

    .line 11993
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11995
    throw v2
.end method

.method public greylist-max-o getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6689
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6691
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6692
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6693
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6694
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6697
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6699
    nop

    .line 6700
    return v2

    .line 6697
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6699
    throw v2
.end method

.method public greylist-max-o getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6741
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6745
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6747
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6748
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6749
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6750
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6753
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6755
    nop

    .line 6756
    return-wide v2

    .line 6753
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6755
    throw v2
.end method

.method public greylist-max-o getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 11366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11371
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11372
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x127

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11373
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11374
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11377
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11379
    nop

    .line 11380
    return-object v2

    .line 11377
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11379
    throw v2
.end method

.method public blacklist getMinimumRequiredWifiSecurityLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12341
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12342
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12346
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12348
    nop

    .line 12349
    return v2

    .line 12346
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12348
    throw v2
.end method

.method public blacklist getNearbyAppStreamingPolicy(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7153
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7154
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7158
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7160
    nop

    .line 7161
    return v2

    .line 7158
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7160
    throw v2
.end method

.method public blacklist getNearbyNotificationStreamingPolicy(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7120
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7121
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7122
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7125
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7127
    nop

    .line 7128
    return v2

    .line 7125
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7127
    throw v2
.end method

.method public greylist-max-o getOrganizationColor(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10439
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10440
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10441
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10445
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10447
    nop

    .line 10448
    return v2

    .line 10445
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10447
    throw v2
.end method

.method public greylist-max-o getOrganizationColorForUser(I)I
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10458
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10460
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10463
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10465
    nop

    .line 10466
    return v2

    .line 10463
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10465
    throw v2
.end method

.method public greylist-max-o getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10497
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10498
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10499
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10500
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10503
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10505
    nop

    .line 10506
    return-object v2

    .line 10503
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10505
    throw v2
.end method

.method public greylist-max-o getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10533
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10534
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10535
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10538
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10540
    nop

    .line 10541
    return-object v2

    .line 10538
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10540
    throw v2
.end method

.method public greylist-max-o getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11447
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11448
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11449
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11450
    sget-object v3, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11453
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11455
    nop

    .line 11456
    return-object v2

    .line 11453
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11455
    throw v2
.end method

.method public greylist-max-o getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11150
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11151
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11152
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11153
    sget-object v3, Landroid/content/pm/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/StringParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11156
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11158
    nop

    .line 11159
    return-object v2

    .line 11156
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11158
    throw v2
.end method

.method public blacklist getPasswordComplexity(Z)I
    .locals 5
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6546
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6547
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6548
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6551
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6553
    nop

    .line 6554
    return v2

    .line 6551
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6553
    throw v2
.end method

.method public greylist-max-o getPasswordExpiration(Landroid/content/ComponentName;IZ)J
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6470
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6471
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6472
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6473
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6474
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6475
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6478
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6480
    nop

    .line 6481
    return-wide v2

    .line 6478
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6480
    throw v2
.end method

.method public greylist-max-o getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6450
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6453
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6454
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6455
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6458
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6460
    nop

    .line 6461
    return-wide v2

    .line 6458
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6460
    throw v2
.end method

.method public greylist-max-o getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6413
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6416
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6417
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6421
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6423
    nop

    .line 6424
    return v2

    .line 6421
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6423
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6135
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6136
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6137
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6138
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6139
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6143
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6145
    nop

    .line 6146
    return v2

    .line 6143
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6145
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6246
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6248
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6249
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6250
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6254
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6256
    nop

    .line 6257
    return v2

    .line 6254
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6256
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6208
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6209
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6211
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6212
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6213
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6217
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6219
    nop

    .line 6220
    return v2

    .line 6217
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6219
    throw v2
.end method

.method public blacklist getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6379
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6381
    sget-object v3, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PasswordMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6384
    .local v2, "_result":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6386
    nop

    .line 6387
    return-object v2

    .line 6384
    .end local v2    # "_result":Landroid/app/admin/PasswordMetrics;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6386
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6357
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6360
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6361
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6365
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6367
    nop

    .line 6368
    return v2

    .line 6365
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6367
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6283
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6286
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6287
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6291
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6293
    nop

    .line 6294
    return v2

    .line 6291
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6293
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6320
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6323
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6328
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6330
    nop

    .line 6331
    return v2

    .line 6328
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6330
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6172
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6174
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6175
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6176
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6180
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6182
    nop

    .line 6183
    return v2

    .line 6180
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6182
    throw v2
.end method

.method public greylist-max-o getPasswordQuality(Landroid/content/ComponentName;IZ)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6094
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6097
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6098
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6099
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6100
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6101
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6102
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6106
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6108
    nop

    .line 6109
    return v2

    .line 6106
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6108
    throw v2
.end method

.method public greylist-max-o getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10055
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10056
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xde

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10057
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10058
    sget-object v3, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdateInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10061
    .local v2, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10063
    nop

    .line 10064
    return-object v2

    .line 10061
    .end local v2    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10063
    throw v2
.end method

.method public greylist-max-o getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10128
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10130
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10131
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10132
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10133
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10137
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10139
    nop

    .line 10140
    return v2

    .line 10137
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10139
    throw v2
.end method

.method public greylist-max-o getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10090
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10091
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10092
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10096
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10098
    nop

    .line 10099
    return v2

    .line 10096
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10098
    throw v2
.end method

.method public greylist-max-o getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 8531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8535
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8536
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8537
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8538
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8539
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8542
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8544
    nop

    .line 8545
    return-object v2

    .line 8542
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8544
    throw v2
.end method

.method public greylist-max-o getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
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

    .line 8549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8555
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8556
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8557
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8560
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8562
    nop

    .line 8563
    return-object v2

    .line 8560
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8562
    throw v2
.end method

.method public greylist-max-o getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 8684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8689
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8690
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8691
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8692
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8695
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8697
    nop

    .line 8698
    return-object v2

    .line 8695
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8697
    throw v2
.end method

.method public blacklist getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z)",
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

    .line 8607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8612
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8614
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8615
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8616
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8619
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8621
    nop

    .line 8622
    return-object v2

    .line 8619
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8621
    throw v2
.end method

.method public blacklist getPermittedInputMethodsAsUser(I)Ljava/util/List;
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

    .line 8626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8632
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8633
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8634
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8637
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8639
    nop

    .line 8640
    return-object v2

    .line 8637
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8639
    throw v2
.end method

.method public blacklist getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11953
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11954
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x147

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11955
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11956
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11959
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11961
    nop

    .line 11962
    return v2

    .line 11959
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11961
    throw v2
.end method

.method public blacklist getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12554
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12555
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12556
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12557
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12560
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12562
    nop

    .line 12563
    return-object v2

    .line 12560
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12562
    throw v2
.end method

.method public blacklist getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9168
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9169
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9170
    sget-object v3, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9173
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9175
    nop

    .line 9176
    return-object v2

    .line 9173
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9175
    throw v2
.end method

.method public blacklist getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7581
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7582
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7583
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7586
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7588
    nop

    .line 7589
    return-object v2

    .line 7586
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7588
    throw v2
.end method

.method public greylist-max-o getProfileOwnerName(I)Ljava/lang/String;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7635
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7636
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7637
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7640
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7642
    nop

    .line 7643
    return-object v2

    .line 7640
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7642
    throw v2
.end method

.method public blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7594
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7597
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7598
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7599
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7600
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7601
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7604
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7606
    nop

    .line 7607
    return-object v2

    .line 7604
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7606
    throw v2
.end method

.method public greylist-max-o getProfileWithMinimumFailedPasswordsForWipe(IZ)I
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6653
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6654
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6655
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6656
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6660
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6662
    nop

    .line 6663
    return v2

    .line 6660
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6662
    throw v2
.end method

.method public greylist-max-o getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7279
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7280
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7281
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7282
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7283
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7286
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7288
    nop

    .line 7289
    return-void

    .line 7286
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7288
    throw v2
.end method

.method public blacklist getRequiredPasswordComplexity(Z)I
    .locals 5
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6580
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6581
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6585
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6587
    nop

    .line 6588
    return v2

    .line 6585
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6587
    throw v2
.end method

.method public greylist-max-o getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6782
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6784
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6785
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6786
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6787
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6790
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6792
    nop

    .line 6793
    return-wide v2

    .line 6790
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6792
    throw v2
.end method

.method public greylist-max-o getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8431
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8432
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8433
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8436
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8438
    nop

    .line 8439
    return-object v2

    .line 8436
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8438
    throw v2
.end method

.method public blacklist getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7084
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7085
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7086
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7087
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7089
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7092
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7094
    nop

    .line 7095
    return v2

    .line 7092
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7094
    throw v2
.end method

.method public greylist-max-o getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8957
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8958
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8959
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8960
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8963
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8965
    nop

    .line 8966
    return-object v2

    .line 8963
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8965
    throw v2
.end method

.method public greylist-max-o getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10296
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10297
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xeb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10298
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10299
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10302
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10304
    nop

    .line 10305
    return-object v2

    .line 10302
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10304
    throw v2
.end method

.method public greylist-max-o getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10354
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10356
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xee

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10357
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10358
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10361
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10363
    nop

    .line 10364
    return-object v2

    .line 10361
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10363
    throw v2
.end method

.method public greylist-max-o getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11316
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11317
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x124

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11318
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11319
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11322
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11324
    nop

    .line 11325
    return-object v2

    .line 11322
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11324
    throw v2
.end method

.method public greylist-max-o getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6974
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6976
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6977
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6978
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6981
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6983
    nop

    .line 6984
    return v2

    .line 6981
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6983
    throw v2
.end method

.method public greylist-max-o getStorageEncryptionStatus(Ljava/lang/String;I)I
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6989
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6992
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6993
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6994
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6995
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6996
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7000
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7002
    nop

    .line 7003
    return v2

    .line 7000
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7002
    throw v2
.end method

.method public blacklist getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 5
    .param p1, "stringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12520
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x169

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12521
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12522
    sget-object v3, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ParcelableResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12525
    .local v2, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12527
    nop

    .line 12528
    return-object v2

    .line 12525
    .end local v2    # "_result":Landroid/app/admin/ParcelableResource;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12527
    throw v2
.end method

.method public greylist-max-o getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9954
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9955
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9956
    sget-object v3, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9959
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9961
    nop

    .line 9962
    return-object v2

    .line 9959
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9961
    throw v2
.end method

.method public greylist-max-o getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11255
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x121

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11256
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11257
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11260
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11262
    nop

    .line 11263
    return-object v2

    .line 11260
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11262
    throw v2
.end method

.method public greylist-max-o getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9691
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9692
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9693
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9694
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9695
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9696
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9697
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9700
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9702
    nop

    .line 9703
    return-object v2

    .line 9700
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9702
    throw v2
.end method

.method public blacklist getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
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

    .line 11896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11901
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11902
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x144

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11903
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11904
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11907
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11909
    nop

    .line 11910
    return-object v2

    .line 11907
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11909
    throw v2
.end method

.method public greylist-max-o getUserProvisioningState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10550
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10551
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10555
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10557
    nop

    .line 10558
    return v2

    .line 10555
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10557
    throw v2
.end method

.method public blacklist getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8466
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8468
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8469
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8470
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8473
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8475
    nop

    .line 8476
    return-object v2

    .line 8473
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8475
    throw v2
.end method

.method public greylist-max-o getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10241
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10242
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10243
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10244
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10247
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10249
    nop

    .line 10250
    return-object v2

    .line 10247
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10249
    throw v2
.end method

.method public blacklist getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12373
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x160

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12374
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12375
    sget-object v3, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/WifiSsidPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12378
    .local v2, "_result":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12380
    nop

    .line 12381
    return-object v2

    .line 12378
    .end local v2    # "_result":Landroid/app/admin/WifiSsidPolicy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12380
    throw v2
.end method

.method public greylist-max-o hasDeviceOwner()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7494
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7495
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7496
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7499
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7501
    nop

    .line 7502
    return v2

    .line 7499
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7501
    throw v2
.end method

.method public greylist-max-o hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7329
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7332
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7333
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7334
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7337
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7339
    nop

    .line 7340
    return v2

    .line 7337
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7339
    throw v2
.end method

.method public blacklist hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7988
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7989
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7990
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7993
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7995
    nop

    .line 7996
    return v2

    .line 7993
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7995
    throw v2
.end method

.method public blacklist hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9338
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9339
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9340
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9341
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9344
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9346
    nop

    .line 9347
    return v2

    .line 9344
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9346
    throw v2
.end method

.method public greylist-max-o hasUserSetupCompleted()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7698
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7699
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7700
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7703
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7705
    nop

    .line 7706
    return v2

    .line 7703
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7705
    throw v2
.end method

.method public greylist-max-o installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7849
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7851
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7852
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7853
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7854
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7857
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7859
    nop

    .line 7860
    return v2

    .line 7857
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7859
    throw v2
.end method

.method public greylist-max-o installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9045
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9046
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9047
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9048
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9049
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9050
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9053
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9055
    nop

    .line 9056
    return v2

    .line 9053
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9055
    throw v2
.end method

.method public greylist-max-o installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "privKeyBuffer"    # [B
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "alias"    # Ljava/lang/String;
    .param p7, "requestAccess"    # Z
    .param p8, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7941
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7943
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7944
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7945
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7946
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7947
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7948
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7949
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7950
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7951
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7954
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7956
    nop

    .line 7957
    return v2

    .line 7954
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7956
    throw v2
.end method

.method public blacklist installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "updateFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Landroid/app/admin/StartInstallingUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11591
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11592
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11593
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11594
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x133

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11595
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11598
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11600
    nop

    .line 11601
    return-void

    .line 11598
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11600
    throw v2
.end method

.method public greylist-max-o isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8572
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8573
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8574
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8575
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8576
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8577
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8580
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8582
    nop

    .line 8583
    return v2

    .line 8580
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8582
    throw v2
.end method

.method public greylist-max-o isActivePasswordSufficient(IZ)Z
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6492
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6493
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6494
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6497
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6499
    nop

    .line 6500
    return v2

    .line 6497
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6499
    throw v2
.end method

.method public blacklist isActivePasswordSufficientForDeviceRequirement()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6509
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6510
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6511
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6514
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6516
    nop

    .line 6517
    return v2

    .line 6514
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6516
    throw v2
.end method

.method public greylist-max-o isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7224
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7226
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7228
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7231
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7233
    nop

    .line 7234
    return v2

    .line 7231
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7233
    throw v2
.end method

.method public blacklist isAffiliatedUser(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10635
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10636
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10637
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10640
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10642
    nop

    .line 10643
    return v2

    .line 10640
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10642
    throw v2
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8217
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8218
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8220
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8223
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8225
    nop

    .line 8226
    return v2

    .line 8223
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8225
    throw v2
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabledForUser(I)Z
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8236
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8237
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8238
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8241
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8243
    nop

    .line 8244
    return v2

    .line 8241
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8243
    throw v2
.end method

.method public blacklist isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8785
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8786
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8787
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8788
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8789
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8790
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8791
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8794
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8796
    nop

    .line 8797
    return v2

    .line 8794
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8796
    throw v2
.end method

.method public greylist-max-o isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10872
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10873
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10874
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10875
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10878
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10880
    nop

    .line 10881
    return v2

    .line 10878
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10880
    throw v2
.end method

.method public greylist-max-o isCaCertApproved(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7923
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7924
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7925
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7926
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7929
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7931
    nop

    .line 7932
    return v2

    .line 7929
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7931
    throw v2
.end method

.method public greylist-max-o isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8397
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8398
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8399
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8402
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8404
    nop

    .line 8405
    return v2

    .line 8402
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8404
    throw v2
.end method

.method public blacklist isCallingUserAffiliated()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10617
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10618
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10619
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10622
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10624
    nop

    .line 10625
    return v2

    .line 10622
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10624
    throw v2
.end method

.method public blacklist isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11935
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11936
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x146

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11937
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11938
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11941
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11943
    nop

    .line 11944
    return v2

    .line 11941
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11943
    throw v2
.end method

.method public blacklist isComplianceAcknowledgementRequired()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12035
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12036
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12037
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12040
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12042
    nop

    .line 12043
    return v2

    .line 12040
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12042
    throw v2
.end method

.method public greylist-max-o isCurrentInputMethodSetByOwner()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11129
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11133
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11134
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11135
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11138
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11140
    nop

    .line 11141
    return v2

    .line 11138
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11140
    throw v2
.end method

.method public greylist-max-o isDeviceProvisioned()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10793
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x107

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10795
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10798
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    nop

    .line 10801
    return v2

    .line 10798
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    throw v2
.end method

.method public greylist-max-o isDeviceProvisioningConfigApplied()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10810
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x108

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10811
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10812
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10815
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10817
    nop

    .line 10818
    return v2

    .line 10815
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10817
    throw v2
.end method

.method public blacklist isDpcDownloaded()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12457
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x165

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12458
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12459
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12462
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12464
    nop

    .line 12465
    return v2

    .line 12462
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12464
    throw v2
.end method

.method public greylist-max-o isEphemeralUser(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10988
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10989
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x112

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10990
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10991
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10994
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10996
    nop

    .line 10997
    return v2

    .line 10994
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10996
    throw v2
.end method

.method public blacklist isFactoryResetProtectionPolicySupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6869
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6870
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6871
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6874
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6876
    nop

    .line 6877
    return v2

    .line 6874
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6876
    throw v2
.end method

.method public blacklist isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8645
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8649
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8651
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8652
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8653
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8654
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8655
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8658
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8660
    nop

    .line 8661
    return v2

    .line 8658
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8660
    throw v2
.end method

.method public blacklist isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11867
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11868
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x142

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11869
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11870
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11873
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11875
    nop

    .line 11876
    return v2

    .line 11873
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11875
    throw v2
.end method

.method public greylist-max-o isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9220
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9221
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9222
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9225
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9227
    nop

    .line 9228
    return v2

    .line 9225
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9227
    throw v2
.end method

.method public greylist-max-o isLogoutEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11201
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11202
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11203
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11206
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11208
    nop

    .line 11209
    return v2

    .line 11206
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11208
    throw v2
.end method

.method public blacklist isManagedKiosk()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11748
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11749
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11750
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11753
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11755
    nop

    .line 11756
    return v2

    .line 11753
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11755
    throw v2
.end method

.method public greylist-max-o isManagedProfile(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10223
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10224
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10225
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10226
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10229
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10231
    nop

    .line 10232
    return v2

    .line 10229
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10231
    throw v2
.end method

.method public greylist-max-o isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9426
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9427
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xba

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9428
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9429
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9432
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9434
    nop

    .line 9435
    return v2

    .line 9432
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9434
    throw v2
.end method

.method public greylist-max-o isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11499
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11501
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11502
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11503
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11504
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11507
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11509
    nop

    .line 11510
    return v2

    .line 11507
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11509
    throw v2
.end method

.method public blacklist isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10906
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10907
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10908
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10909
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10910
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10911
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10914
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10916
    nop

    .line 10917
    return v2

    .line 10914
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10916
    throw v2
.end method

.method public blacklist isNewUserDisclaimerAcknowledged(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8986
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8991
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8992
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8993
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8996
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8998
    nop

    .line 8999
    return v2

    .line 8996
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8998
    throw v2
.end method

.method public greylist-max-o isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8703
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8706
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8708
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8709
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8710
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8711
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8714
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8716
    nop

    .line 8717
    return v2

    .line 8714
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8716
    throw v2
.end method

.method public blacklist isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7715
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7720
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7722
    nop

    .line 7723
    return v2

    .line 7720
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7722
    throw v2
.end method

.method public greylist-max-o isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11481
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11482
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11483
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11484
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11487
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11489
    nop

    .line 11490
    return v2

    .line 11487
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11489
    throw v2
.end method

.method public blacklist isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11645
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x136

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11646
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11647
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11650
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11652
    nop

    .line 11653
    return v2

    .line 11650
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11652
    throw v2
.end method

.method public greylist-max-o isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7812
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7814
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7815
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7816
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7817
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7820
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7822
    nop

    .line 7823
    return v2

    .line 7820
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7822
    throw v2
.end method

.method public blacklist isPasswordSufficientAfterProfileUnification(II)Z
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "profileUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6527
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6528
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6529
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6530
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6533
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6535
    nop

    .line 6536
    return v2

    .line 6533
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6535
    throw v2
.end method

.method public greylist-max-o isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10151
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10152
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10153
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10156
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10158
    nop

    .line 10159
    return v2

    .line 10156
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10158
    throw v2
.end method

.method public greylist-max-o isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9903
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9905
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9907
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9910
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9912
    nop

    .line 9913
    return v2

    .line 9910
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9912
    throw v2
.end method

.method public greylist-max-o isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11090
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11094
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11095
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x118

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11096
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11097
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11100
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11102
    nop

    .line 11103
    return v2

    .line 11100
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11102
    throw v2
.end method

.method public blacklist isSafeOperation(I)Z
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12087
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12089
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12092
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12094
    nop

    .line 12095
    return v2

    .line 12092
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12094
    throw v2
.end method

.method public blacklist isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9135
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9136
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9137
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9138
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9141
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9143
    nop

    .line 9144
    return v2

    .line 9141
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9143
    throw v2
.end method

.method public blacklist isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10669
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10671
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x100

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10672
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10673
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10676
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10678
    nop

    .line 10679
    return v2

    .line 10676
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10678
    throw v2
.end method

.method public blacklist isSupervisionComponent(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7616
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7617
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7618
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7619
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7622
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7624
    nop

    .line 7625
    return v2

    .line 7622
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7624
    throw v2
.end method

.method public blacklist isUnattendedManagedKiosk()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11765
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11766
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11767
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11770
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11772
    nop

    .line 11773
    return v2

    .line 11770
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11772
    throw v2
.end method

.method public greylist-max-o isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9475
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9479
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9480
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9481
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9482
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9483
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9486
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9488
    nop

    .line 9489
    return v2

    .line 9486
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9488
    throw v2
.end method

.method public greylist-max-o isUninstallInQueue(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10761
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x105

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10762
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10763
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10766
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10768
    nop

    .line 10769
    return v2

    .line 10766
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10768
    throw v2
.end method

.method public blacklist isUsbDataSignalingEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12274
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12275
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12276
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12279
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12281
    nop

    .line 12282
    return v2

    .line 12279
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12281
    throw v2
.end method

.method public blacklist isUsbDataSignalingEnabledForUser(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12292
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12293
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12294
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12297
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12299
    nop

    .line 12300
    return v2

    .line 12297
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12299
    throw v2
.end method

.method public greylist-max-o isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6616
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6617
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6618
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6619
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6622
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6624
    nop

    .line 6625
    return v2

    .line 6622
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6624
    throw v2
.end method

.method public blacklist listForegroundAffiliatedUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12390
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x161

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12392
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12395
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12397
    nop

    .line 12398
    return-object v2

    .line 12395
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12397
    throw v2
.end method

.method public blacklist listPolicyExemptApps()Ljava/util/List;
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

    .line 7827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7832
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7833
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7834
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7837
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7839
    nop

    .line 7840
    return-object v2

    .line 7837
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7839
    throw v2
.end method

.method public greylist-max-o lockNow(IZ)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6802
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6803
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6804
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6807
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    nop

    .line 6810
    return-void

    .line 6807
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    throw v2
.end method

.method public greylist-max-o logoutUser(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8904
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8905
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8907
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8910
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8912
    nop

    .line 8913
    return v2

    .line 8910
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8912
    throw v2
.end method

.method public blacklist logoutUserInternal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8922
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8927
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8929
    nop

    .line 8930
    return v2

    .line 8927
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8929
    throw v2
.end method

.method public greylist-max-o notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9445
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9446
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9450
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9452
    nop

    .line 9453
    return-void

    .line 9450
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9452
    throw v2
.end method

.method public greylist-max-o notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/admin/SystemUpdateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10039
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10040
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10041
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10044
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10046
    nop

    .line 10047
    return-void

    .line 10044
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10046
    throw v2
.end method

.method public greylist-max-o packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7263
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7264
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7265
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7268
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7270
    nop

    .line 7271
    return v2

    .line 7268
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7270
    throw v2
.end method

.method public blacklist provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .locals 5
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12157
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12159
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x153

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12160
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12163
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12165
    nop

    .line 12166
    return-void

    .line 12163
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12165
    throw v2
.end method

.method public greylist-max-o reboot(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10258
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10259
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10260
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10263
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10265
    nop

    .line 10266
    return-void

    .line 10263
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10265
    throw v2
.end method

.method public greylist-max-o removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7296
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7298
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7299
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7302
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7304
    nop

    .line 7305
    return-void

    .line 7302
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7304
    throw v2
.end method

.method public greylist-max-o removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9731
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9733
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9734
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9735
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9738
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9740
    nop

    .line 9741
    return v2

    .line 9738
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9740
    throw v2
.end method

.method public greylist-max-o removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7962
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7965
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7966
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7969
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7970
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7971
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7974
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7976
    nop

    .line 7977
    return v2

    .line 7974
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7976
    throw v2
.end method

.method public greylist-max-o removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11428
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11429
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11430
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11431
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11432
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11435
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11437
    nop

    .line 11438
    return v2

    .line 11435
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11437
    throw v2
.end method

.method public greylist-max-o removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8828
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8829
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8830
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8831
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8832
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8835
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8837
    nop

    .line 8838
    return v2

    .line 8835
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8837
    throw v2
.end method

.method public blacklist reportFailedBiometricAttempt(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7395
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7399
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7401
    nop

    .line 7402
    return-void

    .line 7399
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7401
    throw v2
.end method

.method public greylist-max-o reportFailedPasswordAttempt(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7365
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7366
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7369
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7371
    nop

    .line 7372
    return-void

    .line 7369
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7371
    throw v2
.end method

.method public greylist-max-o reportKeyguardDismissed(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7425
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7429
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7431
    nop

    .line 7432
    return-void

    .line 7429
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7431
    throw v2
.end method

.method public greylist-max-o reportKeyguardSecured(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7440
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7441
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7444
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7446
    nop

    .line 7447
    return-void

    .line 7444
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7446
    throw v2
.end method

.method public blacklist reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .locals 5
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7348
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7350
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7351
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7354
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7356
    nop

    .line 7357
    return-void

    .line 7354
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7356
    throw v2
.end method

.method public blacklist reportSuccessfulBiometricAttempt(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7410
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7411
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7414
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7416
    nop

    .line 7417
    return-void

    .line 7414
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7416
    throw v2
.end method

.method public greylist-max-o reportSuccessfulPasswordAttempt(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7380
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7381
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7384
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7386
    nop

    .line 7387
    return-void

    .line 7384
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7386
    throw v2
.end method

.method public greylist-max-o requestBugreport(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7008
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7012
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7013
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7014
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7015
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7018
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7020
    nop

    .line 7021
    return v2

    .line 7018
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7020
    throw v2
.end method

.method public blacklist resetDefaultCrossProfileIntentFilters(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12224
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x157

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12225
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12228
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12230
    nop

    .line 12231
    return-void

    .line 12228
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12230
    throw v2
.end method

.method public blacklist resetDrawables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12417
    .local p1, "drawableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 12422
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x163

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12423
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12426
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12428
    nop

    .line 12429
    return-void

    .line 12426
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12428
    throw v2
.end method

.method public greylist-max-o resetPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6710
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6711
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6712
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6713
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6716
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6718
    nop

    .line 6719
    return v2

    .line 6716
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6718
    throw v2
.end method

.method public greylist-max-o resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11112
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11113
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11114
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11115
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11116
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x119

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11117
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11118
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11121
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11123
    nop

    .line 11124
    return v2

    .line 11121
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11123
    throw v2
.end method

.method public blacklist resetStrings(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12499
    .local p1, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 12504
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x168

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12505
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12508
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12510
    nop

    .line 12511
    return-void

    .line 12508
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12510
    throw v2
.end method

.method public blacklist retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10926
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10927
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10928
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 10929
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10930
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10931
    sget-object v3, Landroid/app/admin/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10934
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10936
    nop

    .line 10937
    return-object v2

    .line 10934
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10936
    throw v2
.end method

.method public blacklist retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10703
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10706
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10707
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10708
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10709
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x102

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10710
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10711
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10714
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10716
    nop

    .line 10717
    return-object v2

    .line 10714
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10716
    throw v2
.end method

.method public blacklist retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10684
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10687
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10688
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10689
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10690
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x101

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10691
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10692
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10695
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10697
    nop

    .line 10698
    return-object v2

    .line 10695
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10697
    throw v2
.end method

.method public blacklist sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6881
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6885
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6886
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6890
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6892
    nop

    .line 6893
    return-void

    .line 6890
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6892
    throw v2
.end method

.method public blacklist setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9064
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9066
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9067
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9068
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9069
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9072
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9074
    nop

    .line 9075
    return-void

    .line 9072
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9074
    throw v2
.end method

.method public greylist-max-o setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7206
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7209
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7210
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7213
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7215
    nop

    .line 7216
    return-void

    .line 7213
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7215
    throw v2
.end method

.method public greylist-max-o setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10578
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10582
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10584
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10585
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10588
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10590
    nop

    .line 10591
    return-void

    .line 10588
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10590
    throw v2
.end method

.method public blacklist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8155
    .local p4, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8160
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8162
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8163
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8164
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8165
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8166
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8169
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8171
    nop

    .line 8172
    return v2

    .line 8169
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8171
    throw v2
.end method

.method public blacklist setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "hidden"    # Z
    .param p5, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8763
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8765
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8766
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8767
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8768
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8769
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8770
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8773
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8775
    nop

    .line 8776
    return v2

    .line 8773
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8775
    throw v2
.end method

.method public greylist-max-o setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8320
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8323
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8324
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8325
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8328
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8330
    nop

    .line 8331
    return-void

    .line 8328
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8330
    throw v2
.end method

.method public greylist-max-o setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8359
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8361
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8362
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8363
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8366
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8368
    nop

    .line 8369
    return v2

    .line 8366
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8368
    throw v2
.end method

.method public blacklist setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9800
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9802
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9803
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9806
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9808
    nop

    .line 9809
    return-void

    .line 9806
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9808
    throw v2
.end method

.method public greylist-max-o setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9767
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9769
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9770
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9773
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9775
    nop

    .line 9776
    return-void

    .line 9773
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9775
    throw v2
.end method

.method public blacklist setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9834
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9835
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9836
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9837
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9840
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9842
    nop

    .line 9843
    return-void

    .line 9840
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9842
    throw v2
.end method

.method public greylist-max-o setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10855
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10857
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10858
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10861
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10863
    nop

    .line 10864
    return-void

    .line 10861
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10863
    throw v2
.end method

.method public greylist-max-o setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9620
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9621
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9622
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9623
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9626
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9628
    nop

    .line 9629
    return-void

    .line 9626
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9628
    throw v2
.end method

.method public blacklist setCameraDisabled(Landroid/content/ComponentName;ZZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7029
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7030
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7031
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7032
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7033
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7036
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7038
    nop

    .line 7039
    return-void

    .line 7036
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7038
    throw v2
.end method

.method public greylist-max-o setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8125
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8127
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8128
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8131
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8133
    nop

    .line 8134
    return-void

    .line 8131
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8133
    throw v2
.end method

.method public blacklist setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11918
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11920
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x145

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11921
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11924
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11926
    nop

    .line 11927
    return-void

    .line 11924
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11926
    throw v2
.end method

.method public blacklist setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9321
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9323
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9329
    nop

    .line 9330
    return-void

    .line 9327
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9329
    throw v2
.end method

.method public blacklist setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11604
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11608
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11609
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11610
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x134

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11611
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11614
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11616
    nop

    .line 11617
    return-void

    .line 11614
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11616
    throw v2
.end method

.method public greylist-max-o setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9497
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9499
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9500
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9503
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9505
    nop

    .line 9506
    return-void

    .line 9503
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9505
    throw v2
.end method

.method public greylist-max-o setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9549
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9551
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9552
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9555
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9557
    nop

    .line 9558
    return-void

    .line 9555
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9557
    throw v2
.end method

.method public blacklist setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11675
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11679
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11681
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x138

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11682
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11685
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11687
    nop

    .line 11688
    return-void

    .line 11685
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11687
    throw v2
.end method

.method public blacklist setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8303
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8305
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8306
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8307
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8310
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8312
    nop

    .line 8313
    return-void

    .line 8310
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8312
    throw v2
.end method

.method public greylist-max-o setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8066
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8070
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8071
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8072
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8073
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8074
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8077
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8079
    nop

    .line 8080
    return-void

    .line 8077
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8079
    throw v2
.end method

.method public blacklist setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "setProfileOwnerOnCurrentUserIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7455
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7456
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7457
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7458
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7459
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7460
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7461
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7464
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7466
    nop

    .line 7467
    return v2

    .line 7464
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7466
    throw v2
.end method

.method public greylist-max-o setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerInfo"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7748
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7750
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7751
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7752
    if-eqz p2, :cond_0

    .line 7753
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7754
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7757
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7759
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7760
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7763
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7765
    nop

    .line 7766
    return-void

    .line 7763
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7765
    throw v2
.end method

.method public blacklist setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12189
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12191
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x155

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12192
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12195
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12197
    nop

    .line 12198
    return-void

    .line 12195
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12197
    throw v2
.end method

.method public greylist-max-o setDeviceProvisioningConfigApplied()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10826
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x109

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10827
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10830
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10832
    nop

    .line 10833
    return-void

    .line 10830
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10832
    throw v2
.end method

.method public blacklist setDpcDownloaded(Z)V
    .locals 5
    .param p1, "downloaded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12474
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x166

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12478
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12480
    nop

    .line 12481
    return-void

    .line 12478
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12480
    throw v2
.end method

.method public blacklist setDrawables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12402
    .local p1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12403
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 12407
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x162

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12408
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12411
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12413
    nop

    .line 12414
    return-void

    .line 12411
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12413
    throw v2
.end method

.method public greylist-max-o setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11293
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11294
    if-eqz p2, :cond_0

    .line 11295
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11296
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 11299
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11301
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x123

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11302
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11305
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11307
    nop

    .line 11308
    return-void

    .line 11305
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11307
    throw v2
.end method

.method public blacklist setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/FactoryResetProtectionPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6834
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6835
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6836
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6837
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6840
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6842
    nop

    .line 6843
    return-void

    .line 6840
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6842
    throw v2
.end method

.method public greylist-max-o setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "forceEpehemeralUsers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9868
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9870
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9871
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9874
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9876
    nop

    .line 9877
    return-void

    .line 9874
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9876
    throw v2
.end method

.method public blacklist setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "privateDnsHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11519
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11521
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11522
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11523
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11527
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11529
    nop

    .line 11530
    return v2

    .line 11527
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11529
    throw v2
.end method

.method public greylist-max-o setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6901
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6903
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6904
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6905
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6906
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6909
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6911
    nop

    .line 6912
    return-object v2

    .line 6909
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6911
    throw v2
.end method

.method public greylist-max-o setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9270
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9272
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9273
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9274
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9277
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9279
    nop

    .line 9280
    return-void

    .line 9277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9279
    throw v2
.end method

.method public greylist-max-o setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10182
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10186
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10188
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10189
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10190
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10193
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10195
    nop

    .line 10196
    return-void

    .line 10193
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10195
    throw v2
.end method

.method public blacklist setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11805
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11806
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11807
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11808
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11809
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11810
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11811
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11812
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11815
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11817
    nop

    .line 11818
    return v2

    .line 11815
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11817
    throw v2
.end method

.method public blacklist setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11848
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11849
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x141

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11850
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11851
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11854
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11856
    nop

    .line 11857
    return v2

    .line 11854
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11856
    throw v2
.end method

.method public greylist-max-o setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8030
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8032
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8033
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8034
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8035
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8036
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8037
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8038
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8041
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8043
    nop

    .line 8044
    return v2

    .line 8041
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8043
    throw v2
.end method

.method public greylist-max-o setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9985
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9987
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xda

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9988
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9989
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9992
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9994
    nop

    .line 9995
    return v2

    .line 9992
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9994
    throw v2
.end method

.method public greylist-max-o setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7169
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7171
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7172
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7173
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7176
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7178
    nop

    .line 7179
    return-void

    .line 7176
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7178
    throw v2
.end method

.method public blacklist setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9355
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9357
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9358
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9361
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9363
    nop

    .line 9364
    return-void

    .line 9361
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9363
    throw v2
.end method

.method public greylist-max-o setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9236
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9238
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9239
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9242
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9244
    nop

    .line 9245
    return-void

    .line 9242
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9244
    throw v2
.end method

.method public greylist-max-o setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9184
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9185
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9186
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xac

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9187
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9190
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9192
    nop

    .line 9193
    return-void

    .line 9190
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9192
    throw v2
.end method

.method public greylist-max-o setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11184
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11185
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11186
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11187
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11190
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11192
    nop

    .line 11193
    return-void

    .line 11190
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11192
    throw v2
.end method

.method public greylist-max-o setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10310
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10312
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10313
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10314
    if-eqz p2, :cond_0

    .line 10315
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10316
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 10319
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10321
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xec

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10322
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10325
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10327
    nop

    .line 10328
    return-void

    .line 10325
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10327
    throw v2
.end method

.method public blacklist setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12004
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12005
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12006
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12007
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12010
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12012
    nop

    .line 12013
    return-void

    .line 12010
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12012
    throw v2
.end method

.method public greylist-max-o setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9409
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9410
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9411
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9412
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9415
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9417
    nop

    .line 9418
    return-void

    .line 9415
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9417
    throw v2
.end method

.method public greylist-max-o setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6671
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6672
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6673
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6674
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6675
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6678
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6680
    nop

    .line 6681
    return-void

    .line 6678
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6680
    throw v2
.end method

.method public greylist-max-o setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6724
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6727
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6728
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6729
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6730
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6731
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6734
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6736
    nop

    .line 6737
    return-void

    .line 6734
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6736
    throw v2
.end method

.method public greylist-max-o setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 11347
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11352
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11354
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x126

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11355
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11356
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11359
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11361
    nop

    .line 11362
    return-object v2

    .line 11359
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11361
    throw v2
.end method

.method public blacklist setMinimumRequiredWifiSecurityLevel(I)V
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12326
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12327
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12330
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12332
    nop

    .line 12333
    return-void

    .line 12330
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12332
    throw v2
.end method

.method public blacklist setNearbyAppStreamingPolicy(I)V
    .locals 5
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7137
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7138
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7141
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7143
    nop

    .line 7144
    return-void

    .line 7141
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7143
    throw v2
.end method

.method public blacklist setNearbyNotificationStreamingPolicy(I)V
    .locals 5
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7104
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7105
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7108
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7110
    nop

    .line 7111
    return-void

    .line 7108
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7110
    throw v2
.end method

.method public blacklist setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10889
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10890
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10891
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10892
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10893
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10896
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10898
    nop

    .line 10899
    return-void

    .line 10896
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10898
    throw v2
.end method

.method public blacklist setNextOperationSafety(II)V
    .locals 5
    .param p1, "operation"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12070
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12071
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12072
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12075
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12077
    nop

    .line 12078
    return-void

    .line 12075
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12077
    throw v2
.end method

.method public greylist-max-o setOrganizationColor(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10391
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10393
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10394
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10397
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10399
    nop

    .line 10400
    return-void

    .line 10397
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10399
    throw v2
.end method

.method public greylist-max-o setOrganizationColorForUser(II)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10406
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10408
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10409
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10410
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10413
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10415
    nop

    .line 10416
    return-void

    .line 10413
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10415
    throw v2
.end method

.method public blacklist setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12122
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12123
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12124
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x151

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12125
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12128
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12130
    nop

    .line 12131
    return-void

    .line 12128
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12130
    throw v2
.end method

.method public greylist-max-o setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10474
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10475
    if-eqz p2, :cond_0

    .line 10476
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10477
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 10480
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10482
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10483
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10486
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10488
    nop

    .line 10489
    return-void

    .line 10486
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10488
    throw v2
.end method

.method public greylist-max-o setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11464
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11466
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11470
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11472
    nop

    .line 11473
    return-void

    .line 11470
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11472
    throw v2
.end method

.method public greylist-max-o setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7791
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7792
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7793
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7794
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7795
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7796
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7797
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7800
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7802
    nop

    .line 7803
    return-object v2

    .line 7800
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7802
    throw v2
.end method

.method public greylist-max-o setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6432
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6433
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6434
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6435
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6436
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6439
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6441
    nop

    .line 6442
    return-void

    .line 6439
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6441
    throw v2
.end method

.method public greylist-max-o setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6395
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6397
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6398
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6399
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6402
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6404
    nop

    .line 6405
    return-void

    .line 6402
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6404
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6117
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6119
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6120
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6121
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6124
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6126
    nop

    .line 6127
    return-void

    .line 6124
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6126
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6228
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6231
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6232
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6235
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6237
    nop

    .line 6238
    return-void

    .line 6235
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6237
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6191
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6193
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6194
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6195
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6198
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6200
    nop

    .line 6201
    return-void

    .line 6198
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6200
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6339
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6341
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6342
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6343
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6346
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6348
    nop

    .line 6349
    return-void

    .line 6346
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6348
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6265
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6267
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6268
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6269
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6272
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6274
    nop

    .line 6275
    return-void

    .line 6272
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6274
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6302
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6304
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6305
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6306
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6309
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6311
    nop

    .line 6312
    return-void

    .line 6309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6311
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6154
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6155
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6156
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6157
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6158
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6161
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6163
    nop

    .line 6164
    return-void

    .line 6161
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6163
    throw v2
.end method

.method public greylist-max-o setPasswordQuality(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6077
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6080
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6081
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6082
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6083
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6087
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6089
    nop

    .line 6090
    return-void

    .line 6087
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6089
    throw v2
.end method

.method public blacklist setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "grantState"    # I
    .param p6, "resultReceiver"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10107
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10110
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10111
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10112
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10113
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10114
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10117
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10119
    nop

    .line 10120
    return-void

    .line 10117
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10119
    throw v2
.end method

.method public greylist-max-o setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10071
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10072
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10074
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10075
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10076
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10079
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10081
    nop

    .line 10082
    return-void

    .line 10079
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10081
    throw v2
.end method

.method public greylist-max-o setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8512
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8517
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8519
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x88

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8520
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8521
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8524
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8526
    nop

    .line 8527
    return v2

    .line 8524
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8526
    throw v2
.end method

.method public greylist-max-o setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8665
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8670
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8672
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8673
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8674
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8677
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8679
    nop

    .line 8680
    return v2

    .line 8677
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8679
    throw v2
.end method

.method public blacklist setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8587
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8592
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8593
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8594
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8595
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8596
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8597
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8600
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8602
    nop

    .line 8603
    return v2

    .line 8600
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8602
    throw v2
.end method

.method public blacklist setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11967
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11970
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11972
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x148

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11973
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11976
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11978
    nop

    .line 11979
    return-void

    .line 11976
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11978
    throw v2
.end method

.method public blacklist setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9148
    .local p1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 9153
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9154
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9157
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9159
    nop

    .line 9160
    return-void

    .line 9157
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9159
    throw v2
.end method

.method public greylist-max-o setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7648
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7650
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7651
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7652
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7653
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7656
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7658
    nop

    .line 7659
    return-void

    .line 7656
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7658
    throw v2
.end method

.method public greylist-max-o setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7666
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7668
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7669
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7672
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7674
    nop

    .line 7675
    return-void

    .line 7672
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7674
    throw v2
.end method

.method public greylist-max-o setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7560
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7561
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7562
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7563
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7564
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7565
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7568
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7570
    nop

    .line 7571
    return v2

    .line 7568
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7570
    throw v2
.end method

.method public blacklist setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "isProfileOwnerOnOrganizationOwnedDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11574
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11575
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11576
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11577
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x132

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11578
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11581
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11583
    nop

    .line 11584
    return-void

    .line 11581
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11583
    throw v2
.end method

.method public greylist-max-o setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6937
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6938
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6939
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6940
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6941
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6944
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6946
    nop

    .line 6947
    return-void

    .line 6944
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6946
    throw v2
.end method

.method public blacklist setRequiredPasswordComplexity(IZ)V
    .locals 5
    .param p1, "passwordComplexity"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6559
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6564
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6565
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6568
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6570
    nop

    .line 6571
    return-void

    .line 6568
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6570
    throw v2
.end method

.method public greylist-max-o setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6764
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6765
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6766
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6767
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6768
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6771
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6773
    nop

    .line 6774
    return-void

    .line 6771
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6773
    throw v2
.end method

.method public greylist-max-o setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11057
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11058
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11059
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x116

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11060
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11061
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11064
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11066
    nop

    .line 11067
    return v2

    .line 11064
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11066
    throw v2
.end method

.method public greylist-max-o setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8413
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8414
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8415
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8416
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8419
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8421
    nop

    .line 8422
    return-void

    .line 8419
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8421
    throw v2
.end method

.method public blacklist setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7063
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7066
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7067
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7068
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7069
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7070
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7073
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7075
    nop

    .line 7076
    return-void

    .line 7073
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7075
    throw v2
.end method

.method public blacklist setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9117
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9118
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9120
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9121
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9124
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9126
    nop

    .line 9127
    return-void

    .line 9124
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9126
    throw v2
.end method

.method public greylist-max-o setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9304
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9306
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9307
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9308
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9311
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9313
    nop

    .line 9314
    return-void

    .line 9311
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9313
    throw v2
.end method

.method public blacklist setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10648
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10650
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10651
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10652
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10653
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10654
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xff

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10655
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10658
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10660
    nop

    .line 10661
    return-void

    .line 10658
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10660
    throw v2
.end method

.method public greylist-max-o setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10273
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10274
    if-eqz p2, :cond_0

    .line 10275
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10276
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 10279
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10281
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xea

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10282
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10285
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10287
    nop

    .line 10288
    return-void

    .line 10285
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10287
    throw v2
.end method

.method public greylist-max-o setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11271
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11272
    if-eqz p2, :cond_0

    .line 11273
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11274
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 11277
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11279
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x122

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11283
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11285
    nop

    .line 11286
    return-void

    .line 11283
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11285
    throw v2
.end method

.method public greylist-max-o setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10004
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10005
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10006
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10007
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10008
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10011
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10013
    nop

    .line 10014
    return v2

    .line 10011
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10013
    throw v2
.end method

.method public greylist-max-o setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6955
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6956
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6957
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6958
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6959
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6962
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6964
    nop

    .line 6965
    return v2

    .line 6962
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6964
    throw v2
.end method

.method public blacklist setStrings(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12484
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12485
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 12489
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x167

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12490
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12493
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12495
    nop

    .line 12496
    return-void

    .line 12493
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12495
    throw v2
.end method

.method public greylist-max-o setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9287
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9289
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9290
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9291
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9294
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9296
    nop

    .line 9297
    return-void

    .line 9294
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9296
    throw v2
.end method

.method public greylist-max-o setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9934
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9937
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9938
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9939
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9940
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9943
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9945
    nop

    .line 9946
    return-void

    .line 9943
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9945
    throw v2
.end method

.method public greylist-max-o setTime(Landroid/content/ComponentName;J)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9372
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9373
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 9374
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9375
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9376
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9379
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9381
    nop

    .line 9382
    return v2

    .line 9379
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9381
    throw v2
.end method

.method public greylist-max-o setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9391
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9393
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9394
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9395
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9398
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9400
    nop

    .line 9401
    return v2

    .line 9398
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9400
    throw v2
.end method

.method public greylist-max-o setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9669
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9671
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9672
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9673
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9674
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9675
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9676
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9680
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9682
    nop

    .line 9683
    return-void

    .line 9680
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9682
    throw v2
.end method

.method public greylist-max-o setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uninstallBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9460
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9462
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9463
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9464
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9465
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9468
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9470
    nop

    .line 9471
    return-void

    .line 9468
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9470
    throw v2
.end method

.method public blacklist setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12257
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12258
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x159

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12259
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12262
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12264
    nop

    .line 12265
    return-void

    .line 12262
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12264
    throw v2
.end method

.method public blacklist setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11880
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11884
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11885
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11886
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x143

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11890
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11892
    nop

    .line 11893
    return-void

    .line 11890
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11892
    throw v2
.end method

.method public greylist-max-o setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9921
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9922
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9923
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9924
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9927
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9929
    nop

    .line 9930
    return-void

    .line 9927
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9929
    throw v2
.end method

.method public greylist-max-o setUserProvisioningState(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10568
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10569
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10572
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10574
    nop

    .line 10575
    return-void

    .line 10572
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10574
    throw v2
.end method

.method public blacklist setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8447
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8448
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8449
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8450
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8451
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8452
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8455
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8457
    nop

    .line 8458
    return-void

    .line 8455
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8457
    throw v2
.end method

.method public blacklist setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .locals 5
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12357
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12358
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12359
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12362
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12364
    nop

    .line 12365
    return-void

    .line 12362
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12364
    throw v2
.end method

.method public blacklist shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12537
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12538
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12539
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12542
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12544
    nop

    .line 12545
    return v2

    .line 12542
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12544
    throw v2
.end method

.method public greylist-max-o startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .locals 5
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "contactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9602
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 9603
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9604
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 9605
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9606
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9607
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9610
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9612
    nop

    .line 9613
    return-void

    .line 9610
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9612
    throw v2
.end method

.method public greylist-max-o startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8866
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8867
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8868
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8869
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8870
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8873
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8875
    nop

    .line 8876
    return v2

    .line 8873
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8875
    throw v2
.end method

.method public blacklist startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "allDay"    # Z
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11783
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11784
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 11785
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 11786
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11787
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 11788
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11789
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11790
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11793
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11795
    nop

    .line 11796
    return v2

    .line 11793
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11795
    throw v2
.end method

.method public greylist-max-o stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8885
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8886
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8887
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8888
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8892
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8894
    nop

    .line 8895
    return v2

    .line 8892
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8894
    throw v2
.end method

.method public greylist-max-o switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8847
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8848
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8849
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x99

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8850
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8851
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8854
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8856
    nop

    .line 8857
    return v2

    .line 8854
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8856
    throw v2
.end method

.method public greylist-max-o transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11237
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11238
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11239
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11240
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x120

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11244
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11246
    nop

    .line 11247
    return-void

    .line 11244
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11246
    throw v2
.end method

.method public greylist-max-o uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7868
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7870
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7871
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7872
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7875
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7877
    nop

    .line 7878
    return-void

    .line 7875
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7877
    throw v2
.end method

.method public greylist-max-o uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10778
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x106

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10782
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10784
    nop

    .line 10785
    return-void

    .line 10782
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10784
    throw v2
.end method

.method public greylist-max-o updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11408
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11410
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11411
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x129

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11412
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11413
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11416
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11418
    nop

    .line 11419
    return v2

    .line 11416
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11418
    throw v2
.end method

.method public blacklist wipeDataWithReason(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6818
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6819
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6820
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6821
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6824
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6826
    nop

    .line 6827
    return-void

    .line 6824
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6826
    throw v2
.end method
