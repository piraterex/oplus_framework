.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final blacklist ALLOWLISTED_DATA_INFO_MAP:Ljava/lang/String; = "--allowlisted-data-info-map"

.field private static final blacklist ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final blacklist API_ENFORCEMENT_POLICY_MASK:I = 0x3000

.field public static final blacklist API_ENFORCEMENT_POLICY_SHIFT:I

.field public static final blacklist BIND_MOUNT_APP_DATA_DIRS:Ljava/lang/String; = "--bind-mount-data-dirs"

.field public static final blacklist BIND_MOUNT_APP_STORAGE_DIRS:Ljava/lang/String; = "--bind-mount-storage-dirs"

.field public static final blacklist CHILD_ZYGOTE_ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static final blacklist CHILD_ZYGOTE_SOCKET_NAME_ARG:Ljava/lang/String; = "--zygote-socket="

.field public static final blacklist CHILD_ZYGOTE_UID_RANGE_END:Ljava/lang/String; = "--uid-range-end="

.field public static final blacklist CHILD_ZYGOTE_UID_RANGE_START:Ljava/lang/String; = "--uid-range-start="

.field public static final blacklist DEBUG_ALWAYS_JIT:I = 0x40

.field public static final blacklist DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final blacklist DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final blacklist DEBUG_ENABLE_JDWP:I = 0x1

.field public static final blacklist DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final blacklist DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final blacklist DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final blacklist DEBUG_GENERATE_MINI_DEBUG_INFO:I = 0x800

.field public static final blacklist DEBUG_IGNORE_APP_SIGNAL_HANDLER:I = 0x20000

.field public static final blacklist DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final blacklist DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final blacklist DISABLE_TEST_API_ENFORCEMENT_POLICY:I = 0x40000

.field public static final blacklist DISABLE_VERIFIER:I = 0x200

.field private static final blacklist GWP_ASAN:J = 0x8159f9eL

.field public static final blacklist GWP_ASAN_LEVEL_ALWAYS:I = 0x400000

.field public static final blacklist GWP_ASAN_LEVEL_LOTTERY:I = 0x200000

.field public static final blacklist GWP_ASAN_LEVEL_MASK:I = 0x600000

.field public static final blacklist GWP_ASAN_LEVEL_NEVER:I = 0x0

.field static final blacklist INT_ARRAY_2D:[[I

.field public static final blacklist MEMORY_TAG_LEVEL_ASYNC:I = 0x100000

.field public static final blacklist MEMORY_TAG_LEVEL_MASK:I = 0x180000

.field public static final blacklist MEMORY_TAG_LEVEL_NONE:I = 0x0

.field public static final blacklist MEMORY_TAG_LEVEL_SYNC:I = 0x180000

.field public static final blacklist MEMORY_TAG_LEVEL_TBI:I = 0x80000

.field public static final blacklist MOUNT_EXTERNAL_ANDROID_WRITABLE:I = 0x4

.field public static final blacklist MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final blacklist MOUNT_EXTERNAL_INSTALLER:I = 0x2

.field public static final blacklist MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final blacklist MOUNT_EXTERNAL_OPLUS_ANDROID_WRITABLE:I = 0x5

.field public static final blacklist MOUNT_EXTERNAL_PASS_THROUGH:I = 0x3

.field private static final blacklist NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field private static final blacklist NATIVE_HEAP_POINTER_TAGGING_SECONDARY_ZYGOTE:J = 0xc5f142dL

.field private static final blacklist NATIVE_HEAP_ZERO_INIT:J = 0xa9ca600L

.field public static final blacklist NATIVE_HEAP_ZERO_INIT_ENABLED:I = 0x800000

.field private static final blacklist NATIVE_MEMTAG_ASYNC:J = 0x817bb2cL

.field private static final blacklist NATIVE_MEMTAG_SYNC:J = 0xa937ebaL

.field public static final blacklist ONLY_USE_SYSTEM_OAT_FILES:I = 0x400

.field public static final blacklist PKG_DATA_INFO_MAP:Ljava/lang/String; = "--pkg-data-info-map"

.field public static final blacklist PRIMARY_SOCKET_NAME:Ljava/lang/String; = "zygote"

.field private static final blacklist PRIORITY_MAX:I = -0x14

.field public static final blacklist PROFILEABLE:I = 0x1000000

.field public static final blacklist PROFILE_FROM_SHELL:I = 0x8000

.field public static final blacklist PROFILE_SYSTEM_SERVER:I = 0x4000

.field public static final blacklist PROPERTY_CHECK_INTERVAL:J = 0xea60L

.field public static final blacklist RLIMIT_STACK_MASK:I = 0x40000000

.field public static final blacklist SECONDARY_SOCKET_NAME:Ljava/lang/String; = "zygote_secondary"

.field public static final blacklist SOCKET_BUFFER_SIZE:I = 0x100

.field public static final blacklist START_AS_TOP_APP_ARG:Ljava/lang/String; = "--is-top-app"

.field private static final blacklist STATIC_ZYGOTE_EXT:Lcom/android/internal/os/IZygoteExt;

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field public static final blacklist TERTIARY_SOCKET_NAME:Ljava/lang/String; = "zygote_tertiary"

.field private static final blacklist USAP_ERROR_PREFIX:Ljava/lang/String; = "Invalid command to USAP: "

.field static final blacklist USAP_MANAGEMENT_MESSAGE_BYTES:I = 0x8

.field public static final blacklist USAP_POOL_PRIMARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_primary"

.field public static final blacklist USAP_POOL_SECONDARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_secondary"

.field public static final blacklist USAP_POOL_TERTIARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_tertiary"

.field public static final blacklist USE_APP_IMAGE_STARTUP_CACHE:I = 0x10000


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 102
    nop

    .line 103
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    .line 327
    sget-object v0, Lcom/android/internal/os/ZygoteExtPlugin;->constructor:Lcom/oplus/reflect/RefConstructor;

    invoke-virtual {v0}, Lcom/oplus/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IZygoteExt;

    sput-object v0, Lcom/android/internal/os/Zygote;->STATIC_ZYGOTE_EXT:Lcom/android/internal/os/IZygoteExt;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 537
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 538
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 537
    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method static blacklist allowFilesOpenedByPreload()V
    .locals 0

    .line 567
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeAllowFilesOpenedByPreload()V

    .line 568
    return-void
.end method

.method static blacklist appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 6
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1197
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1198
    .local v2, "arg":Ljava/lang/String;
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\'\\\'\'"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    :cond_0
    return-void
.end method

.method static blacklist applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .locals 1
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 1067
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1068
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1070
    :cond_0
    return-void
.end method

.method static blacklist applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .locals 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 1090
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is permitted to specify an explicit invoke-with wrapper command only for debuggable applications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1096
    :cond_1
    :goto_0
    return-void
.end method

.method static blacklist applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .locals 1
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 1123
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    .line 1126
    :cond_0
    return-void
.end method

.method static blacklist applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .locals 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1040
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v1, "System UID may not launch process with UID < 1000"

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1048
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 1049
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 1051
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v0, :cond_3

    .line 1052
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 1053
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 1055
    :cond_3
    return-void
.end method

.method private static blacklist blockSigTerm()V
    .locals 0

    .line 925
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBlockSigTerm()V

    .line 926
    return-void
.end method

.method private static blacklist boostUsapPriority()V
    .locals 0

    .line 937
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBoostUsapPriority()V

    .line 938
    return-void
.end method

.method private static blacklist callPostForkChildHooks(IZZLjava/lang/String;)V
    .locals 0
    .param p0, "runtimeFlags"    # I
    .param p1, "isSystemServer"    # Z
    .param p2, "isZygote"    # Z
    .param p3, "instructionSet"    # Ljava/lang/String;

    .line 1168
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->postForkChild(IZZLjava/lang/String;)V

    .line 1169
    return-void
.end method

.method private static blacklist callPostForkSystemServerHooks(I)V
    .locals 0
    .param p0, "runtimeFlags"    # I

    .line 1161
    invoke-static {p0}, Ldalvik/system/ZygoteHooks;->postForkSystemServer(I)V

    .line 1162
    return-void
.end method

.method private static blacklist childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .locals 28
    .param p0, "argBuffer"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p1, "usapPoolSocket"    # Landroid/net/LocalServerSocket;
    .param p2, "writePipe"    # Ljava/io/FileDescriptor;

    .line 773
    move-object/from16 v1, p2

    const-string v2, "Failed to close USAP pool socket"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 775
    .local v3, "pid":I
    const/4 v4, 0x0

    .line 776
    .local v4, "usapOutputStream":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 778
    .local v5, "args":Lcom/android/internal/os/ZygoteArguments;
    const/4 v6, 0x0

    .line 779
    .local v6, "sessionSocket":Landroid/net/LocalSocket;
    const-string v7, "USAP"

    if-nez p0, :cond_1

    .line 782
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "usap64"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "usap32"

    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lcom/android/internal/os/Zygote;->boostUsapPriority()V

    .line 790
    :goto_1
    const/4 v8, 0x0

    .line 792
    .local v8, "tmpArgBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    move-object v6, v0

    .line 796
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 798
    new-instance v0, Ljava/io/DataOutputStream;

    .line 799
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 800
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    .line 801
    .local v0, "peerCredentials":Landroid/net/Credentials;
    new-instance v9, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v9, v6}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    move-object v8, v9

    .line 802
    invoke-static {v8}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v9

    move-object v5, v9

    .line 803
    invoke-static {v5, v0}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 805
    invoke-static {v5}, Lcom/android/internal/os/Zygote;->validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_2

    .line 807
    .end local v0    # "peerCredentials":Landroid/net/Credentials;
    :catch_0
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 812
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 813
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 814
    .end local v8    # "tmpArgBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    goto :goto_1

    .line 817
    :cond_1
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 819
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v5, v0

    .line 823
    nop

    .line 826
    :goto_2
    if-eqz v5, :cond_6

    .line 832
    :try_start_2
    iget v0, v5, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v0, v8

    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 833
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeReserveRlimitStack()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 920
    :catchall_0
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    goto/16 :goto_a

    .line 839
    :cond_2
    :goto_3
    :try_start_4
    invoke-static {v5}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 841
    const/4 v0, 0x0

    .line 843
    .local v0, "rlimits":[[I
    iget-object v8, v5, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v8, :cond_3

    .line 844
    :try_start_5
    iget-object v8, v5, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v8

    move-object/from16 v24, v0

    goto :goto_4

    .line 843
    :cond_3
    move-object/from16 v24, v0

    .line 847
    .end local v0    # "rlimits":[[I
    .local v24, "rlimits":[[I
    :goto_4
    if-nez p0, :cond_4

    .line 853
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 866
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 867
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 868
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 872
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    goto :goto_7

    .line 869
    :catch_1
    move-exception v0

    .line 870
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_5
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 859
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 854
    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 855
    .local v0, "ioEx":Ljava/io/IOException;
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write response to session socket: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 856
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 855
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v24    # "rlimits":[[I
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 866
    .end local v0    # "ioEx":Ljava/io/IOException;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v24    # "rlimits":[[I
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_6
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 867
    .local v8, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 868
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 872
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 873
    nop

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    :try_start_b
    throw v0

    .line 869
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :catch_3
    move-exception v0

    .line 870
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 876
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 878
    const/4 v2, 0x0

    :try_start_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 880
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 887
    .local v8, "outputStream":Ljava/io/DataOutputStream;
    int-to-long v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 888
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 889
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-static {v1, v9, v2, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 896
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "outputStream":Ljava/io/DataOutputStream;
    :try_start_d
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 897
    goto :goto_9

    .line 896
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 890
    :catch_4
    move-exception v0

    .line 891
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_e
    const-string v8, "Failed to write PID (%d) to pipe (%d): %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 893
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 892
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v24    # "rlimits":[[I
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 896
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v24    # "rlimits":[[I
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_8
    :try_start_f
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 897
    nop

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 900
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :cond_5
    :goto_9
    :try_start_10
    iget v8, v5, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v9, v5, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v10, v5, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v11, v5, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v13, v5, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v14, v5, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget-boolean v0, v5, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    iget-object v2, v5, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    iget-boolean v12, v5, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    iget-object v1, v5, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move/from16 v25, v3

    .end local v3    # "pid":I
    .local v25, "pid":I
    :try_start_11
    iget-object v3, v5, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object/from16 v26, v4

    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .local v26, "usapOutputStream":Ljava/io/DataOutputStream;
    :try_start_12
    iget-boolean v4, v5, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object/from16 v27, v6

    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .local v27, "sessionSocket":Landroid/net/LocalSocket;
    :try_start_13
    iget-boolean v6, v5, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v19, v12

    move-object/from16 v12, v24

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v6

    invoke-static/range {v8 .. v23}, Lcom/android/internal/os/Zygote;->specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 909
    sget-object v0, Lcom/android/internal/os/Zygote;->STATIC_ZYGOTE_EXT:Lcom/android/internal/os/IZygoteExt;

    iget-object v1, v5, Lcom/android/internal/os/ZygoteArguments;->mZygoteArgumentsExt:Lcom/android/internal/os/IZygoteArgumentsExt;

    invoke-interface {v0, v5, v1}, Lcom/android/internal/os/IZygoteExt;->afterSpecializeAppProcessInChildMain(Lcom/android/internal/os/ZygoteArguments;Lcom/android/internal/os/IZygoteArgumentsExt;)V

    .line 912
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 914
    iget v0, v5, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v1, v5, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v2, v5, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 920
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 914
    return-object v0

    .line 920
    .end local v24    # "rlimits":[[I
    :catchall_3
    move-exception v0

    goto :goto_a

    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :catchall_4
    move-exception v0

    move-object/from16 v27, v6

    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v27    # "sessionSocket":Landroid/net/LocalSocket;
    goto :goto_a

    .end local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :catchall_5
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v27    # "sessionSocket":Landroid/net/LocalSocket;
    goto :goto_a

    .end local v25    # "pid":I
    .end local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :catchall_6
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v25    # "pid":I
    .restart local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v27    # "sessionSocket":Landroid/net/LocalSocket;
    :goto_a
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 921
    throw v0

    .line 827
    .end local v25    # "pid":I
    .end local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Empty command line"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 820
    :catch_5
    move-exception v0

    move/from16 v25, v3

    move-object v1, v0

    .end local v3    # "pid":I
    .restart local v25    # "pid":I
    move-object v0, v1

    .line 821
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStartup"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Failed to parse application start command"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist containsInetGid([I)Z
    .locals 3
    .param p0, "gids"    # [I

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 334
    aget v1, p0, v0

    const/16 v2, 0xbbb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;
    .locals 6
    .param p0, "socketName"    # Ljava/lang/String;

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "env":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 1145
    .local v1, "fileDesc":I
    nop

    .line 1148
    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 1149
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1150
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1151
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v2

    .line 1152
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error building socket from file descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1143
    .end local v1    # "fileDesc":I
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1144
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket unset or invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .locals 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1390
    const/4 v0, -0x1

    const/high16 v1, 0x400000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v4, v0, :cond_1

    .line 1391
    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v2, :cond_0

    .line 1392
    goto :goto_0

    .line 1393
    :cond_0
    move v1, v3

    .line 1391
    :goto_0
    return v1

    .line 1396
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v4

    if-eq v4, v0, :cond_3

    .line 1397
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1398
    goto :goto_1

    .line 1399
    :cond_2
    move v1, v3

    .line 1397
    :goto_1
    return v1

    .line 1403
    :cond_3
    const-wide/32 v4, 0x8159f9e

    invoke-static {v4, v5, p0, p2, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1404
    return v1

    .line 1406
    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 1407
    const/high16 v0, 0x200000

    return v0

    .line 1409
    :cond_5
    return v3
.end method

.method private static blacklist decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1361
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/Zygote;->getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1364
    .local v0, "level":I
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_3

    .line 1368
    const/4 v0, 0x0

    goto :goto_0

    .line 1370
    :cond_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1374
    const/high16 v1, 0x100000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x180000

    if-ne v0, v1, :cond_3

    .line 1375
    :cond_1
    const/high16 v0, 0x80000

    goto :goto_0

    .line 1379
    :cond_2
    const/4 v0, 0x0

    .line 1382
    :cond_3
    :goto_0
    return v0
.end method

.method static blacklist emptyUsapPool()V
    .locals 0

    .line 624
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeEmptyUsapPool()V

    .line 625
    return-void
.end method

.method private static blacklist enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1417
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget v3, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-eq v3, v0, :cond_1

    .line 1419
    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1422
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 1423
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1426
    :cond_3
    const-wide/32 v3, 0xa9ca600

    invoke-static {v3, v4, p0, p2, v1}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1427
    return v2

    .line 1429
    :cond_4
    return v1
.end method

.method static blacklist execShell(Ljava/lang/String;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    .line 1179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 1181
    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    nop

    .line 1185
    return-void

    .line 1182
    :catch_0
    move-exception v1

    .line 1183
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .locals 5
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "fdsToClose"    # [I
    .param p9, "fdsToIgnore"    # [I
    .param p10, "startChildZygote"    # Z
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "isTopApp"    # Z
    .param p14, "pkgDataInfoList"    # [Ljava/lang/String;
    .param p15, "allowlistedDataInfoList"    # [Ljava/lang/String;
    .param p16, "bindMountAppDataDirs"    # Z
    .param p17, "bindMountAppStorageDirs"    # Z

    .line 384
    move-object v0, p2

    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 386
    invoke-static/range {p0 .. p17}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v1

    .line 391
    .local v1, "pid":I
    if-nez v1, :cond_0

    .line 393
    const-wide/16 v2, 0x40

    const-string v4, "PostFork"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 396
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 397
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 402
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 404
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 405
    return v1
.end method

.method static blacklist forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "argBuffer"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p1, "zygoteSocket"    # Ljava/io/FileDescriptor;
    .param p2, "expectedUid"    # I
    .param p3, "minUid"    # I
    .param p4, "firstNiceName"    # Ljava/lang/String;

    .line 751
    nop

    .line 752
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/ZygoteCommandBuffer;->forkRepeatedly(Ljava/io/FileDescriptor;IILjava/lang/String;)Z

    move-result v0

    .line 753
    .local v0, "in_child":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 754
    invoke-static {p0, v1, v1}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 756
    :cond_0
    return-object v1
.end method

.method static blacklist forkSystemServer(II[II[[IJJ)I
    .locals 3
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .line 509
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 511
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 516
    .local v0, "pid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 518
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 519
    return v0
.end method

.method static blacklist forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;
    .locals 5
    .param p0, "usapPoolSocket"    # Landroid/net/LocalServerSocket;
    .param p1, "sessionSocketRawFDs"    # [I
    .param p2, "isPriorityFork"    # Z

    .line 692
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 693
    .local v0, "pipeFDs":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 694
    .local v2, "readFD":Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    aget-object v3, v0, v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 697
    .local v0, "writeFD":Ljava/io/FileDescriptor;
    nop

    .line 699
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v3, v4, p1, v1, p2}, Lcom/android/internal/os/Zygote;->nativeForkApp(II[IZZ)I

    move-result v1

    .line 701
    .local v1, "pid":I
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 702
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 703
    invoke-static {v3, p0, v0}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v3

    return-object v3

    .line 704
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 706
    return-object v3

    .line 709
    :cond_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 710
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/os/Zygote;->nativeAddUsapTableEntry(II)V

    .line 711
    return-object v3

    .line 695
    .end local v0    # "writeFD":Ljava/io/FileDescriptor;
    .end local v1    # "pid":I
    .end local v2    # "readFD":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "errnoEx":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create USAP pipe."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 615
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 616
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getConfigurationPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Boolean;

    .line 643
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 644
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 643
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1441
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1452
    .local v0, "runtimeFlags":I
    if-eqz p2, :cond_0

    const-string v1, "arm64"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1453
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1455
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1456
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1458
    :cond_2
    return v0
.end method

.method public static blacklist getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;

    .line 1467
    nop

    .line 1469
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1468
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1470
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    nop

    .line 1471
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v1

    .line 1475
    .local v1, "runtimeFlags":I
    const/high16 v2, 0x180000

    and-int/2addr v2, v1

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_0

    const-wide/32 v2, 0xc5f142d

    const/16 v4, 0x1f

    .line 1476
    invoke-static {v2, v3, p0, v0, v4}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1482
    const v2, -0x180001

    and-int/2addr v1, v2

    .line 1483
    or-int/lit8 v1, v1, 0x0

    .line 1485
    :cond_0
    return v1
.end method

.method private static blacklist getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1318
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v1, v0, :cond_0

    .line 1319
    iget v0, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result v0

    return v0

    .line 1323
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1324
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result v0

    return v0

    .line 1327
    :cond_1
    const-wide/32 v0, 0xa937eba

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p2, v2}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    const/high16 v1, 0x180000

    if-eqz v0, :cond_2

    .line 1328
    return v1

    .line 1331
    :cond_2
    const-wide/32 v3, 0x817bb2c

    invoke-static {v3, v4, p0, p2, v2}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    const/high16 v3, 0x100000

    if-eqz v0, :cond_3

    .line 1332
    return v3

    .line 1336
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1337
    return v2

    .line 1340
    :cond_4
    const-string/jumbo v0, "persist.arm64.memtag.app_default"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "defaultLevel":Ljava/lang/String;
    const-string/jumbo v4, "sync"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1342
    return v1

    .line 1343
    :cond_5
    const-string v1, "async"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1344
    return v3

    .line 1348
    :cond_6
    const-wide/32 v3, 0x81774ca

    const/16 v1, 0x1d

    invoke-static {v3, v4, p0, p2, v1}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1350
    const/high16 v1, 0x80000

    return v1

    .line 1353
    :cond_7
    return v2
.end method

.method static blacklist getUsapPipeFDs()[I
    .locals 1

    .line 994
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPipeFDs()[I

    move-result-object v0

    return-object v0
.end method

.method static blacklist getUsapPoolCount()I
    .locals 1

    .line 655
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolCount()I

    move-result v0

    return v0
.end method

.method static blacklist getUsapPoolEventFD()Ljava/io/FileDescriptor;
    .locals 2

    .line 665
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 666
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolEventFD()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 668
    return-object v0
.end method

.method public static blacklist getWrapProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;

    .line 1106
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1112
    return-object v1

    .line 1114
    :cond_1
    return-object v0

    .line 1107
    .end local v1    # "propertyValue":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0
.end method

.method static blacklist initNativeState()V
    .locals 0

    .line 599
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeInitZygoteTertiary()V

    .line 600
    return-void
.end method

.method static blacklist initNativeState(Z)V
    .locals 0
    .param p0, "isPrimary"    # Z

    .line 589
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeInitNativeState(Z)V

    .line 590
    return-void
.end method

.method private static blacklist isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z
    .locals 1
    .param p0, "change"    # J
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;
    .param p4, "enabledAfter"    # I

    .line 1306
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1307
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1308
    :cond_0
    nop

    .line 1309
    :goto_0
    if-lez p4, :cond_1

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v0, p4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static blacklist markOpenedFilesBeforePreload()V
    .locals 0

    .line 553
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeMarkOpenedFilesBeforePreload()V

    .line 554
    return-void
.end method

.method private static blacklist memtagModeToZygoteMemtagLevel(I)I
    .locals 1
    .param p0, "memtagMode"    # I

    .line 1290
    packed-switch p0, :pswitch_data_0

    .line 1296
    const/4 v0, 0x0

    return v0

    .line 1294
    :pswitch_0
    const/high16 v0, 0x180000

    return v0

    .line 1292
    :pswitch_1
    const/high16 v0, 0x100000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist minChildUid(Landroid/net/Credentials;)I
    .locals 2
    .param p0, "peer"    # Landroid/net/Credentials;

    .line 1019
    invoke-virtual {p0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1020
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    return v1

    .line 1026
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static native blacklist nativeAddUsapTableEntry(II)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method protected static native blacklist nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeAllowFilesOpenedByPreload()V
.end method

.method private static native blacklist nativeBlockSigTerm()V
.end method

.method private static native blacklist nativeBoostUsapPriority()V
.end method

.method public static native blacklist nativeCurrentTaggingLevel()I
.end method

.method private static native blacklist nativeEmptyUsapPool()V
.end method

.method private static native blacklist nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I
.end method

.method private static native blacklist nativeForkApp(II[IZZ)I
.end method

.method private static native blacklist nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static native blacklist nativeGetUsapPipeFDs()[I
.end method

.method private static native blacklist nativeGetUsapPoolCount()I
.end method

.method private static native blacklist nativeGetUsapPoolEventFD()I
.end method

.method protected static native blacklist nativeInitNativeState(Z)V
.end method

.method protected static native blacklist nativeInitZygoteTertiary()V
.end method

.method protected static native blacklist nativeInstallSeccompUidGidFilter(II)V
.end method

.method private static native blacklist nativeMarkOpenedFilesBeforePreload()V
.end method

.method public static native blacklist nativeParseSigChld([BI[I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native blacklist nativePreApplicationInit()V
.end method

.method private static native blacklist nativeRemoveUsapTableEntry(I)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReserveRlimitStack()V
.end method

.method private static native blacklist nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V
.end method

.method public static native blacklist nativeSupportsMemoryTagging()Z
.end method

.method public static native blacklist nativeSupportsTaggedPointers()Z
.end method

.method private static native blacklist nativeUnblockSigTerm()V
.end method

.method static blacklist removeUsapTableEntry(I)Z
    .locals 1
    .param p0, "usapPID"    # I

    .line 1006
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeRemoveUsapTableEntry(I)Z

    move-result v0

    return v0
.end method

.method static blacklist setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "loggingTag"    # Ljava/lang/String;

    .line 943
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_1
    const-string v0, "Unable to set package name."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_0
    return-void
.end method

.method private static blacklist specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "startChildZygote"    # Z
    .param p9, "instructionSet"    # Ljava/lang/String;
    .param p10, "appDataDir"    # Ljava/lang/String;
    .param p11, "isTopApp"    # Z
    .param p12, "pkgDataInfoList"    # [Ljava/lang/String;
    .param p13, "allowlistedDataInfoList"    # [Ljava/lang/String;
    .param p14, "bindMountAppDataDirs"    # Z
    .param p15, "bindMountAppStorageDirs"    # Z

    .line 449
    move-object v0, p2

    invoke-static/range {p0 .. p15}, Lcom/android/internal/os/Zygote;->nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 455
    const-wide/16 v1, 0x40

    const-string v3, "PostFork"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 457
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 458
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 462
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 470
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 471
    return-void
.end method

.method private static blacklist unblockSigTerm()V
    .locals 0

    .line 931
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnblockSigTerm()V

    .line 932
    return-void
.end method

.method private static blacklist validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 960
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v0, :cond_a

    .line 962
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-nez v0, :cond_9

    .line 964
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-nez v0, :cond_8

    .line 966
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 968
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 970
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_5

    .line 972
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v0, :cond_4

    .line 975
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 978
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-ne v0, v1, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 983
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 988
    return-void

    .line 984
    :cond_0
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 985
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 986
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --invoke-with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-statslog-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-log-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --set-api-denylist-exemptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --start-child-zygote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --get-pid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --query-abi-list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
