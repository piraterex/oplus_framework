.class public final Landroid/os/incremental/IncrementalManager;
.super Ljava/lang/Object;
.source "IncrementalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;,
        Landroid/os/incremental/IncrementalManager$CreateMode;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_PROPERTY:Ljava/lang/String; = "incremental.allowed"

.field public static final blacklist CREATE_MODE_CREATE:I = 0x4

.field public static final blacklist CREATE_MODE_OPEN_EXISTING:I = 0x8

.field public static final blacklist CREATE_MODE_PERMANENT_BIND:I = 0x2

.field public static final blacklist CREATE_MODE_TEMPORARY_BIND:I = 0x1

.field public static final blacklist MIN_VERSION_TO_SUPPORT_FSVERITY:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalManager"


# instance fields
.field private final blacklist mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

.field private final blacklist mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/IIncrementalService;)V
    .locals 2
    .param p1, "service"    # Landroid/os/incremental/IIncrementalService;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>(Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks-IA;)V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    .line 90
    iput-object p1, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    .line 91
    return-void
.end method

.method public static blacklist getVersion()I
    .locals 1

    .line 251
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsV2Available()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isAllowed()Z
    .locals 2

    .line 259
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "incremental.allowed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isFeatureEnabled()Z
    .locals 1

    .line 242
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isIncrementalFileFd(Ljava/io/FileDescriptor;)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 273
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->nativeIsIncrementalFd(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isIncrementalPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 266
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeIsIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .locals 10
    .param p1, "sourceStorage"    # Landroid/os/incremental/IncrementalStorage;
    .param p2, "sourceAbsolutePath"    # Ljava/io/File;
    .param p3, "sourceRelativePath"    # Ljava/lang/String;
    .param p4, "targetStorage"    # Landroid/os/incremental/IncrementalStorage;
    .param p5, "targetRelativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 216
    .local v0, "sourceBase":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p5, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 217
    .local v7, "targetRelative":Ljava/nio/file/Path;
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Landroid/os/incremental/IncrementalManager$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p4

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/incremental/IncrementalManager$1;-><init>(Landroid/os/incremental/IncrementalManager;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;)V

    invoke-static {v8, v9}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 236
    return-void
.end method

.method private static native blacklist nativeIsEnabled()Z
.end method

.method private static native blacklist nativeIsIncrementalFd(I)Z
.end method

.method private static native blacklist nativeIsIncrementalPath(Ljava/lang/String;)Z
.end method

.method private static native blacklist nativeIsV2Available()Z
.end method

.method private static native blacklist nativeUnsafeGetFileSignature(Ljava/lang/String;)[B
.end method

.method public static blacklist unsafeGetFileSignature(Ljava/lang/String;)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 281
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeUnsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/content/pm/DataLoaderParams;
    .param p3, "createMode"    # I

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroid/os/incremental/IIncrementalService;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I

    move-result v0

    .line 111
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 112
    const/4 v1, 0x0

    return-object v1

    .line 114
    :cond_0
    new-instance v1, Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v1, v2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    .end local v0    # "id":I
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "linkedStorage"    # Landroid/os/incremental/IncrementalStorage;
    .param p3, "createMode"    # I

    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    .line 151
    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v1

    .line 150
    invoke-interface {v0, p1, v1, p3}, Landroid/os/incremental/IIncrementalService;->createLinkedStorage(Ljava/lang/String;II)I

    move-result v0

    .line 152
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    return-object v1

    .line 155
    :cond_0
    new-instance v1, Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v1, v2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 156
    .end local v0    # "id":I
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;
    .locals 3
    .param p1, "codePath"    # Ljava/lang/String;

    .line 402
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 403
    .local v0, "storage":Landroid/os/incremental/IncrementalStorage;
    if-nez v0, :cond_0

    .line 405
    const/4 v1, 0x0

    return-object v1

    .line 407
    :cond_0
    new-instance v1, Landroid/os/incremental/IncrementalMetrics;

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/incremental/IncrementalMetrics;-><init>(Landroid/os/PersistableBundle;)V

    return-object v1
.end method

.method public blacklist linkCodePath(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p1, "beforeCodeFile"    # Ljava/io/File;
    .param p2, "afterCodeFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    .line 179
    .local v6, "beforeCodeAbsolute":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v7

    .line 180
    .local v7, "apkStorage":Landroid/os/incremental/IncrementalStorage;
    if-eqz v7, :cond_1

    .line 183
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "targetStorageDir":Ljava/lang/String;
    const/4 v0, 0x6

    .line 185
    invoke-virtual {p0, v8, v7, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v9

    .line 188
    .local v9, "linkedApkStorage":Landroid/os/incremental/IncrementalStorage;
    if-eqz v9, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "afterCodePathName":Ljava/lang/String;
    const-string v3, ""

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/os/incremental/IncrementalManager;->linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v5    # "afterCodePathName":Ljava/lang/String;
    nop

    .line 198
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v9, v8}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V

    .line 196
    throw v0

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create linked storage at dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    .end local v8    # "targetStorageDir":Ljava/lang/String;
    .end local v9    # "linkedApkStorage":Landroid/os/incremental/IncrementalStorage;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Incremental path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-interface {v0, p1}, Landroid/os/incremental/IIncrementalService;->openStorage(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 134
    :cond_0
    new-instance v1, Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v1, v2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v1, "storage":Landroid/os/incremental/IncrementalStorage;
    return-object v1

    .line 136
    .end local v0    # "id":I
    .end local v1    # "storage":Landroid/os/incremental/IncrementalStorage;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .locals 2
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 313
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 314
    .local v0, "storage":Landroid/os/incremental/IncrementalStorage;
    if-nez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    return v1

    .line 318
    :cond_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v1, v0, p2}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    move-result v1

    return v1
.end method

.method public blacklist rmPackageDir(Ljava/io/File;)V
    .locals 3
    .param p1, "codeFile"    # Ljava/io/File;

    .line 291
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "codePath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    .line 293
    .local v1, "storage":Landroid/os/incremental/IncrementalStorage;
    if-nez v1, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v2, v1}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v1    # "storage":Landroid/os/incremental/IncrementalStorage;
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IncrementalManager"

    const-string v2, "Failed to remove code path"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterLoadingProgressCallbacks(Ljava/lang/String;)V
    .locals 2
    .param p1, "codePath"    # Ljava/lang/String;

    .line 326
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 327
    .local v0, "storage":Landroid/os/incremental/IncrementalStorage;
    if-nez v0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v1, v0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V

    .line 332
    return-void
.end method
