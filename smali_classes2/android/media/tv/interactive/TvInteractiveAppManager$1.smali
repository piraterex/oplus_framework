.class Landroid/media/tv/interactive/TvInteractiveAppManager$1;
.super Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;-><init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager;

    .line 319
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAdRequest(Landroid/media/tv/AdRequest;I)V
    .locals 5
    .param p1, "request"    # Landroid/media/tv/AdRequest;
    .param p2, "seq"    # I

    .line 419
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 421
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 422
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v0

    return-void

    .line 425
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postAdRequest(Landroid/media/tv/AdRequest;)V

    .line 426
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 5
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;
    .param p3, "seq"    # I

    .line 516
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 518
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 519
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-exit v0

    return-void

    .line 522
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V

    .line 523
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V
    .locals 5
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;
    .param p2, "seq"    # I

    .line 368
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 370
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 371
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit v0

    return-void

    .line 374
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 375
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 395
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 397
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 398
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v0

    return-void

    .line 401
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 402
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onLayoutSurface(IIIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "seq"    # I

    .line 356
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 358
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 359
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    monitor-exit v0

    return-void

    .line 362
    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    .line 363
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRemoveBroadcastInfo(II)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "seq"    # I

    .line 380
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 382
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 383
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v0

    return-void

    .line 386
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRemoveBroadcastInfo(I)V

    .line 387
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentChannelLcn(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 443
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 445
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 446
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    monitor-exit v0

    return-void

    .line 449
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentChannelLcn()V

    .line 450
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentChannelUri(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 431
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 433
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 434
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    monitor-exit v0

    return-void

    .line 437
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    .line 438
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentTvInputId(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 479
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 481
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 482
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    monitor-exit v0

    return-void

    .line 485
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    .line 486
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "seq"    # I

    .line 492
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 494
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 495
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    monitor-exit v0

    return-void

    .line 498
    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 499
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestStreamVolume(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 455
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 457
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 458
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v0

    return-void

    .line 461
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStreamVolume()V

    .line 462
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestTrackInfoList(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 467
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 469
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 470
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v0

    return-void

    .line 473
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    .line 474
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 15
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "seq"    # I

    .line 323
    move-object v1, p0

    move-object/from16 v10, p2

    move/from16 v11, p4

    iget-object v0, v1, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v12

    monitor-enter v12

    .line 324
    :try_start_0
    iget-object v0, v1, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 325
    .local v0, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    .line 326
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit v12

    return-void

    .line 329
    :cond_0
    const/4 v13, 0x0

    .line 330
    .local v13, "session":Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    if-eqz v10, :cond_1

    .line 331
    new-instance v14, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v2, v1, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;

    move-result-object v5

    iget-object v2, v1, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I

    move-result v6

    iget-object v2, v1, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;Landroid/media/tv/interactive/TvInteractiveAppManager$Session-IA;)V

    move-object v13, v14

    goto :goto_0

    .line 334
    :cond_1
    iget-object v2, v1, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 336
    :goto_0
    invoke-virtual {v0, v13}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 337
    .end local v0    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .end local v13    # "session":Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    monitor-exit v12

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onSessionReleased(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 342
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 344
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 345
    if-nez v1, :cond_0

    .line 346
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v0

    return-void

    .line 349
    :cond_0
    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 350
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionReleased()V

    .line 351
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSessionStateChanged(III)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "err"    # I
    .param p3, "seq"    # I

    .line 504
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 506
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 507
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    monitor-exit v0

    return-void

    .line 510
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionStateChanged(II)V

    .line 511
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSetVideoBounds(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "seq"    # I

    .line 407
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 409
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 410
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    monitor-exit v0

    return-void

    .line 413
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSetVideoBounds(Landroid/graphics/Rect;)V

    .line 414
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onTeletextAppStateChanged(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "seq"    # I

    .line 528
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 530
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_0

    .line 531
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    monitor-exit v0

    return-void

    .line 534
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postTeletextAppStateChanged(I)V

    .line 535
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
