.class Landroid/service/media/MediaBrowserService$ServiceBinder$3;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic blacklist val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic blacklist val$id:Ljava/lang/String;

.field final synthetic blacklist val$options:Landroid/os/Bundle;

.field final synthetic blacklist val$service:Landroid/service/media/MediaBrowserService;

.field final synthetic blacklist val$token:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 320
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$0:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$service:Landroid/service/media/MediaBrowserService;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$token:Landroid/os/IBinder;

    iput-object p6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 323
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 326
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$service:Landroid/service/media/MediaBrowserService;

    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 327
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-nez v1, :cond_0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowserService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 333
    :cond_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$service:Landroid/service/media/MediaBrowserService;

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$token:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$options:Landroid/os/Bundle;

    invoke-static {v2, v3, v1, v4, v5}, Landroid/service/media/MediaBrowserService;->-$$Nest$maddSubscription(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 334
    return-void
.end method
