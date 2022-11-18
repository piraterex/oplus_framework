.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final blacklist ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final blacklist LOGGING_DEBUG:Z

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final blacklist PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final blacklist PRELOAD_RESOURCES:Z = true

.field private static final blacklist PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static greylist mResources:Landroid/content/res/Resources;

.field private static blacklist sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sPreloadComplete:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 99
    const-string v0, "Zygote"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    return-void
.end method

.method private static blacklist beginPreload()V
    .locals 2

    .line 183
    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    .line 186
    return-void
.end method

.method private static blacklist cacheNonBootClasspathClassLoaders()V
    .locals 15

    .line 405
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    const-string v1, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 410
    .local v0, "hidlBase":Landroid/content/pm/SharedLibraryInfo;
    new-instance v13, Landroid/content/pm/SharedLibraryInfo;

    const-string v2, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 416
    .local v1, "hidlManager":Landroid/content/pm/SharedLibraryInfo;
    new-instance v14, Landroid/content/pm/SharedLibraryInfo;

    const-string v3, "/system/framework/android.test.base.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 422
    .local v2, "androidTestBase":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/content/pm/SharedLibraryInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders([Landroid/content/pm/SharedLibraryInfo;)V

    .line 429
    return-void
.end method

.method static blacklist childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 4
    .param p0, "argv"    # [Ljava/lang/String;

    .line 1078
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 1079
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method static blacklist createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .locals 9
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "targetSdkVersion"    # I

    .line 714
    const-string/jumbo v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "libraryPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 719
    .local v8, "parent":Ljava/lang/ClassLoader;
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v8

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist endPreload()V
    .locals 2

    .line 189
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    .line 191
    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private static blacklist forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 23
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;

    .line 731
    const/16 v0, 0xd

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v9, 0x7

    aput v1, v0, v9

    sget v1, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    const/16 v10, 0x8

    aput v1, v0, v10

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v11, 0x9

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v11, 0xa

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    const/16 v11, 0xb

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/16 v11, 0xc

    aput v1, v0, v11

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v11

    .line 747
    .local v11, "capabilities":J
    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    invoke-direct {v0, v1, v2}, Landroid/system/StructCapUserHeader;-><init>(II)V

    move-object v1, v0

    .line 751
    .local v1, "header":Landroid/system/StructCapUserHeader;
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v13, v0

    .line 754
    .local v13, "data":[Landroid/system/StructCapUserData;
    nop

    .line 755
    aget-object v0, v13, v2

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v14, v0

    aget-object v0, v13, v3

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v8, v14

    and-long/2addr v8, v11

    .line 758
    .end local v11    # "capabilities":J
    .local v8, "capabilities":J
    new-array v0, v10, [Ljava/lang/String;

    const-string v10, "--setuid=1000"

    aput-object v10, v0, v2

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v3

    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012"

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v6

    const-string v2, "--runtime-args"

    aput-object v2, v0, v7

    const-string v2, "--target-sdk-version=10000"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "com.android.server.SystemServer"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    move-object v2, v0

    .line 774
    .local v2, "args":[Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 776
    .local v3, "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 779
    .local v0, "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    nop

    .line 780
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 781
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 782
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 784
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 785
    const-string v4, "arm64.memtag.process.system_server"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v6, "async"

    if-eqz v5, :cond_0

    .line 790
    :try_start_4
    const-string/jumbo v5, "persist.arm64.memtag.default"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 792
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 793
    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_0

    .line 794
    :cond_1
    const-string/jumbo v5, "sync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 795
    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v6, 0x180000

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_0

    .line 796
    :cond_2
    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 798
    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 799
    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown memory tag level for the system server: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    .end local v4    # "mode":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 804
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_1

    .line 801
    :cond_4
    :goto_0
    nop

    .line 809
    :goto_1
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 811
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 812
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 816
    :cond_5
    iget v14, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v15, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v4, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/16 v18, 0x0

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    iget-wide v10, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    invoke-static/range {v14 .. v22}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move v3, v4

    .line 825
    .local v3, "pid":I
    nop

    .line 828
    if-nez v3, :cond_7

    .line 829
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 830
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 833
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 834
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object v4

    return-object v4

    .line 837
    :cond_7
    const/4 v4, 0x0

    return-object v4

    .line 777
    .end local v0    # "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    .local v3, "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 778
    .local v0, "e":Ljava/io/EOFException;
    :try_start_5
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Unexpected argument error for forking system server"

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "header":Landroid/system/StructCapUserHeader;
    .end local v2    # "args":[Ljava/lang/String;
    .end local v8    # "capabilities":J
    .end local v13    # "data":[Landroid/system/StructCapUserData;
    .end local p0    # "abiList":Ljava/lang/String;
    .end local p1    # "socketName":Ljava/lang/String;
    .end local p2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    throw v4
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 823
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v3    # "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local v1    # "header":Landroid/system/StructCapUserHeader;
    .restart local v2    # "args":[Ljava/lang/String;
    .restart local v8    # "capabilities":J
    .restart local v13    # "data":[Landroid/system/StructCapUserData;
    .restart local p0    # "abiList":Ljava/lang/String;
    .restart local p1    # "socketName":Ljava/lang/String;
    .restart local p2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catch_1
    move-exception v0

    .line 824
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 752
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "args":[Ljava/lang/String;
    .end local v8    # "capabilities":J
    .end local v13    # "data":[Landroid/system/StructCapUserData;
    .restart local v11    # "capabilities":J
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 753
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to capget()"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist gcAndFinalize()V
    .locals 0

    .line 529
    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    .line 530
    return-void
.end method

.method private static blacklist getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 614
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 615
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "systemServerClasspath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 617
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    .line 621
    .end local v0    # "systemServerClasspath":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static blacklist handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .locals 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteArguments;

    .line 548
    const-string v0, "Zygote"

    const-string v1, "increase system server priority to -15"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v1, -0xf

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 553
    sget v1, Landroid/system/OsConstants;->S_IRWXG:I

    sget v2, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v1, v2

    invoke-static {v1}, Landroid/system/Os;->umask(I)I

    .line 555
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 559
    :cond_0
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "systemServerClasspath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 563
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_2

    .line 565
    :cond_1
    :try_start_0
    const-string v2, "Preparing system server profile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v2

    .line 568
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to set up system server profile"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 578
    .local v0, "args":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 579
    array-length v2, v0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 580
    .local v2, "amendedArgs":[Ljava/lang/String;
    const-string v4, "-cp"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 581
    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 582
    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    move-object v0, v2

    .line 586
    .end local v2    # "amendedArgs":[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 588
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 586
    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 590
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    .end local v0    # "args":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 593
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_5

    .line 594
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 600
    :cond_5
    iget v2, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .line 1024
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static blacklist isPreloadComplete()Z
    .locals 1

    .line 1034
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static blacklist lazyPreload()V
    .locals 4

    .line 176
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 177
    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-wide/16 v1, 0x4000

    const-string v3, "ZygoteInitTiming_lazy"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 180
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .locals 19
    .param p0, "argv"    # [Ljava/lang/String;

    .line 868
    move-object/from16 v1, p0

    const-string v0, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    const/4 v4, 0x0

    .line 872
    .local v4, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 876
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5, v5}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    nop

    .line 884
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 885
    .local v6, "startTime":J
    const-string v8, "1"

    const-string/jumbo v9, "sys.boot_completed"

    .line 886
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 885
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 888
    .local v8, "isRuntimeRestarted":Z
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v9, :cond_0

    :try_start_2
    const-string v9, "Zygote64Timing"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1001
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    :catchall_0
    move-exception v0

    move-object v5, v3

    goto/16 :goto_7

    .line 888
    .restart local v6    # "startTime":J
    .restart local v8    # "isRuntimeRestarted":Z
    :cond_0
    :try_start_3
    const-string v9, "Zygote32Timing"

    .line 889
    .local v9, "bootTimeTag":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/util/TimingsTraceLog;

    const-wide/16 v11, 0x4000

    invoke-direct {v10, v9, v11, v12}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 891
    .local v10, "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string v11, "ZygoteInit"

    invoke-virtual {v10, v11}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 894
    const/4 v11, 0x0

    .line 895
    .local v11, "startSystemServer":Z
    const-string/jumbo v12, "zygote"

    move-object v13, v12

    .line 896
    .local v13, "zygoteSocketName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 897
    .local v14, "abiList":Ljava/lang/String;
    const/4 v15, 0x0

    .line 898
    .local v15, "enableLazyPreload":Z
    const/16 v16, 0x1

    move/from16 v5, v16

    .local v5, "i":I
    :goto_1
    move-object/from16 v17, v4

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v17, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :try_start_4
    array-length v4, v1

    if-ge v5, v4, :cond_5

    .line 899
    const-string/jumbo v4, "start-system-server"

    move-object/from16 v18, v9

    .end local v9    # "bootTimeTag":Ljava/lang/String;
    .local v18, "bootTimeTag":Ljava/lang/String;
    aget-object v9, v1, v5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    const/4 v4, 0x1

    move v11, v4

    .end local v11    # "startSystemServer":Z
    .local v4, "startSystemServer":Z
    goto :goto_2

    .line 901
    .end local v4    # "startSystemServer":Z
    .restart local v11    # "startSystemServer":Z
    :cond_1
    const-string v4, "--enable-lazy-preload"

    aget-object v9, v1, v5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 902
    const/4 v4, 0x1

    move v15, v4

    .end local v15    # "enableLazyPreload":Z
    .local v4, "enableLazyPreload":Z
    goto :goto_2

    .line 903
    .end local v4    # "enableLazyPreload":Z
    .restart local v15    # "enableLazyPreload":Z
    :cond_2
    aget-object v4, v1, v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 904
    aget-object v4, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    .end local v14    # "abiList":Ljava/lang/String;
    .local v4, "abiList":Ljava/lang/String;
    goto :goto_2

    .line 905
    .end local v4    # "abiList":Ljava/lang/String;
    .restart local v14    # "abiList":Ljava/lang/String;
    :cond_3
    aget-object v4, v1, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 906
    aget-object v4, v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 898
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v17

    move-object/from16 v9, v18

    goto :goto_1

    .line 908
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command line argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v0

    .line 898
    .end local v18    # "bootTimeTag":Ljava/lang/String;
    .restart local v9    # "bootTimeTag":Ljava/lang/String;
    .restart local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v9

    .line 912
    .end local v5    # "i":I
    .end local v9    # "bootTimeTag":Ljava/lang/String;
    .restart local v18    # "bootTimeTag":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 913
    .local v0, "isPrimaryZygote":Z
    if-nez v8, :cond_7

    .line 914
    const/16 v2, 0xf0

    if-eqz v0, :cond_6

    .line 915
    const/16 v4, 0x11

    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_3

    .line 918
    :cond_6
    const-string/jumbo v4, "zygote_secondary"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 919
    const/16 v4, 0x12

    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 925
    :cond_7
    :goto_3
    if-eqz v14, :cond_e

    .line 930
    if-nez v15, :cond_8

    .line 931
    const-string v4, "ZygotePreload"

    invoke-virtual {v10, v4}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 932
    const/16 v4, 0xbcc

    .line 933
    move-object v5, v3

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 932
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 935
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Zygote:Preload Start"

    const/4 v12, 0x0

    aput-object v3, v4, v12

    invoke-virtual {v2, v4}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->beginHookPreload:Lcom/oplus/reflect/RefStaticMethod;

    new-array v3, v12, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 944
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->endHookPreload:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const/16 v2, 0xbd6

    .line 947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 946
    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 948
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_4

    .line 930
    :cond_8
    move-object v5, v3

    .line 952
    :goto_4
    const-string v2, "PostZygoteInitGC"

    invoke-virtual {v10, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 955
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->beginHookGcAndFinalize:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v4, v12

    invoke-virtual {v2, v4}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 960
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->endHookGcAndFinalize:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v4, v12

    invoke-virtual {v2, v4}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 964
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 967
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Zygote:Preload End"

    const/4 v9, 0x0

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-class v2, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-static {v2}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-interface {v2, v13}, Lcom/android/internal/os/IZygoteConfigSocExt;->createTertiaryZygote(Ljava/lang/String;)Lcom/android/internal/os/ZygoteServer;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, v2

    .line 972
    .end local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v4, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    if-nez v4, :cond_9

    .line 975
    :try_start_6
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    .line 977
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 979
    new-instance v2, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v2, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V

    move-object v4, v2

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v2, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    goto :goto_5

    .line 1001
    .end local v0    # "isPrimaryZygote":Z
    .end local v2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    .end local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v11    # "startSystemServer":Z
    .end local v13    # "zygoteSocketName":Ljava/lang/String;
    .end local v14    # "abiList":Ljava/lang/String;
    .end local v15    # "enableLazyPreload":Z
    .end local v18    # "bootTimeTag":Ljava/lang/String;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 985
    .restart local v0    # "isPrimaryZygote":Z
    .restart local v6    # "startTime":J
    .restart local v8    # "isRuntimeRestarted":Z
    .restart local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v11    # "startSystemServer":Z
    .restart local v13    # "zygoteSocketName":Ljava/lang/String;
    .restart local v14    # "abiList":Ljava/lang/String;
    .restart local v15    # "enableLazyPreload":Z
    .restart local v18    # "bootTimeTag":Ljava/lang/String;
    :cond_9
    :goto_5
    if-eqz v11, :cond_b

    .line 986
    invoke-static {v14, v13, v4}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v2

    .line 990
    .local v2, "r":Ljava/lang/Runnable;
    if-eqz v2, :cond_b

    .line 991
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1005
    if-eqz v4, :cond_a

    .line 1006
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 992
    :cond_a
    return-void

    .line 996
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_b
    :try_start_7
    const-string v2, "Accepting command socket connections"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {v4, v14}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v2

    .line 1005
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    .end local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v11    # "startSystemServer":Z
    .end local v13    # "zygoteSocketName":Ljava/lang/String;
    .end local v14    # "abiList":Ljava/lang/String;
    .end local v15    # "enableLazyPreload":Z
    .end local v18    # "bootTimeTag":Ljava/lang/String;
    .local v0, "caller":Ljava/lang/Runnable;
    if-eqz v4, :cond_c

    .line 1006
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 1012
    :cond_c
    if-eqz v0, :cond_d

    .line 1013
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1015
    :cond_d
    return-void

    .line 926
    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v0, "isPrimaryZygote":Z
    .restart local v6    # "startTime":J
    .restart local v8    # "isRuntimeRestarted":Z
    .restart local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v11    # "startSystemServer":Z
    .restart local v13    # "zygoteSocketName":Ljava/lang/String;
    .restart local v14    # "abiList":Ljava/lang/String;
    .restart local v15    # "enableLazyPreload":Z
    .restart local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v18    # "bootTimeTag":Ljava/lang/String;
    :cond_e
    move-object v5, v3

    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No ABI list supplied."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1001
    .end local v0    # "isPrimaryZygote":Z
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    .end local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v11    # "startSystemServer":Z
    .end local v13    # "zygoteSocketName":Ljava/lang/String;
    .end local v14    # "abiList":Ljava/lang/String;
    .end local v15    # "enableLazyPreload":Z
    .end local v18    # "bootTimeTag":Ljava/lang/String;
    .restart local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, v3

    :goto_6
    move-object/from16 v4, v17

    goto :goto_7

    .end local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catchall_4
    move-exception v0

    move-object v5, v3

    move-object/from16 v17, v4

    .line 1002
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_7
    :try_start_9
    const-string v2, "System zygote died with fatal exception"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    nop

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1005
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    if-eqz v4, :cond_f

    .line 1006
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 1008
    :cond_f
    throw v0

    .line 877
    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    move-object v2, v0

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v17    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    move-object v0, v2

    .line 878
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to setpgid(0,0)"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist maybePreloadGraphicsDriver()V
    .locals 2

    .line 223
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    .line 226
    :cond_0
    return-void
.end method

.method private static native blacklist nativePreloadAppProcessHALs()V
.end method

.method static native blacklist nativePreloadGraphicsDriver()V
.end method

.method private static native blacklist nativeZygoteInit()V
.end method

.method private static varargs blacklist posixCapabilitiesAsBits([I)J
    .locals 7
    .param p0, "capabilities"    # [I

    .line 844
    const-wide/16 v0, 0x0

    .line 845
    .local v0, "result":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 846
    .local v4, "capability":I
    if-ltz v4, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-gt v4, v5, :cond_0

    .line 849
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 845
    .end local v4    # "capability":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    .restart local v4    # "capability":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v4    # "capability":I
    :cond_1
    return-wide v0
.end method

.method private static blacklist prefetchStandaloneSystemServerJars()V
    .locals 10

    .line 629
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "envStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 635
    .local v5, "jar":Ljava/lang/String;
    nop

    .line 636
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 635
    invoke-static {v5, v6}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    goto :goto_1

    .line 637
    :catch_0
    move-exception v6

    .line 640
    .local v6, "e":Ljava/lang/Error;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    .line 642
    invoke-virtual {v6}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 641
    const-string v8, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 640
    const-string v8, "Zygote"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v5    # "jar":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Error;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 645
    :cond_1
    return-void
.end method

.method static blacklist preload(Landroid/util/TimingsTraceLog;)V
    .locals 4
    .param p0, "bootTimingsTraceLog"    # Landroid/util/TimingsTraceLog;

    .line 144
    const-string v0, "Zygote"

    const-string v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v1, "BeginPreload"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    .line 147
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 148
    const-string v1, "PreloadClasses"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 150
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 151
    const-string v1, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    .line 153
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 154
    const-string v1, "PreloadResources"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 156
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 157
    const-wide/16 v1, 0x4000

    const-string v3, "PreloadAppProcessHALs"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 159
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    const-string v3, "PreloadGraphicsDriver"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    .line 162
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 163
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 164
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 167
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 168
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    .line 169
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 170
    const-string v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 173
    return-void
.end method

.method private static blacklist preloadClasses()V
    .locals 27

    .line 267
    const-string v1, "Failed to restore root"

    const-string/jumbo v2, "ms"

    const-string v3, "Zygote:Preload "

    const-string v4, "ResetJitCounters"

    const-string v5, "dalvik.vm.profilebootclasspath"

    const-string/jumbo v6, "true"

    const-string/jumbo v7, "persist.device_config.runtime_native_boot.profilebootclasspath"

    const-string v8, "PreloadDexCaches"

    const-string v9, " classes in "

    const-string v10, ""

    const-string v11, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v12

    .line 271
    .local v12, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v13, "/system/etc/preloaded-classes"

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    move-object v13, v0

    .line 275
    .local v13, "is":Ljava/io/InputStream;
    nop

    .line 277
    const-string v0, "Preloading classes..."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 281
    .local v14, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v16

    .line 282
    .local v16, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v17

    .line 287
    .local v17, "regid":I
    const/16 v18, 0x0

    .line 288
    .local v18, "droppedPriviliges":Z
    move-object/from16 v19, v2

    const/4 v2, 0x0

    if-nez v16, :cond_0

    if-nez v17, :cond_0

    .line 290
    const/16 v0, 0x270f

    :try_start_1
    invoke-static {v2, v0}, Landroid/system/Os;->setregid(II)V

    .line 291
    invoke-static {v2, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    nop

    .line 296
    const/16 v18, 0x1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 300
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_0
    :goto_0
    const/16 v20, 0x0

    .line 303
    .local v20, "count":I
    move-object/from16 v21, v3

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v2, v0

    .line 309
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    move v3, v0

    move-object/from16 v22, v1

    move/from16 v1, v20

    .line 311
    .end local v20    # "count":I
    .local v1, "count":I
    .local v3, "missingLambdaCount":I
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v20, v0

    .local v20, "line":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 313
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 314
    const-string v0, "#"

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    .end local v20    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    .local v23, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    .line 315
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_4

    .line 318
    :cond_1
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    const-wide/16 v4, 0x4000

    :try_start_5
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 325
    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_6
    invoke-static {v2, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    add-int/lit8 v1, v1, 0x1

    .line 346
    :cond_2
    :goto_2
    goto/16 :goto_3

    .line 337
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 338
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error preloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    instance-of v4, v0, Ljava/lang/Error;

    if-nez v4, :cond_4

    .line 341
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3

    .line 342
    move-object v4, v0

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v1    # "count":I
    .end local v12    # "runtime":Ldalvik/system/VMRuntime;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "startTime":J
    .end local v16    # "reuid":I
    .end local v17    # "regid":I
    .end local v18    # "droppedPriviliges":Z
    throw v4

    .line 344
    .restart local v1    # "count":I
    .restart local v12    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "startTime":J
    .restart local v16    # "reuid":I
    .restart local v17    # "regid":I
    .restart local v18    # "droppedPriviliges":Z
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "count":I
    .end local v12    # "runtime":Ldalvik/system/VMRuntime;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "startTime":J
    .end local v16    # "reuid":I
    .end local v17    # "regid":I
    .end local v18    # "droppedPriviliges":Z
    throw v4

    .line 340
    .restart local v1    # "count":I
    .restart local v12    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "startTime":J
    .restart local v16    # "reuid":I
    .restart local v17    # "regid":I
    .restart local v18    # "droppedPriviliges":Z
    :cond_4
    move-object v4, v0

    check-cast v4, Ljava/lang/Error;

    .end local v1    # "count":I
    .end local v12    # "runtime":Ldalvik/system/VMRuntime;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "startTime":J
    .end local v16    # "reuid":I
    .end local v17    # "regid":I
    .end local v18    # "droppedPriviliges":Z
    throw v4

    .line 335
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "count":I
    .restart local v12    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "startTime":J
    .restart local v16    # "reuid":I
    .restart local v17    # "regid":I
    .restart local v18    # "droppedPriviliges":Z
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 336
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem preloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3

    .line 327
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 328
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "$$Lambda$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 329
    sget-boolean v4, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v4, :cond_2

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 333
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found for preloading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 347
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    const-wide/16 v4, 0x4000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    goto/16 :goto_1

    .line 358
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "missingLambdaCount":I
    .end local v23    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto :goto_5

    .line 355
    :catch_3
    move-exception v0

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto/16 :goto_a

    .line 314
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "missingLambdaCount":I
    .restart local v23    # "br":Ljava/io/BufferedReader;
    :cond_6
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 311
    .end local v2    # "line":Ljava/lang/String;
    :goto_4
    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    goto/16 :goto_1

    .line 358
    .end local v3    # "missingLambdaCount":I
    .end local v23    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v11, v19

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    :goto_5
    move-wide/from16 v22, v14

    goto/16 :goto_e

    .line 355
    :catch_4
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    goto/16 :goto_a

    .line 350
    .local v2, "br":Ljava/io/BufferedReader;
    .restart local v3    # "missingLambdaCount":I
    .restart local v20    # "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v23    # "br":Ljava/io/BufferedReader;
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...preloaded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 352
    :try_start_9
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 353
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unresolved lambda preloads: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 358
    .end local v3    # "missingLambdaCount":I
    .end local v20    # "line":Ljava/lang/String;
    .end local v23    # "br":Ljava/io/BufferedReader;
    :cond_8
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 361
    const-wide/16 v2, 0x4000

    invoke-static {v2, v3, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 362
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 363
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 373
    move-object/from16 v2, v25

    invoke-static {v2, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    .line 372
    :cond_9
    move-object v2, v0

    .line 375
    .end local v0    # "prop":Ljava/lang/String;
    .local v2, "prop":Ljava/lang/String;
    :goto_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 376
    move-object/from16 v3, v24

    const-wide/16 v4, 0x4000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 377
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 378
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    :cond_a
    if-eqz v18, :cond_b

    .line 384
    const/4 v3, 0x0

    :try_start_b
    invoke-static {v3, v3}, Landroid/system/Os;->setreuid(II)V

    .line 385
    invoke-static {v3, v3}, Landroid/system/Os;->setregid(II)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_5

    .line 388
    goto :goto_7

    .line 386
    :catch_5
    move-exception v0

    .line 387
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v4, v22

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 391
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_b
    :goto_7
    sget-object v0, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v14

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v11, v19

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 391
    invoke-virtual {v0, v3}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v2    # "prop":Ljava/lang/String;
    move-wide/from16 v22, v14

    goto/16 :goto_d

    .line 358
    :catchall_3
    move-exception v0

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    move-wide/from16 v22, v14

    move-object/from16 v11, v19

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto :goto_8

    .line 355
    :catch_6
    move-exception v0

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto :goto_9

    .line 358
    :catchall_5
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    :goto_8
    move-object/from16 v26, v19

    move/from16 v19, v1

    move-object/from16 v1, v26

    move-object v11, v1

    move-wide/from16 v22, v14

    move/from16 v1, v19

    .end local v1    # "count":I
    .local v19, "count":I
    goto/16 :goto_e

    .line 355
    .end local v19    # "count":I
    .restart local v1    # "count":I
    :catch_7
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    :goto_9
    move-object/from16 v26, v19

    move/from16 v19, v1

    move-object/from16 v1, v26

    move/from16 v26, v19

    move-object/from16 v19, v1

    move/from16 v1, v26

    .end local v1    # "count":I
    .restart local v19    # "count":I
    goto :goto_a

    .line 358
    .end local v19    # "count":I
    .local v20, "count":I
    :catchall_6
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v5, v21

    move-object v4, v1

    move-wide/from16 v22, v14

    move-object/from16 v11, v19

    move/from16 v1, v20

    goto/16 :goto_e

    .line 355
    :catch_8
    move-exception v0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v5, v21

    move-object v4, v1

    move/from16 v1, v20

    .line 356
    .end local v20    # "count":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "count":I
    :goto_a
    move-wide/from16 v22, v14

    .end local v14    # "startTime":J
    .local v22, "startTime":J
    :try_start_c
    const-string v14, "Error reading /system/etc/preloaded-classes."

    invoke-static {v11, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 358
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 361
    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 362
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 363
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    .line 373
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    .line 372
    :cond_c
    move-object v2, v0

    .line 375
    .end local v0    # "prop":Ljava/lang/String;
    .restart local v2    # "prop":Ljava/lang/String;
    :goto_b
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 376
    const-wide/16 v6, 0x4000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 377
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 378
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    :cond_d
    if-eqz v18, :cond_e

    .line 384
    const/4 v3, 0x0

    :try_start_d
    invoke-static {v3, v3}, Landroid/system/Os;->setreuid(II)V

    .line 385
    invoke-static {v3, v3}, Landroid/system/Os;->setregid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_d} :catch_9

    .line 388
    goto :goto_c

    .line 386
    :catch_9
    move-exception v0

    .line 387
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 391
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_e
    :goto_c
    sget-object v0, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v22

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v11, v19

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 391
    invoke-virtual {v0, v3}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v2    # "prop":Ljava/lang/String;
    nop

    .line 395
    :goto_d
    return-void

    .line 358
    :catchall_7
    move-exception v0

    move-object/from16 v11, v19

    :goto_e
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 361
    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 362
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 363
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "prop":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_f

    .line 373
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 375
    :cond_f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 376
    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 377
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 378
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    :cond_10
    if-eqz v18, :cond_11

    .line 384
    const/4 v2, 0x0

    :try_start_e
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 385
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_e} :catch_a

    .line 388
    goto :goto_f

    .line 386
    :catch_a
    move-exception v0

    .line 387
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 391
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_11
    :goto_f
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v22

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 391
    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v7    # "prop":Ljava/lang/String;
    throw v0

    .line 272
    .end local v1    # "count":I
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v16    # "reuid":I
    .end local v17    # "regid":I
    .end local v18    # "droppedPriviliges":Z
    .end local v22    # "startTime":J
    :catch_b
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private static blacklist preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .line 490
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 491
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 492
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 494
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 495
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 496
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 498
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 499
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static blacklist preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .line 508
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 509
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 510
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 512
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 513
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 517
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static blacklist preloadResources()V
    .locals 17

    .line 439
    const-string/jumbo v0, "ms"

    const-string v1, "Zygote:Preload "

    const-string/jumbo v2, "ms."

    const-string v3, " resources in "

    const-string v4, "...preloaded "

    const-string v5, "Zygote"

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 440
    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 442
    const-string v6, "Preloading resources..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v6, Lcom/android/internal/os/ZygoteInitExtPlugin;->hookPreloadResources:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 449
    .local v6, "startTime":J
    sget-object v10, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v11, 0x10700cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 451
    .local v10, "ar":Landroid/content/res/TypedArray;
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v11

    .line 452
    .local v11, "N":I
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 453
    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v12, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    new-array v13, v8, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " obtain resources in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v8, v15, v6

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v13, v9

    .line 456
    invoke-virtual {v12, v13}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v6, v8

    .line 461
    sget-object v8, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v9, 0x10700cb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 463
    .end local v10    # "ar":Landroid/content/res/TypedArray;
    .local v8, "ar":Landroid/content/res/TypedArray;
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v9

    .line 464
    .end local v11    # "N":I
    .local v9, "N":I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 465
    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v10, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v11, 0x111015d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-wide v6, v10

    .line 471
    sget-object v10, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v11, 0x10700cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v8, v10

    .line 473
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v10

    move v9, v10

    .line 474
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 475
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " resource in "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    sget-object v2, Lcom/android/internal/os/ZygoteInitExtPlugin;->addBootEvent:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 479
    invoke-virtual {v2, v4}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    nop

    .end local v6    # "startTime":J
    .end local v8    # "ar":Landroid/content/res/TypedArray;
    .end local v9    # "N":I
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Failure preloading resources"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private static blacklist preloadSharedLibraries()V
    .locals 3

    .line 195
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 197
    const-string v1, "compiler_rt"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "jnigraphics"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/Build;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    const-string/jumbo v1, "qti_performance"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Couldn\'t load qti_performance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void
.end method

.method private static blacklist preloadTextResources()V
    .locals 0

    .line 229
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 230
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 231
    return-void
.end method

.method private static blacklist prepareSystemServerProfile(Ljava/lang/String;)V
    .locals 12
    .param p0, "systemServerClasspath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    return-void

    .line 657
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "codePaths":[Ljava/lang/String;
    nop

    .line 660
    const-string v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    .line 662
    .local v1, "installd":Landroid/os/IInstalld;
    const-string v9, "android"

    .line 663
    .local v9, "systemServerPackageName":Ljava/lang/String;
    const-string/jumbo v10, "primary.prof"

    .line 664
    .local v10, "systemServerProfileName":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v2, 0x3e8

    .line 667
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v11, 0x0

    aget-object v7, v0, v11

    const/4 v8, 0x0

    .line 664
    move-object v2, v1

    move-object v3, v9

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 674
    .local v2, "curProfileDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "curProfilePath":Ljava/lang/String;
    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 677
    .local v4, "refProfileDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, "refProfilePath":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v9, v3, v5, v0, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 684
    return-void
.end method

.method public static blacklist setApiDenylistExemptions([Ljava/lang/String;)V
    .locals 1
    .param p0, "exemptions"    # [Ljava/lang/String;

    .line 690
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public static blacklist setHiddenApiAccessLogSampleRate(I)V
    .locals 1
    .param p0, "percent"    # I

    .line 694
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    .line 695
    return-void
.end method

.method public static blacklist setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .locals 0
    .param p0, "logger"    # Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

    .line 702
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 703
    return-void
.end method

.method private static blacklist shouldProfileSystemServer()Z
    .locals 2

    .line 533
    const-string v0, "dalvik.vm.profilesystemserver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 536
    .local v0, "defaultValue":Z
    const-string/jumbo v1, "persist.device_config.runtime_native_boot.profilesystemserver"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static blacklist waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 2
    .param p0, "socketName"    # Ljava/lang/String;

    .line 1028
    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    const-string/jumbo v0, "zygote_secondary"

    goto :goto_0

    :cond_0
    nop

    .line 1030
    .local v0, "otherZygoteName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method private static blacklist warmUpJcaProviders()V
    .locals 10

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 241
    .local v0, "startTime":J
    const-wide/16 v2, 0x4000

    const-string v4, "Starting installation of AndroidKeyStoreProvider"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    const-string v6, "Zygote"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 250
    const-string v4, "Starting warm up of JCA providers"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 252
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v4, v8

    .line 253
    .local v9, "p":Ljava/security/Provider;
    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 252
    .end local v9    # "p":Ljava/security/Provider;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 255
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 258
    return-void
.end method

.method public static blacklist zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "disabledCompatChanges"    # [J
    .param p2, "argv"    # [Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1063
    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 1066
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 1067
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 1068
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
