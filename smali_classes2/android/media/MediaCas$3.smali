.class Landroid/media/MediaCas$3;
.super Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaCas;

    .line 396
    iput-object p1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReclaimResources()V
    .locals 4

    .line 399
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmSessionMap(Landroid/media/MediaCas;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-$$Nest$fgetmSessionMap(Landroid/media/MediaCas;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCas$Session;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCas$Session;

    .line 402
    .local v3, "casSession":Landroid/media/MediaCas$Session;
    invoke-virtual {v3}, Landroid/media/MediaCas$Session;->close()V

    .line 403
    .end local v3    # "casSession":Landroid/media/MediaCas$Session;
    goto :goto_0

    .line 404
    .end local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCas$Session;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaCas$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    return-void

    .line 404
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
