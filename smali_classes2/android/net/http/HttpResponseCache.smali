.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/android/okhttp/internalandroidapi/HasCacheHolder;
.implements Ljava/io/Closeable;


# instance fields
.field private final blacklist mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    .line 155
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    .line 157
    return-void
.end method

.method public static whitelist getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    .line 164
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 165
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_0

    .line 166
    move-object v1, v0

    check-cast v1, Landroid/net/http/HttpResponseCache;

    return-object v1

    .line 168
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized whitelist install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Landroid/net/http/HttpResponseCache;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .line 184
    .local v1, "installed":Ljava/net/ResponseCache;
    instance-of v2, v1, Landroid/net/http/HttpResponseCache;

    if-eqz v2, :cond_1

    .line 185
    move-object v2, v1

    check-cast v2, Landroid/net/http/HttpResponseCache;

    .line 186
    .local v2, "installedResponseCache":Landroid/net/http/HttpResponseCache;
    invoke-virtual {v2}, Landroid/net/http/HttpResponseCache;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v3

    .line 188
    .local v3, "cacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    invoke-virtual {v3, p0, p1, p2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->isEquivalent(Ljava/io/File;J)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 189
    monitor-exit v0

    return-object v2

    .line 192
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/net/http/HttpResponseCache;->close()V

    .line 196
    .end local v2    # "installedResponseCache":Landroid/net/http/HttpResponseCache;
    .end local v3    # "cacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->create(Ljava/io/File;J)Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v2

    .line 197
    .local v2, "cacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    new-instance v3, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-direct {v3, v2}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;-><init>(Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;)V

    .line 199
    .local v3, "androidResponseCacheAdapter":Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;
    new-instance v4, Landroid/net/http/HttpResponseCache;

    invoke-direct {v4, v3}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;)V

    .line 200
    .local v4, "responseCache":Landroid/net/http/HttpResponseCache;
    invoke-static {v4}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit v0

    return-object v4

    .line 182
    .end local v1    # "installed":Ljava/net/ResponseCache;
    .end local v2    # "cacheHolder":Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .end local v3    # "androidResponseCacheAdapter":Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;
    .end local v4    # "responseCache":Landroid/net/http/HttpResponseCache;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->close()V

    .line 285
    return-void
.end method

.method public whitelist delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 292
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->delete()V

    .line 295
    return-void
.end method

.method public whitelist flush()V
    .locals 1

    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    :goto_0
    return-void
.end method

.method public whitelist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHitCount()I
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getHitCount()I

    move-result v0

    return v0
.end method

.method public whitelist getNetworkCount()I
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public whitelist getRequestCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public whitelist maxSize()J
    .locals 2

    .line 234
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public whitelist size()J
    .locals 3

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method
