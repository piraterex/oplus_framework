.class public Landroid/net/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z

.field private static final greylist-max-o DEFAULT_MAX_CACHE_SIZE:I = 0x64

.field public static final greylist-max-o INVALID_NETWORK_SCORE:I = -0x80

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiNetworkScoreCache"


# instance fields
.field private final greylist-max-o mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    const-string v0, "WifiNetworkScoreCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 71
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 80
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;I)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    .param p3, "maxCacheSize"    # I

    .line 84
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 87
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    .line 88
    return-void
.end method

.method private greylist-max-o buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;
    .locals 3
    .param p1, "networkKey"    # Landroid/net/NetworkKey;

    .line 221
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 222
    return-object v0

    .line 224
    :cond_0
    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    if-nez v1, :cond_1

    return-object v0

    .line 225
    :cond_1
    iget v1, p1, Landroid/net/NetworkKey;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 226
    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v1, v1, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    .line 227
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_2

    return-object v0

    .line 228
    :cond_2
    iget-object v0, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v0, v0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_3
    return-object v1

    .line 233
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method private greylist-max-o buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .locals 1
    .param p1, "network"    # Landroid/net/ScoredNetwork;

    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    iget-object v0, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 237
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "key":Ljava/lang/StringBuilder;
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    .end local v0    # "key":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final greylist-max-o clearScores()V
    .locals 2

    .line 120
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 250
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "WifiNetworkScoreCache"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "WifiNetworkScoreCache (%s/%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 251
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const-string v1, "  All score curves:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ScoredNetwork;

    .line 257
    .local v3, "score":Landroid/net/ScoredNetwork;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .end local v3    # "score":Landroid/net/ScoredNetwork;
    goto :goto_0

    .line 259
    :cond_0
    const-string v2, "  Network scores for latest ScanResults:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 261
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 262
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 263
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .line 265
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public greylist-max-o getMeteredHint(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 167
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 168
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/ScoredNetwork;->meteredHint:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 147
    const/16 v0, -0x80

    .line 149
    .local v0, "score":I
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v1

    .line 150
    .local v1, "network":Landroid/net/ScoredNetwork;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v0

    .line 152
    sget-boolean v2, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkScore found scored network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " score "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RSSI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string v3, "WifiNetworkScoreCache"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return v0
.end method

.method public greylist-max-o getNetworkScore(Landroid/net/wifi/ScanResult;Z)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    .line 172
    const/16 v0, -0x80

    .line 174
    .local v0, "score":I
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v1

    .line 175
    .local v1, "network":Landroid/net/ScoredNetwork;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3, p2}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v0

    .line 177
    sget-boolean v2, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkScore found scored network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " score "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RSSI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActiveNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v3, "WifiNetworkScoreCache"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return v0
.end method

.method public greylist-max-o getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;
    .locals 4
    .param p1, "networkKey"    # Landroid/net/NetworkKey;

    .line 201
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 203
    sget-boolean v1, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "WifiNetworkScoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build key string for Network Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 208
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ScoredNetwork;

    monitor-exit v1

    return-object v2

    .line 210
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public greylist-max-o getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 189
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 192
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ScoredNetwork;

    .line 194
    .local v2, "network":Landroid/net/ScoredNetwork;
    monitor-exit v1

    return-object v2

    .line 195
    .end local v2    # "network":Landroid/net/ScoredNetwork;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public greylist-max-o hasScoreCurve(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 143
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o isScoredNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 132
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 270
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o unregisterListener()V
    .locals 2

    .line 277
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final greylist-max-o updateScores(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    sget-boolean v0, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "WifiNetworkScoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScores list size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 100
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ScoredNetwork;

    .line 102
    .local v3, "network":Landroid/net/ScoredNetwork;
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "networkKey":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 104
    sget-boolean v5, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v5, :cond_2

    .line 105
    const-string v5, "WifiNetworkScoreCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to build network key for ScoredNetwork"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    .line 111
    .end local v3    # "network":Landroid/net/ScoredNetwork;
    .end local v4    # "networkKey":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->post(Ljava/util/List;)V

    .line 116
    :cond_5
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 92
    .end local v0    # "changed":Z
    :cond_6
    :goto_1
    return-void
.end method
