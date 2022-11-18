.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "WebViewZygote.java"


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sMultiprocessEnabled:Z

.field private static greylist-max-o sPackage:Landroid/content/pm/PackageInfo;

.field private static greylist-max-o sZygote:Landroid/os/ChildZygoteProcess;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o connectToZygoteIfNeededLocked()V
    .locals 15

    .line 120
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    const-string v1, "WebViewZygote"

    if-nez v0, :cond_1

    .line 125
    const-string v0, "Cannot connect to zygote, no package specified"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 130
    :cond_1
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 131
    .local v0, "abi":Ljava/lang/String;
    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I

    move-result v8

    .line 133
    .local v8, "runtimeFlags":I
    sget-object v2, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const-string v3, "com.android.internal.os.WebViewZygoteInit"

    const-string/jumbo v4, "webview_zygote"

    const/16 v5, 0x41d

    const/16 v6, 0x41d

    const/4 v7, 0x0

    const-string/jumbo v9, "webview_zygote"

    const-string v10, ","

    sget-object v11, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 142
    invoke-static {v10, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x182b8

    const v14, 0x7fffffff

    .line 133
    move-object v10, v0

    invoke-virtual/range {v2 .. v14}, Landroid/os/ZygoteProcess;->startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    .line 146
    invoke-virtual {v2}, Landroid/os/ChildZygoteProcess;->getPrimarySocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 147
    sget-object v2, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    sget-object v3, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v0}, Landroid/os/ChildZygoteProcess;->preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    nop

    .end local v0    # "abi":Ljava/lang/String;
    .end local v8    # "runtimeFlags":I
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error connecting to webview zygote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static greylist-max-o getPackageName()Ljava/lang/String;
    .locals 2

    .line 69
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o getProcess()Landroid/os/ZygoteProcess;
    .locals 2

    .line 60
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 63
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V

    .line 64
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o isMultiprocessEnabled()Z
    .locals 2

    .line 75
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static blacklist onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 93
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 97
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-nez v1, :cond_0

    .line 98
    monitor-exit v0

    return-void

    .line 101
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o setMultiprocessEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 81
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 86
    if-nez p0, :cond_0

    .line 87
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 89
    :cond_0
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o stopZygoteLocked()V
    .locals 1

    .line 107
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->close()V

    .line 113
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    .line 116
    :cond_0
    return-void
.end method
