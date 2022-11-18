.class Landroid/media/browse/MediaBrowser$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;

    .line 215
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 219
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceBinder(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/media/IMediaBrowserService;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException during connect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceComponent(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaBrowser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I

    move-result v0

    .line 229
    .local v0, "state":I
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$mforceCloseConnection(Landroid/media/browse/MediaBrowser;)V

    .line 232
    if-eqz v0, :cond_1

    .line 233
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1, v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmState(Landroid/media/browse/MediaBrowser;I)V

    .line 239
    :cond_1
    return-void
.end method
