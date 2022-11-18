.class Landroid/media/browse/MediaBrowser$ServiceCallbacks;
.super Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacks"
.end annotation


# instance fields
.field private greylist-max-o mMediaBrowser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/browse/MediaBrowser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 1
    .param p1, "mediaBrowser"    # Landroid/media/browse/MediaBrowser;

    .line 1080
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;-><init>()V

    .line 1081
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    .line 1082
    return-void
.end method


# virtual methods
.method public greylist-max-o onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/media/session/MediaSession$Token;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1091
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1092
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    .line 1093
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-$$Nest$monServiceConnected(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    .line 1095
    :cond_0
    return-void
.end method

.method public greylist-max-o onConnectFailed()V
    .locals 1

    .line 1102
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1103
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    .line 1104
    invoke-static {v0, p0}, Landroid/media/browse/MediaBrowser;->-$$Nest$monConnectionFailed(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public blacklist onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "list"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1110
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1111
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    .line 1112
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-$$Nest$monLoadChildren(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    .line 1114
    :cond_0
    return-void
.end method
