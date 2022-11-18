.class public final Landroid/webkit/WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# direct methods
.method constructor greylist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addWebViewAssetPath(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "newAssetPaths":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 185
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 186
    .local v2, "newLibAssets":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 187
    .local v5, "newAssetPath":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v2, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 186
    .end local v5    # "newAssetPath":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 196
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 199
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 200
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v3, v4, v0}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    :cond_1
    return-void
.end method

.method public whitelist callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist callDrawGlFunction(Landroid/graphics/Canvas;JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "releasedRunnable"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist detachDrawGlFunctor(Landroid/view/View;J)V
    .locals 3
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 141
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    .line 144
    :cond_0
    return-void
.end method

.method public whitelist drawWebViewFunctor(Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "functor"    # I

    .line 123
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, p2}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V

    .line 129
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a RecordingCanvas canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getApplication()Landroid/app/Application;
    .locals 1

    .line 166
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDataDirectorySuffix()Ljava/lang/String;
    .locals 1

    .line 219
    invoke-static {}, Landroid/webkit/WebViewFactory;->getDataDirectorySuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .line 173
    invoke-static {p2, p1}, Landroid/webkit/LegacyErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 150
    nop

    .line 151
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 152
    .local v0, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    .line 152
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;
    .locals 1

    .line 229
    invoke-static {}, Landroid/webkit/WebViewFactory;->getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;

    move-result-object v0

    return-object v0
.end method

.method public whitelist invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "waitForCompletion"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isMultiProcessEnabled()Z
    .locals 2

    .line 209
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->isMultiProcessEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isTraceTagEnabled()Z
    .locals 2

    .line 76
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;

    .line 64
    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
