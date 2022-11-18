.class Landroid/service/media/MediaBrowserService$ServiceBinder$5;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic blacklist val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic blacklist val$mediaId:Ljava/lang/String;

.field final synthetic blacklist val$receiver:Landroid/os/ResultReceiver;

.field final synthetic blacklist val$service:Landroid/service/media/MediaBrowserService;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 379
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->this$0:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$service:Landroid/service/media/MediaBrowserService;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 382
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 383
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$service:Landroid/service/media/MediaBrowserService;

    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 384
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-nez v1, :cond_0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaItem for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowserService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 388
    :cond_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$service:Landroid/service/media/MediaBrowserService;

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v2, v3, v1, v4}, Landroid/service/media/MediaBrowserService;->-$$Nest$mperformLoadItem(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/ResultReceiver;)V

    .line 389
    return-void
.end method
