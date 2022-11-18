.class public final Landroid/webkit/WebViewUpdateService;
.super Ljava/lang/Object;
.source "WebViewUpdateService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor greylist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    .line 36
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 37
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_0

    .line 38
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    .line 41
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 3

    .line 66
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 67
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static greylist-max-o getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .line 78
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    .line 51
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 52
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_0

    .line 53
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    .line 56
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
