.class public Landroid/os/IInstalld$Default;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "outDexFile"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist controlDexOptBlocking(Z)V
    .locals 0
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "systemProfile"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .locals 1
    .param p1, "args"    # Landroid/os/CreateAppDataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .locals 1
    .param p1, "args"    # [Landroid/os/CreateAppDataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "oatDir"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "classpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createUserData(Ljava/lang/String;III)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "ceSnapshotInode"    # J
    .param p6, "snapshotId"    # I
    .param p7, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public blacklist destroyAppProfiles(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "retainSnapshotIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    return-void
.end method

.method public blacklist destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist destroyUserData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "outputPath"    # Ljava/lang/String;
    .param p7, "dexFlags"    # I
    .param p8, "compilerFilter"    # Ljava/lang/String;
    .param p9, "uuid"    # Ljava/lang/String;
    .param p10, "sharedLibraries"    # Ljava/lang/String;
    .param p11, "seInfo"    # Ljava/lang/String;
    .param p12, "downgrade"    # Z
    .param p13, "targetSdkVersion"    # I
    .param p14, "profileName"    # Ljava/lang/String;
    .param p15, "dexMetadataPath"    # Ljava/lang/String;
    .param p16, "compilationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "codePath"    # Ljava/lang/String;
    .param p5, "dumpClassesAndMethods"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixupAppData(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist freeCache(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "targetFreeBytes"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public blacklist getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "ceDataInodes"    # [J
    .param p7, "codePaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExternalSize(Ljava/lang/String;II[I)[J
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserSize(Ljava/lang/String;II[I)[J
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "volumeUuid"    # Ljava/lang/String;
    .param p5, "storageFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist invalidateMounts()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist isQuotaSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "fromBase"    # Ljava/lang/String;
    .param p4, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public blacklist linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public blacklist mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist migrateLegacyObbData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public blacklist moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public blacklist moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "targetSdkVersion"    # I
    .param p7, "fromCodePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist onPrivateVolumeRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist oplusCommonInterface(Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 1
    .param p1, "funName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "codePath"    # Ljava/lang/String;
    .param p6, "dexMetadata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .locals 0
    .param p1, "args"    # Landroid/os/ReconcileSdkDataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isas"    # [Ljava/lang/String;
    .param p5, "volume_uuid"    # Ljava/lang/String;
    .param p6, "storage_flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "user"    # I
    .param p6, "snapshotId"    # I
    .param p7, "storageflags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method public blacklist restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist setAppQuota(Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "cacheQuota"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist setFirstBoot()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "snapshotId"    # I
    .param p5, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist tryMountDataMirror(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method
