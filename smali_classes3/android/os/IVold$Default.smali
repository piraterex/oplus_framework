.class public Landroid/os/IVold$Default;
.super Ljava/lang/Object;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortChanges(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    return-void
.end method

.method public blacklist abortFuse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist addAppIds([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist addSandboxIds([I[Ljava/lang/String;)V
    .locals 0
    .param p1, "appIds"    # [I
    .param p2, "sandboxIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist addUserKeyAuth(IILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist bindMount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    return-void
.end method

.method public blacklist checkBeforeMount(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist clearCache(I)I
    .locals 1
    .param p1, "whatsAppExist"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearUserKeyAuth(IILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    return-void
.end method

.method public blacklist commitChanges()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    return-void
.end method

.method public blacklist createObb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "ownerGid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "mountPath"    # Ljava/lang/String;
    .param p3, "fsType"    # Ljava/lang/String;
    .param p4, "fsUuid"    # Ljava/lang/String;
    .param p5, "fsLabel"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createUserKey(IIZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "ephemeral"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method public blacklist destroyDsuMetadataKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "dsuSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    return-void
.end method

.method public blacklist destroyObb(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sandboxId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

.method public blacklist destroyStubVolume(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist destroyUserKey(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public blacklist destroyUserStorage(Ljava/lang/String;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public blacklist earlyBootEnded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public blacklist encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "blkDevice"    # Ljava/lang/String;
    .param p2, "mountPoint"    # Ljava/lang/String;
    .param p3, "shouldFormat"    # Z
    .param p4, "fsType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public blacklist ensureAppDirsCreated([Ljava/lang/String;I)V
    .locals 0
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "appUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist exportSensitiveBePublicKey(II)[B
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sensitiveType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist exportSensitiveKey(IIZ)[B
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sensitiveType"    # I
    .param p3, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist fbeEnable()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist fixateNewestUserKeyAuth(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public blacklist fixupAppDir(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "partGuid"    # Ljava/lang/String;
    .param p2, "fsUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist format(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "fsType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist fstrim(ILandroid/os/IVoldTaskListener;)V
    .locals 0
    .param p1, "fstrimFlags"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist fsyncCtrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fsyncMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist getStorageLifeTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUnlockedUsers()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWriteAmount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist incFsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initUser0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist isCheckpointing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockUserKey(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    return-void
.end method

.method public blacklist markBootAttempt()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    return-void
.end method

.method public blacklist monitor()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "mountFlags"    # I
    .param p3, "mountUserId"    # I
    .param p4, "callback"    # Landroid/os/IVoldMountCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist mountAppFuse(II)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "mountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist mountFstab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "blkDevice"    # Ljava/lang/String;
    .param p2, "mountPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public blacklist mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .locals 1
    .param p1, "backingPath"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "sysfsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 0
    .param p1, "fromVolId"    # Ljava/lang/String;
    .param p2, "toVolId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist needsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needsRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onSecureKeyguardStateChanged(Z)V
    .locals 0
    .param p1, "isShowing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist onSecureKeyguardStateChangedForSensitiveFile(ZII)V
    .locals 0
    .param p1, "isShowing"    # Z
    .param p2, "userId"    # I
    .param p3, "sensitiveType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist onUserAdded(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onUserStarted(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onUserStopped(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist openAppFuseFile(IIII)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "mountId"    # I
    .param p3, "fileId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist partition(Ljava/lang/String;II)V
    .locals 0
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "partitionType"    # I
    .param p3, "ratio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist prepareCheckpoint()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    return-void
.end method

.method public blacklist prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "sandboxId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist prepareUserStorage(Ljava/lang/String;III)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    return-void
.end method

.method public blacklist refreshLatestWrite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist remountAppStorageDirs(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist remountUid(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "remountMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist resetCheckpoint()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public blacklist restoreCheckpoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method public blacklist restoreCheckpointPart(Ljava/lang/String;I)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    return-void
.end method

.method public blacklist runIdleMaint(ZLandroid/os/IVoldTaskListener;)V
    .locals 0
    .param p1, "needGC"    # Z
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist sdlockClearPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    return-void
.end method

.method public blacklist sdlockErase()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    return-void
.end method

.method public blacklist sdlockGetCid()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sdlockPoll()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sdlockSetPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    return-void
.end method

.method public blacklist sdlockUnlock(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    return-void
.end method

.method public blacklist setGCUrgentPace(IIFFI)V
    .locals 0
    .param p1, "neededSegments"    # I
    .param p2, "minSegmentThreshold"    # I
    .param p3, "dirtyReclaimRate"    # F
    .param p4, "reclaimWeight"    # F
    .param p5, "gcPeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public blacklist setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "control"    # Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .param p2, "enableReadLogs"    # Z
    .param p3, "enableReadTimeouts"    # Z
    .param p4, "sysfsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    return-void
.end method

.method public blacklist setListener(Landroid/os/IVoldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IVoldListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist setStorageBindingSeed([B)V
    .locals 0
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public blacklist setupAppDir(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist startCheckpoint(I)V
    .locals 0
    .param p1, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist startserviceAppFuse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopserviceAppFuse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsBlockCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsFileCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unlockSensitiveKey(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;
    .param p5, "sensitiveType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist unlockUserKey(IILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist unmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist unmountAppFuse(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "mountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public blacklist unmountAppStorageDirs(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist unmountIncFs(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    return-void
.end method
