.class public interface abstract Landroid/webkit/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactoryProvider$Statics;
    }
.end annotation


# virtual methods
.method public whitelist createPacProcessor()Landroid/webkit/PacProcessor;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
.end method

.method public abstract whitelist getCookieManager()Landroid/webkit/CookieManager;
.end method

.method public abstract whitelist getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
.end method

.method public whitelist getPacProcessor()Landroid/webkit/PacProcessor;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getServiceWorkerController()Landroid/webkit/ServiceWorkerController;
.end method

.method public abstract whitelist getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
.end method

.method public abstract whitelist getTokenBindingService()Landroid/webkit/TokenBindingService;
.end method

.method public abstract whitelist getTracingController()Landroid/webkit/TracingController;
.end method

.method public abstract whitelist getWebIconDatabase()Landroid/webkit/WebIconDatabase;
.end method

.method public abstract whitelist getWebStorage()Landroid/webkit/WebStorage;
.end method

.method public abstract whitelist getWebViewClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract whitelist getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
.end method
