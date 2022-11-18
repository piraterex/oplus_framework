.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private greylist-max-o mAssetNativePtr:J

.field private greylist-max-o mLength:J

.field private greylist-max-o mMarkPos:J

.field final synthetic blacklist this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/AssetManager;J)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/AssetManager;
    .param p2, "assetNativePtr"    # J

    .line 1332
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1333
    iput-wide p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    .line 1334
    invoke-static {p2, p3}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetGetLength(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    .line 1335
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;J)V

    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .locals 4

    .line 1412
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1415
    return-void

    .line 1413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AssetInputStream is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1372
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1373
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetGetRemainingLength(J)J

    move-result-wide v0

    .line 1374
    .local v0, "len":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    return v2
.end method

.method public final whitelist test-api close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1397
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetDestroy(J)V

    .line 1398
    iput-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    .line 1400
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    monitor-enter v0

    .line 1401
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/res/AssetManager;->-$$Nest$mdecRefsLocked(Landroid/content/res/AssetManager;J)V

    .line 1402
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1404
    :cond_0
    :goto_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1408
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 1409
    return-void
.end method

.method public final greylist getAssetInt()I
    .locals 1

    .line 1321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist getNativeAsset()J
    .locals 2

    .line 1329
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    return-wide v0
.end method

.method public final whitelist test-api mark(I)V
    .locals 5
    .param p1, "readlimit"    # I

    .line 1384
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1385
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    .line 1386
    return-void
.end method

.method public final whitelist test-api markSupported()Z
    .locals 1

    .line 1379
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1340
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetReadChar(J)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api read([B)I
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1345
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1346
    const-string v0, "b"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1347
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetRead(J[BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1352
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1353
    const-string v0, "b"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1354
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetRead(J[BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1390
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1391
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    .line 1392
    return-void
.end method

.method public final whitelist test-api skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1359
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1360
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    move-result-wide v0

    .line 1361
    .local v0, "pos":J
    add-long v5, v0, p1

    iget-wide v7, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1362
    sub-long p1, v7, v0

    .line 1364
    :cond_0
    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 1365
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v2, v3, p1, p2, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    .line 1367
    :cond_1
    return-wide p1
.end method
