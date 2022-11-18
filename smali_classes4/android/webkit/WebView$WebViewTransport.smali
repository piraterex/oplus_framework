.class public Landroid/webkit/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field private greylist-max-o mWebview:Landroid/webkit/WebView;

.field final synthetic blacklist this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor whitelist <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/WebView;

    .line 133
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist getWebView()Landroid/webkit/WebView;
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 152
    .end local p0    # "this":Landroid/webkit/WebView$WebViewTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;

    monitor-enter p0

    .line 142
    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Landroid/webkit/WebView$WebViewTransport;
    .end local p1    # "webview":Landroid/webkit/WebView;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
