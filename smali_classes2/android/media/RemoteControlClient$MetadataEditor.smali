.class public Landroid/media/RemoteControlClient$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist BITMAP_KEY_ARTWORK:I = 0x64

.field public static final greylist-max-o METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor blacklist <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;

    .line 415
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist apply()V
    .locals 5

    monitor-enter p0

    .line 557
    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t apply a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 559
    monitor-exit p0

    return-void

    .line 561
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmCacheLock(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 565
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->-$$Nest$fputmMetadata(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)V

    .line 567
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmMetadata(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;

    move-result-object v1

    const v2, 0x1fffffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 568
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 571
    :cond_1
    :try_start_4
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->-$$Nest$fputmOriginalArtwork(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)V

    .line 572
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 575
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmSession(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    :try_start_5
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v1, :cond_2

    .line 576
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->-$$Nest$fputmMediaMetadata(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)V

    .line 577
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmSession(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v2}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmMediaMetadata(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 579
    :cond_2
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    .line 580
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 580
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 556
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist clear()V
    .locals 1

    monitor-enter p0

    .line 547
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaMetadataEditor;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 546
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    .line 513
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_0

    .line 515
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 511
    .end local p1    # "key":I
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic whitelist putLong(IJ)Landroid/media/MediaMetadataEditor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 487
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;

    .line 488
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_0

    .line 490
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1, v0, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 486
    .end local p1    # "key":I
    .end local p2    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic whitelist putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 3
    .param p1, "key"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 527
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 528
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_1

    const v0, 0x10000001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 531
    :cond_0
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 533
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    move-object v2, p2

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_1
    monitor-exit p0

    return-object p0

    .line 526
    .end local p1    # "key":I
    .end local p2    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic whitelist putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;

    .line 458
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_0

    .line 460
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 456
    .end local p1    # "key":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
