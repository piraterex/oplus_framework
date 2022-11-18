.class public Lcom/android/internal/content/InstallLocationUtils;
.super Ljava/lang/Object;
.source "InstallLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    }
.end annotation


# static fields
.field public static final blacklist APP_INSTALL_AUTO:I = 0x0

.field public static final blacklist APP_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist APP_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final blacklist RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final blacklist RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final blacklist RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final blacklist RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final blacklist RECOMMEND_INSTALL_EPHEMERAL:I = 0x3

.field public static final blacklist RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final blacklist TAG:Ljava/lang/String; = "PackageHelper"

.field private static blacklist sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 7
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const-wide/16 v0, 0x0

    .line 440
    .local v0, "sizeBytes":J
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 441
    .local v3, "codePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v4, "codeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 443
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "codeFile":Ljava/io/File;
    goto :goto_0

    .line 446
    :cond_0
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadataSize(Landroid/content/pm/parsing/PackageLite;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 449
    invoke-static {p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 451
    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 423
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 423
    return-wide v1

    .line 425
    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 426
    throw v1
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 432
    invoke-static {p0, p2, p3}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLjava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 13
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "volumePath"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 174
    return v0

    .line 176
    :cond_0
    iget v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v1}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v1

    .line 177
    .local v1, "installFlags":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    .line 178
    .local v2, "target":Ljava/util/UUID;
    or-int/lit8 v3, v1, 0x8

    invoke-virtual {p0, v2, v3}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v3

    .line 180
    .local v3, "availBytes":J
    iget-wide v5, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_1

    .line 181
    return v6

    .line 183
    :cond_1
    or-int/lit8 v5, v1, 0x10

    invoke-virtual {p0, v2, v5}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    .line 185
    .local v7, "cacheClearable":J
    iget-wide v9, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long v11, v3, v7

    cmp-long v5, v9, v11

    if-gtz v5, :cond_2

    move v0, v6

    :cond_2
    return v0
.end method

.method public static blacklist fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 317
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 318
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 319
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 321
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 319
    :goto_0
    return v2
.end method

.method public static blacklist fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 298
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    .line 299
    .local v1, "target":Ljava/util/UUID;
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v2}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v2

    .line 301
    .local v2, "flags":I
    or-int/lit8 v3, v2, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v3

    .line 306
    .local v3, "allocateableBytes":J
    iget-wide v5, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_0

    .line 307
    return v6

    .line 310
    :cond_0
    or-int/lit8 v5, v2, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    .line 313
    .local v7, "cacheClearable":J
    iget-wide v9, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long v11, v3, v7

    cmp-long v5, v9, v11

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private static declared-synchronized blacklist getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .locals 2

    const-class v0, Lcom/android/internal/content/InstallLocationUtils;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/android/internal/content/InstallLocationUtils$1;

    invoke-direct {v1}, Lcom/android/internal/content/InstallLocationUtils$1;-><init>()V

    sput-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    .line 140
    :cond_0
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist getInstallationErrorCode(I)I
    .locals 3
    .param p0, "loc"    # I

    .line 497
    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    .line 498
    const/16 v0, -0x13

    return v0

    .line 499
    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x4

    if-ne p0, v2, :cond_1

    .line 500
    return v1

    .line 501
    :cond_1
    if-ne p0, v1, :cond_2

    .line 502
    return v2

    .line 503
    :cond_2
    const/4 v1, -0x2

    if-ne p0, v1, :cond_3

    .line 504
    return v1

    .line 505
    :cond_3
    const/4 v1, -0x6

    if-ne p0, v1, :cond_4

    .line 506
    return v0

    .line 507
    :cond_4
    const/4 v0, -0x5

    if-ne p0, v0, :cond_5

    .line 508
    const/16 v0, -0x14

    return v0

    .line 510
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist installLocationPolicy(IIIZZ)I
    .locals 2
    .param p0, "installLocation"    # I
    .param p1, "recommendedInstallLocation"    # I
    .param p2, "installFlags"    # I
    .param p3, "installedPkgIsSystem"    # Z
    .param p4, "installedPackageOnExternal"    # Z

    .line 472
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 474
    const/4 v0, -0x4

    return v0

    .line 477
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 478
    return v0

    .line 481
    :cond_1
    if-ne p0, v0, :cond_2

    .line 483
    return v0

    .line 484
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 486
    return p1

    .line 489
    :cond_3
    if-eqz p4, :cond_4

    .line 490
    return v1

    .line 492
    :cond_4
    return v0
.end method

.method public static blacklist replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .line 455
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/high16 v3, 0x400000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 335
    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 339
    :goto_0
    const/4 v1, 0x0

    .line 340
    .local v1, "ephemeral":Z
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x800

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 341
    const/4 v2, 0x1

    .line 342
    .local v2, "prefer":I
    const/4 v1, 0x1

    .line 343
    const/4 v5, 0x0

    .local v5, "checkBoth":Z
    goto :goto_2

    .line 344
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_0
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 345
    const/4 v2, 0x1

    .line 346
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .restart local v5    # "checkBoth":Z
    goto :goto_2

    .line 347
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_1
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v4, :cond_2

    .line 348
    const/4 v2, 0x1

    .line 349
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .restart local v5    # "checkBoth":Z
    goto :goto_2

    .line 350
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_2
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v3, :cond_3

    .line 351
    const/4 v2, 0x2

    .line 352
    .restart local v2    # "prefer":I
    const/4 v5, 0x1

    .restart local v5    # "checkBoth":Z
    goto :goto_2

    .line 353
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_3
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-nez v2, :cond_6

    .line 355
    if-eqz v0, :cond_5

    .line 357
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    .line 358
    const/4 v2, 0x2

    .restart local v2    # "prefer":I
    goto :goto_1

    .line 360
    .end local v2    # "prefer":I
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "prefer":I
    goto :goto_1

    .line 363
    .end local v2    # "prefer":I
    :cond_5
    const/4 v2, 0x1

    .line 365
    .restart local v2    # "prefer":I
    :goto_1
    const/4 v5, 0x1

    .restart local v5    # "checkBoth":Z
    goto :goto_2

    .line 367
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_6
    const/4 v2, 0x1

    .line 368
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .line 371
    .restart local v5    # "checkBoth":Z
    :goto_2
    const/4 v6, 0x0

    .line 372
    .local v6, "fitsOnInternal":Z
    if-nez v5, :cond_7

    if-ne v2, v4, :cond_8

    .line 373
    :cond_7
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    .line 376
    :cond_8
    const/4 v7, 0x0

    .line 377
    .local v7, "fitsOnExternal":Z
    if-nez v5, :cond_9

    if-ne v2, v3, :cond_a

    .line 378
    :cond_9
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    .line 381
    :cond_a
    if-ne v2, v4, :cond_c

    .line 384
    if-eqz v6, :cond_d

    .line 385
    if-eqz v1, :cond_b

    .line 386
    const/4 v4, 0x3

    goto :goto_3

    .line 387
    :cond_b
    nop

    .line 385
    :goto_3
    return v4

    .line 389
    :cond_c
    if-ne v2, v3, :cond_d

    .line 390
    if-eqz v7, :cond_d

    .line 391
    return v3

    .line 395
    :cond_d
    if-eqz v5, :cond_f

    .line 396
    if-eqz v6, :cond_e

    .line 397
    return v4

    .line 398
    :cond_e
    if-eqz v7, :cond_f

    .line 399
    return v3

    .line 403
    :cond_f
    const/4 v3, -0x1

    return v3
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    move-result-object v6

    .line 167
    .local v6, "testableInterface":Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget-wide v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v0, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "testInterface"    # Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 192
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getForceAllowOnExternalSetting(Landroid/content/Context;)Z

    move-result v4

    .line 193
    .local v4, "forceAllowOnExternal":Z
    nop

    .line 194
    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z

    move-result v5

    .line 197
    .local v5, "allow3rdPartyOnInternal":Z
    iget-object v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 200
    .local v6, "existingInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 201
    .local v7, "volumePaths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 202
    .local v8, "internalVolumePath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/VolumeInfo;

    .line 203
    .local v10, "vol":Landroid/os/storage/VolumeInfo;
    iget v12, v10, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v12, v11, :cond_2

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 204
    iget-object v11, v10, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string/jumbo v12, "private"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 205
    .local v11, "isInternalStorage":Z
    if-eqz v11, :cond_0

    .line 206
    iget-object v8, v10, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 208
    :cond_0
    if-eqz v11, :cond_1

    if-eqz v5, :cond_2

    .line 209
    :cond_1
    iget-object v12, v10, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v13, v10, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v10    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v11    # "isInternalStorage":Z
    :cond_2
    goto :goto_0

    .line 215
    :cond_3
    const-string v9, " upgrade"

    const-string v10, "Not enough space on existing volume "

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 216
    invoke-static {v3, v8, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 217
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v9

    .line 219
    :cond_4
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " for system app "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 226
    :cond_5
    if-nez v4, :cond_a

    iget v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v12, v11, :cond_a

    .line 228
    if-eqz v6, :cond_7

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v10, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    .line 230
    :cond_6
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot automatically move "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to internal storage"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 234
    :cond_7
    :goto_1
    if-eqz v5, :cond_9

    .line 238
    invoke-static {v3, v8, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 239
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v9

    .line 241
    :cond_8
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Requested internal only, but not enough space"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 235
    :cond_9
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Not allowed to install non-system apps on internal storage"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 246
    :cond_a
    if-eqz v6, :cond_e

    .line 247
    const/4 v11, 0x0

    .line 248
    .local v11, "existingVolumePath":Ljava/lang/String;
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 249
    move-object v11, v8

    goto :goto_2

    .line 250
    :cond_b
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 251
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    .line 254
    :cond_c
    :goto_2
    invoke-static {v3, v11, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 255
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object v9

    .line 257
    :cond_d
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 264
    .end local v11    # "existingVolumePath":Ljava/lang/String;
    :cond_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ne v9, v11, :cond_f

    .line 265
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v3, v10, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 266
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    return-object v9

    .line 269
    :cond_f
    const/4 v9, 0x0

    .line 270
    .local v9, "bestCandidate":Ljava/lang/String;
    const-wide/high16 v10, -0x8000000000000000L

    .line 271
    .local v10, "bestCandidateAvailBytes":J
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 272
    .local v13, "vol":Ljava/lang/String;
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 273
    .local v14, "volumePath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v15

    .line 277
    .local v15, "target":Ljava/util/UUID;
    iget v0, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 278
    invoke-static {v0}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v0

    .line 277
    invoke-virtual {v3, v15, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v16

    .line 280
    .local v16, "availBytes":J
    cmp-long v0, v16, v10

    if-ltz v0, :cond_10

    .line 281
    move-object v0, v13

    .line 282
    .end local v9    # "bestCandidate":Ljava/lang/String;
    .local v0, "bestCandidate":Ljava/lang/String;
    move-wide/from16 v9, v16

    move-wide v10, v9

    move-object v9, v0

    .line 284
    .end local v0    # "bestCandidate":Ljava/lang/String;
    .end local v13    # "vol":Ljava/lang/String;
    .end local v14    # "volumePath":Ljava/lang/String;
    .end local v15    # "target":Ljava/util/UUID;
    .end local v16    # "availBytes":J
    .restart local v9    # "bestCandidate":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    goto :goto_3

    .line 286
    :cond_11
    iget-wide v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v0, v10, v12

    if-ltz v0, :cond_12

    .line 287
    return-object v9

    .line 292
    .end local v9    # "bestCandidate":Ljava/lang/String;
    .end local v10    # "bestCandidateAvailBytes":J
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "testInterface"    # Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 149
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 150
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 151
    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 152
    invoke-static {p0, v0, p5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist translateAllocateFlags(I)I
    .locals 1
    .param p0, "installFlags"    # I

    .line 463
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
