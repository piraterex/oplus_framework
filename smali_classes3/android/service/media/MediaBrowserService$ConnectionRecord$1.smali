.class Landroid/service/media/MediaBrowserService$ConnectionRecord$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ConnectionRecord;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService$ConnectionRecord;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 140
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;->this$0:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;->this$0:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v0, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->service:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;->this$0:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method
