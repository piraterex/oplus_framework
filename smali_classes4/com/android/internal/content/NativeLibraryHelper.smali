.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final blacklist BITCODE_PRESENT:I = 0x1

.field public static final blacklist CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final blacklist DEBUG_NATIVE:Z = false

.field public static final blacklist LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final blacklist LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final blacklist TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeClose(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenApk(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 12
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    aget-wide v10, v0, v2

    .line 198
    .local v10, "apkHandle":J
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    iget-boolean v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    move-wide v4, v10

    move-object v7, p2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZ)I

    move-result v4

    .line 200
    .local v4, "res":I
    if-eq v4, v3, :cond_0

    .line 201
    return v4

    .line 197
    .end local v4    # "res":I
    .end local v10    # "apkHandle":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return v3
.end method

.method public static blacklist copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "useIsaSubdir"    # Z
    .param p4, "isIncremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "abi":I
    if-gez v0, :cond_0

    .line 327
    return v0

    .line 334
    :cond_0
    aget-object v1, p2, v0

    .line 335
    .local v1, "supportedAbi":Ljava/lang/String;
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "instructionSet":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 338
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "subDir":Ljava/io/File;
    goto :goto_0

    .line 340
    .end local v3    # "subDir":Ljava/io/File;
    :cond_1
    move-object v3, p1

    .line 343
    .restart local v3    # "subDir":Ljava/io/File;
    :goto_0
    const/4 v4, 0x1

    if-eqz p4, :cond_3

    .line 344
    nop

    .line 345
    invoke-static {p0, v3, v1}, Lcom/android/internal/content/NativeLibraryHelper;->incrementalConfigureNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    .line 346
    .local v5, "res":I
    if-eq v5, v4, :cond_2

    .line 351
    return v5

    .line 353
    :cond_2
    return v0

    .line 357
    .end local v5    # "res":I
    :cond_3
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 358
    if-eq v3, p1, :cond_4

    .line 359
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 364
    :cond_4
    invoke-static {p0, v3, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    .line 365
    .local v5, "copyRet":I
    if-eq v5, v4, :cond_5

    .line 366
    return v5

    .line 369
    :cond_5
    return v0
.end method

.method public static blacklist copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .param p3, "isIncremental"    # Z

    .line 375
    const-string v0, "NativeHelper"

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "-"

    const/16 v3, -0x72

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 379
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    const-string v1, "Ignoring abiOverride for multi arch application."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    const/16 v1, -0x72

    .line 384
    .local v1, "copyRet":I
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/16 v5, -0x71

    if-lez v2, :cond_1

    .line 385
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    move v1, v2

    .line 388
    if-gez v1, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v5, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v1

    .line 395
    :cond_1
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 396
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    move v1, v2

    .line 399
    if-gez v1, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v5, :cond_2

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v1

    .line 405
    .end local v1    # "copyRet":I
    :cond_2
    goto :goto_2

    .line 406
    :cond_3
    const/4 v1, 0x0

    .line 407
    .local v1, "cpuAbiOverride":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    const/4 v1, 0x0

    goto :goto_0

    .line 409
    :cond_4
    if-eqz p2, :cond_5

    .line 410
    move-object v1, p2

    .line 413
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 414
    new-array v2, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    goto :goto_1

    :cond_6
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 415
    .local v2, "abiList":[Ljava/lang/String;
    :goto_1
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_7

    if-nez v1, :cond_7

    .line 416
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 417
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v2, v5

    .line 420
    :cond_7
    invoke-static {p0, p1, v2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v5

    .line 422
    .local v5, "copyRet":I
    if-gez v5, :cond_8

    if-eq v5, v3, :cond_8

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure copying native libraries [errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    return v5

    .line 428
    .end local v1    # "cpuAbiOverride":Ljava/lang/String;
    .end local v2    # "abiList":[Ljava/lang/String;
    .end local v5    # "copyRet":I
    :cond_8
    :goto_2
    return v4

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Copying native libraries failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    const/16 v0, -0x6e

    return v0
.end method

.method public static blacklist createNativeLibrarySubdir(Ljava/io/File;)V
    .locals 4
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 295
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    sget v2, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 296
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set SELinux context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "supportedAbis"    # [Ljava/lang/String;

    .line 215
    const/16 v0, -0x72

    .line 216
    .local v0, "finalRes":I
    iget-object v1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-wide v4, v1, v3

    .line 217
    .local v4, "apkHandle":J
    iget-boolean v6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    invoke-static {v4, v5, p1, v6}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;Z)I

    move-result v6

    .line 218
    .local v6, "res":I
    const/16 v7, -0x72

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    const/16 v7, -0x71

    if-ne v6, v7, :cond_1

    .line 223
    if-gez v0, :cond_3

    .line 224
    const/16 v0, -0x71

    goto :goto_1

    .line 226
    :cond_1
    if-ltz v6, :cond_4

    .line 228
    if-ltz v0, :cond_2

    if-ge v6, v0, :cond_3

    .line 229
    :cond_2
    move v0, v6

    .line 216
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_4
    return v6

    .line 236
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_5
    return v0
.end method

.method private static blacklist getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "base"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .line 522
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 523
    .local v0, "basePath":Ljava/nio/file/Path;
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 524
    .local v1, "targetPath":Ljava/nio/file/Path;
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 525
    .local v2, "relativePath":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    const-string v3, ""

    return-object v3

    .line 528
    :cond_0
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 529
    .end local v0    # "basePath":Ljava/nio/file/Path;
    .end local v1    # "targetPath":Ljava/nio/file/Path;
    .end local v2    # "relativePath":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 530
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find relative path between: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string v2, "NativeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x0

    return-object v1
.end method

.method private static native blacklist hasRenderscriptBitcode(J)I
.end method

.method public static blacklist hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-wide v4, v0, v3

    .line 543
    .local v4, "apkHandle":J
    invoke-static {v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v6

    .line 544
    .local v6, "res":I
    if-ltz v6, :cond_1

    .line 546
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 547
    return v7

    .line 542
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error scanning APK, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_2
    return v2
.end method

.method private static blacklist incrementalConfigureNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libSubDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkPaths:[Ljava/lang/String;

    .line 486
    .local v0, "apkPaths":[Ljava/lang/String;
    const-string v1, "NativeHelper"

    const/16 v2, -0x6e

    if-eqz v0, :cond_6

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    const-string v3, "incremental"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 492
    .local v3, "incrementalService":Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 494
    return v2

    .line 496
    :cond_1
    new-instance v4, Landroid/os/incremental/IncrementalManager;

    .line 497
    invoke-static {v3}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 498
    .local v4, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 499
    .local v5, "apkParent":Ljava/io/File;
    nop

    .line 500
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v6

    .line 501
    .local v6, "incrementalStorage":Landroid/os/incremental/IncrementalStorage;
    if-nez v6, :cond_2

    .line 502
    const-string v7, "Failed to find incremental storage"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v2

    .line 506
    :cond_2
    invoke-static {v5, p1}, Lcom/android/internal/content/NativeLibraryHelper;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "libRelativeDir":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 508
    return v2

    .line 511
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_5

    .line 512
    aget-object v8, v0, v7

    iget-boolean v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    invoke-virtual {v6, v8, v1, p2, v9}, Landroid/os/incremental/IncrementalStorage;->configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 514
    return v2

    .line 511
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 517
    .end local v7    # "i":I
    :cond_5
    const/4 v2, 0x1

    return v2

    .line 487
    .end local v1    # "libRelativeDir":Ljava/lang/String;
    .end local v3    # "incrementalService":Landroid/os/IBinder;
    .end local v4    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local v5    # "apkParent":Ljava/io/File;
    .end local v6    # "incrementalStorage":Landroid/os/incremental/IncrementalStorage;
    :cond_6
    :goto_1
    const-string v3, "No apks to extract native libraries from."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v2
.end method

.method private static native blacklist nativeClose(J)V
.end method

.method private static native blacklist nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZ)I
.end method

.method private static native blacklist nativeFindSupportedAbi(J[Ljava/lang/String;Z)I
.end method

.method private static native blacklist nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeSumNativeBinaries(JLjava/lang/String;Z)J
.end method

.method public static blacklist removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .locals 5
    .param p0, "nativeLibraryRoot"    # Ljava/io/File;
    .param p1, "deleteRootDir"    # Z

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 264
    .local v0, "files":[Ljava/io/File;
    const-string v1, "NativeHelper"

    if-eqz v0, :cond_2

    .line 265
    const/4 v2, 0x0

    .local v2, "nn":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 270
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    goto :goto_1

    .line 272
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "nn":I
    :cond_2
    if-eqz p1, :cond_3

    .line 280
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete native binary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static blacklist removeNativeBinariesLI(Ljava/lang/String;)V
    .locals 2
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .line 244
    if-nez p0, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 246
    return-void
.end method

.method private static blacklist sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 9
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abi"    # Ljava/lang/String;

    .line 181
    const-wide/16 v0, 0x0

    .line 182
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 183
    .local v5, "apkHandle":J
    iget-boolean v7, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    invoke-static {v5, v6, p1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;Z)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 182
    .end local v5    # "apkHandle":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-wide v0
.end method

.method private static blacklist sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .locals 3
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiList"    # [Ljava/lang/String;

    .line 311
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "abi":I
    if-ltz v0, :cond_0

    .line 313
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 315
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static blacklist sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const-wide/16 v0, 0x0

    .line 438
    .local v0, "sum":J
    iget-boolean v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    const-string v3, "-"

    if-eqz v2, :cond_2

    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    const-string v2, "NativeHelper"

    const-string v3, "Ignoring abiOverride for multi arch application."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 447
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 450
    :cond_1
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 451
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_2

    .line 454
    :cond_2
    const/4 v2, 0x0

    .line 455
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    const/4 v2, 0x0

    goto :goto_0

    .line 457
    :cond_3
    if-eqz p1, :cond_4

    .line 458
    move-object v2, p1

    .line 461
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 462
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 463
    .local v3, "abiList":[Ljava/lang/String;
    :goto_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_6

    if-nez v2, :cond_6

    .line 464
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 465
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 468
    :cond_6
    invoke-static {p0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 470
    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    .end local v3    # "abiList":[Ljava/lang/String;
    :cond_7
    :goto_2
    return-wide v0
.end method
