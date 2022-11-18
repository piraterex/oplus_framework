.class Landroid/app/IApplicationThread$Stub$Proxy;
.super Ljava/lang/Object;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread$Stub;
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

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1305
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1308
    iget-object v0, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o attachAgent(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2007
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2009
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2013
    nop

    .line 2014
    return-void

    .line 2012
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2013
    throw v1
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .locals 5
    .param p1, "dataDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2019
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2021
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    nop

    .line 2026
    return-void

    .line 2024
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    throw v1
.end method

.method public blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJ)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p6, "testName"    # Landroid/content/ComponentName;
    .param p7, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p8, "testArguments"    # Landroid/os/Bundle;
    .param p9, "testWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p10, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p11, "debugMode"    # I
    .param p12, "enableBinderTracking"    # Z
    .param p13, "trackAllocation"    # Z
    .param p14, "restrictedBackupMode"    # Z
    .param p15, "persistent"    # Z
    .param p16, "config"    # Landroid/content/res/Configuration;
    .param p17, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p18, "services"    # Ljava/util/Map;
    .param p19, "coreSettings"    # Landroid/os/Bundle;
    .param p20, "buildSerial"    # Ljava/lang/String;
    .param p21, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p22, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p23, "disabledCompatChanges"    # [J
    .param p24, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p25, "startRequestedElapsedTime"    # J
    .param p27, "startRequestedUptime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1389
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1390
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1391
    const/4 v0, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 1393
    move-object/from16 v5, p4

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 1394
    move-object/from16 v6, p5

    :try_start_2
    invoke-virtual {v1, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1395
    move-object/from16 v7, p6

    :try_start_3
    invoke-virtual {v1, v7, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1396
    move-object/from16 v8, p7

    :try_start_4
    invoke-virtual {v1, v8, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 1397
    move-object/from16 v9, p8

    :try_start_5
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1398
    move-object/from16 v10, p9

    :try_start_6
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1399
    move-object/from16 v11, p10

    :try_start_7
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1400
    move/from16 v12, p11

    :try_start_8
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1401
    move/from16 v13, p12

    :try_start_9
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1402
    move/from16 v14, p13

    :try_start_a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1403
    move/from16 v15, p14

    :try_start_b
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1404
    move/from16 v2, p15

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1405
    move-object/from16 v2, p16

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1406
    move-object/from16 v2, p17

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1407
    move-object/from16 v2, p18

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1408
    move-object/from16 v2, p19

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1409
    move-object/from16 v2, p20

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1410
    move-object/from16 v2, p21

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1411
    move-object/from16 v2, p22

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1412
    move-object/from16 v2, p23

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1413
    move-object/from16 v2, p24

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1414
    move-wide/from16 v2, p25

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1415
    move-wide/from16 v2, p27

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1416
    move-object/from16 v2, p0

    iget-object v0, v2, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    nop

    .line 1421
    return-void

    .line 1419
    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    goto :goto_3

    :catchall_8
    move-exception v0

    goto :goto_2

    :catchall_9
    move-exception v0

    goto :goto_1

    :catchall_a
    move-exception v0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v5, p4

    :goto_0
    move-object/from16 v6, p5

    :goto_1
    move-object/from16 v7, p6

    :goto_2
    move-object/from16 v8, p7

    :goto_3
    move-object/from16 v9, p8

    :goto_4
    move-object/from16 v10, p9

    :goto_5
    move-object/from16 v11, p10

    :goto_6
    move/from16 v12, p11

    :goto_7
    move/from16 v13, p12

    :goto_8
    move/from16 v14, p13

    :goto_9
    move/from16 v15, p14

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    throw v0
.end method

.method public greylist-max-o clearDnsCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1710
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1711
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return-void

    .line 1714
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw v1
.end method

.method public greylist-max-o dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1638
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1641
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    nop

    .line 1646
    return-void

    .line 1644
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw v1
.end method

.method public greylist-max-o dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1682
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1683
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1685
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1687
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    nop

    .line 1692
    return-void

    .line 1690
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    throw v1
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1819
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1820
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1821
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1822
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    nop

    .line 1827
    return-void

    .line 1825
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw v1
.end method

.method public greylist-max-o dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1846
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1847
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1849
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    nop

    .line 1854
    return-void

    .line 1852
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    throw v1
.end method

.method public greylist-max-o dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1806
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1807
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1808
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1809
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1813
    nop

    .line 1814
    return-void

    .line 1812
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1813
    throw v1
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1665
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1668
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1669
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1670
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1671
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1672
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1676
    nop

    .line 1677
    return-void

    .line 1675
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1676
    throw v1
.end method

.method public greylist-max-o dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1769
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1770
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1771
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1772
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1773
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1774
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1775
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1776
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1777
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1778
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    nop

    .line 1783
    return-void

    .line 1781
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    throw v1
.end method

.method public greylist-max-o dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1788
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1789
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1790
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1791
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1792
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1793
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1794
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1795
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1796
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1800
    nop

    .line 1801
    return-void

    .line 1799
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1800
    throw v1
.end method

.method public blacklist dumpMessage(Z)V
    .locals 5
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2126
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2128
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    nop

    .line 2133
    return-void

    .line 2131
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    throw v1
.end method

.method public greylist-max-o dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1833
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1835
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1836
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    nop

    .line 1841
    return-void

    .line 1839
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    throw v1
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1697
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1698
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1699
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1700
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    nop

    .line 1705
    return-void

    .line 1703
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    throw v1
.end method

.method public greylist-max-o dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1513
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1514
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1515
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1516
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    nop

    .line 1522
    return-void

    .line 1520
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    throw v1
.end method

.method public blacklist enableActivityThreadLog(Z)V
    .locals 5
    .param p1, "isEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2100
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2102
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2106
    nop

    .line 2107
    return-void

    .line 2105
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2106
    throw v1
.end method

.method public blacklist enableProcessMainThreadLooperLog()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2114
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2115
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    nop

    .line 2120
    return-void

    .line 2118
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    throw v1
.end method

.method public blacklist getBroadcastState(I)V
    .locals 5
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    nop

    .line 2173
    return-void

    .line 2171
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1312
    const-string v0, "android.app.IApplicationThread"

    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1996
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1997
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    nop

    .line 2002
    return-void

    .line 2000
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    throw v1
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2194
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2196
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2197
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2198
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2199
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2200
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2204
    nop

    .line 2205
    return-void

    .line 2203
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2204
    throw v1
.end method

.method public greylist-max-o notifyCleartextNetwork([B)V
    .locals 5
    .param p1, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1948
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1950
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    nop

    .line 1955
    return-void

    .line 1953
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    throw v1
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2180
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2184
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2188
    nop

    .line 2189
    return-void

    .line 2187
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2188
    throw v1
.end method

.method public blacklist oplusScheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZIII)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .param p10, "hasCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1340
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1342
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1343
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1344
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1347
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1348
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    nop

    .line 1356
    return-void

    .line 1354
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    throw v1
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2082
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2084
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2085
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2086
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2087
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2088
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    nop

    .line 2093
    return-void

    .line 2091
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    throw v1
.end method

.method public greylist-max-o processInBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1474
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1475
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    nop

    .line 1480
    return-void

    .line 1478
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    throw v1
.end method

.method public greylist-max-o profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1558
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1560
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1561
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    nop

    .line 1567
    return-void

    .line 1565
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw v1
.end method

.method public greylist-max-o requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1871
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1873
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1874
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    nop

    .line 1882
    return-void

    .line 1880
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    throw v1
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2067
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2070
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2071
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2072
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2076
    nop

    .line 2077
    return-void

    .line 2075
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2076
    throw v1
.end method

.method public greylist-max-o runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1426
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1429
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    nop

    .line 1434
    return-void

    .line 1432
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    throw v1
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2031
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2033
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2037
    nop

    .line 2038
    return-void

    .line 2036
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2037
    throw v1
.end method

.method public greylist-max-o scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1485
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1487
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1489
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1494
    nop

    .line 1495
    return-void

    .line 1493
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1494
    throw v1
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1655
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    nop

    .line 1660
    return-void

    .line 1658
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    throw v1
.end method

.method public blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I
    .param p4, "userId"    # I
    .param p5, "operationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1584
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1586
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1587
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    nop

    .line 1595
    return-void

    .line 1593
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    throw v1
.end method

.method public greylist-max-o scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1362
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1364
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1365
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    nop

    .line 1372
    return-void

    .line 1370
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    throw v1
.end method

.method public blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1600
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1602
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1603
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1608
    nop

    .line 1609
    return-void

    .line 1607
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1608
    throw v1
.end method

.method public greylist-max-o scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1936
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1938
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1942
    nop

    .line 1943
    return-void

    .line 1941
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1942
    throw v1
.end method

.method public greylist-max-o scheduleExit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1439
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1440
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    nop

    .line 1445
    return-void

    .line 1443
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    throw v1
.end method

.method public greylist-max-o scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 5
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1912
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1913
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1914
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    nop

    .line 1919
    return-void

    .line 1917
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    throw v1
.end method

.method public greylist-max-o scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1983
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1986
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    nop

    .line 1991
    return-void

    .line 1989
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    throw v1
.end method

.method public greylist-max-o scheduleLowMemory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1547
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1548
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1552
    nop

    .line 1553
    return-void

    .line 1551
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1552
    throw v1
.end method

.method public greylist-max-o scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1614
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1616
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1617
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    nop

    .line 1622
    return-void

    .line 1620
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    throw v1
.end method

.method public greylist-max-o scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1318
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1319
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1320
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1321
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1322
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1325
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1326
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1332
    nop

    .line 1333
    return-void

    .line 1331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1332
    throw v1
.end method

.method public greylist-max-o scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1527
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1529
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1533
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1534
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1535
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    nop

    .line 1542
    return-void

    .line 1540
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    throw v1
.end method

.method public greylist-max-o scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1450
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1452
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1453
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    nop

    .line 1458
    return-void

    .line 1456
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    throw v1
.end method

.method public greylist-max-o scheduleStopService(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1379
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1383
    nop

    .line 1384
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1383
    throw v1
.end method

.method public greylist-max-o scheduleSuicide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1627
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1628
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1631
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    throw v1
.end method

.method public greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2055
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2056
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2057
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    nop

    .line 2062
    return-void

    .line 2060
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    throw v1
.end method

.method public greylist-max-o scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1887
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1890
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1894
    nop

    .line 1895
    return-void

    .line 1893
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1894
    throw v1
.end method

.method public greylist-max-o scheduleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1763
    nop

    .line 1764
    return-void

    .line 1762
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1763
    throw v1
.end method

.method public greylist-max-o scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1500
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1502
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1503
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1507
    nop

    .line 1508
    return-void

    .line 1506
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1507
    throw v1
.end method

.method public greylist-max-o setCoreSettings(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1732
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1733
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1734
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    nop

    .line 1739
    return-void

    .line 1737
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    throw v1
.end method

.method public blacklist setDynamicalLogConfig(Ljava/util/List;)V
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

    .line 2151
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2153
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2155
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    nop

    .line 2160
    return-void

    .line 2158
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    throw v1
.end method

.method public blacklist setDynamicalLogEnable(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2141
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2143
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2147
    nop

    .line 2148
    return-void

    .line 2146
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2147
    throw v1
.end method

.method public greylist-max-o setNetworkBlockSeq(J)V
    .locals 5
    .param p1, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2043
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2045
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    nop

    .line 2050
    return-void

    .line 2048
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    throw v1
.end method

.method public greylist-max-o setProcessState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1900
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    nop

    .line 1907
    return-void

    .line 1905
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    throw v1
.end method

.method public greylist-max-o setSchedulingGroup(I)V
    .locals 5
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1572
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    nop

    .line 1579
    return-void

    .line 1577
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    throw v1
.end method

.method public greylist-max-o startBinderTracking()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1961
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    nop

    .line 1966
    return-void

    .line 1964
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    throw v1
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1971
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1972
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1973
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1977
    nop

    .line 1978
    return-void

    .line 1976
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1977
    throw v1
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1861
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    nop

    .line 1866
    return-void

    .line 1864
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    throw v1
.end method

.method public blacklist updateHttpProxy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    nop

    .line 1727
    return-void

    .line 1725
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    throw v1
.end method

.method public greylist-max-o updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1744
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1746
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1747
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    nop

    .line 1752
    return-void

    .line 1750
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    throw v1
.end method

.method public greylist-max-o updateTimePrefs(I)V
    .locals 5
    .param p1, "timeFormatPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1924
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1929
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    throw v1
.end method

.method public greylist-max-o updateTimeZone()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1463
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1464
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1468
    nop

    .line 1469
    return-void

    .line 1467
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1468
    throw v1
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2208
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2210
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2214
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2215
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2216
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2217
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2221
    nop

    .line 2222
    return-void

    .line 2220
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2221
    throw v1
.end method
