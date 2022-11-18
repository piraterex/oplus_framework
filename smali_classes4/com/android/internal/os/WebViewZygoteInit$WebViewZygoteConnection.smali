.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private blacklist doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "libFileName"    # Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "preloadInZygote"

    const-string v1, "WebViewZygoteInit"

    invoke-static {p1, p2}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "preloadSucceeded":Z
    nop

    .line 119
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 120
    .local v5, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 121
    .local v6, "preloadInZygote":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 122
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_0

    .line 123
    const-string v0, "Unexpected return type: preloadInZygote must return boolean"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_0
    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    .line 127
    if-nez v2, :cond_1

    .line 128
    const-string/jumbo v0, "preloadInZygote returned false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v5    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v6    # "preloadInZygote":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v5, "Exception while preloading package"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 137
    .local v0, "socketOut":Ljava/io/DataOutputStream;
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v0    # "socketOut":Ljava/io/DataOutputStream;
    nop

    .line 141
    return-void

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Error writing to command socket"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .locals 10
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning application preload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewZygoteInit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/app/LoadedApk;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 78
    .local v0, "loadedApk":Landroid/app/LoadedApk;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 79
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 81
    invoke-static {p1}, Lcom/android/internal/os/Zygote;->allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V

    .line 83
    const-string v3, "Application preload done"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method protected blacklist handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "libFileName"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;

    .line 89
    const-string v0, "WebViewZygoteInit"

    const-string v1, "Beginning package preload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Landroid/app/ApplicationLoaders;->createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 98
    .local v1, "loader":Ljava/lang/ClassLoader;
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "packageList":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 100
    .local v5, "packageEntry":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 99
    .end local v5    # "packageEntry":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0, v1, p3}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 105
    const-string v3, "Package preload done"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method protected blacklist isPreloadComplete()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist preload()V
    .locals 0

    .line 60
    return-void
.end method
