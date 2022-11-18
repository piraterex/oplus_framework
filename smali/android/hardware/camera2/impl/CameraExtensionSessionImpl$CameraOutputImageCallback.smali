.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraOutputImageCallback"
.end annotation


# instance fields
.field private blacklist mImageListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mOutOfBuffers:Z

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;)V
    .locals 0
    .param p2, "imageReader"    # Landroid/media/ImageReader;

    .line 1236
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    .line 1234
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1237
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    .line 1238
    return-void
.end method

.method private blacklist notifyDroppedImages(J)V
    .locals 7
    .param p1, "timestamp"    # J

    .line 1272
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1273
    .local v0, "timestamps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v1, "removedTs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1275
    .local v3, "ts":J
    cmp-long v5, v3, p1

    if-gez v5, :cond_2

    .line 1276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropped image with ts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CameraExtensionSessionImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1278
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1279
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v6, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageDropped(J)V

    .line 1281
    :cond_0
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1282
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 1284
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    .end local v3    # "ts":J
    .end local v5    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_2
    goto :goto_0

    .line 1287
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1288
    .restart local v3    # "ts":J
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    .end local v3    # "ts":J
    goto :goto_1

    .line 1290
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 5

    .line 1313
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1314
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1315
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 1317
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_0
    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1319
    .local v1, "timestamp":J
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1320
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1321
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v4, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageDropped(J)V

    .line 1323
    .end local v1    # "timestamp":J
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_2
    goto :goto_1

    .line 1324
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1325
    return-void
.end method

.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 1244
    const-string v0, "CameraExtensionSessionImpl"

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    .local v1, "img":Landroid/media/Image;
    nop

    .line 1250
    if-nez v1, :cond_0

    .line 1251
    const-string v2, "Invalid image!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void

    .line 1255
    :cond_0
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1256
    .local v2, "timestamp":Ljava/lang/Long;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1257
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1258
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1259
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v0, p1, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V

    goto :goto_0

    .line 1261
    :cond_1
    const-string v4, "Invalid image listener, dropping frame!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1264
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :goto_0
    goto :goto_1

    .line 1265
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->notifyDroppedImages(J)V

    .line 1269
    return-void

    .line 1245
    .end local v1    # "img":Landroid/media/Image;
    .end local v2    # "timestamp":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 1246
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Failed to acquire image, too many images pending!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1248
    return-void
.end method

.method public blacklist registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V
    .locals 5
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "listener"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    .line 1293
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1294
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1295
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "CameraExtensionSessionImpl"

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    invoke-interface {p2, v1, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 1297
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    if-eqz v1, :cond_1

    .line 1298
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1299
    const-string v1, "Out of buffers, retry!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->onImageAvailable(Landroid/media/ImageReader;)V

    goto :goto_0

    .line 1303
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid image for listener with ts: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1304
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_1
    :goto_0
    goto :goto_1

    .line 1307
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    :goto_1
    return-void
.end method
