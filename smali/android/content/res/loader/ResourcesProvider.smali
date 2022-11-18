.class public Landroid/content/res/loader/ResourcesProvider;
.super Ljava/lang/Object;
.source "ResourcesProvider.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResourcesProvider"


# instance fields
.field private final blacklist mApkAssets:Landroid/content/res/ApkAssets;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOpen:Z

.field private blacklist mOpenCount:I


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/ApkAssets;)V
    .locals 1
    .param p1, "apkAssets"    # Landroid/content/res/ApkAssets;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    .line 230
    iput-object p1, p0, Landroid/content/res/loader/ResourcesProvider;->mApkAssets:Landroid/content/res/ApkAssets;

    .line 231
    return-void
.end method

.method public static whitelist empty(Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 2
    .param p0, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;

    .line 61
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    const/4 v1, 0x4

    invoke-static {v1, p0}, Landroid/content/res/ApkAssets;->loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static whitelist loadFromApk(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;
    .locals 1
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromApk(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist loadFromApk(Landroid/os/ParcelFileDescriptor;JJLandroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 9
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    const/4 v7, 0x4

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static whitelist loadFromApk(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 4
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    const/4 v3, 0x4

    invoke-static {v1, v2, v3, p1}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static whitelist loadFromDirectory(Ljava/lang/String;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    const/4 v1, 0x4

    invoke-static {p0, v1, p1}, Landroid/content/res/ApkAssets;->loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v0
.end method

.method public static whitelist loadFromSplit(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/loader/ResourcesProvider;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 203
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 204
    .local v1, "splitIndex":I
    if-ltz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 209
    .local v2, "splitPath":Ljava/lang/String;
    new-instance v3, Landroid/content/res/loader/ResourcesProvider;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    return-object v3

    .line 205
    .end local v2    # "splitPath":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist loadFromTable(Landroid/os/ParcelFileDescriptor;JJLandroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 9
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    .line 187
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    const/4 v7, 0x4

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Landroid/content/res/ApkAssets;->loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    .line 186
    return-object v0
.end method

.method public static whitelist loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;
    .locals 4
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "assetsProvider"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/content/res/loader/ResourcesProvider;

    .line 156
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    const/4 v3, 0x4

    invoke-static {v1, v2, v3, p1}, Landroid/content/res/ApkAssets;->loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/loader/ResourcesProvider;-><init>(Landroid/content/res/ApkAssets;)V

    .line 155
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 262
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    if-nez v1, :cond_0

    .line 264
    monitor-exit v0

    return-void

    .line 267
    :cond_0
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    if-nez v1, :cond_1

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :try_start_1
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mApkAssets:Landroid/content/res/ApkAssets;

    invoke-virtual {v0}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    .line 278
    :goto_0
    return-void

    .line 268
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close provider used by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ResourcesLoader instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    throw v1

    .line 272
    .restart local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method final blacklist decrementRefCount()V
    .locals 2

    .line 249
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "ResourcesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourcesProvider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finalized with non-zero refs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getApkAssets()Landroid/content/res/ApkAssets;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method final blacklist incrementRefCount()V
    .locals 3

    .line 240
    iget-object v0, p0, Landroid/content/res/loader/ResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpen:Z

    if-eqz v1, :cond_0

    .line 244
    iget v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/loader/ResourcesProvider;->mOpenCount:I

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Operation failed: resources provider is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    throw v1

    .line 245
    .restart local p0    # "this":Landroid/content/res/loader/ResourcesProvider;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
