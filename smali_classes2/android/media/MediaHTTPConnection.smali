.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final greylist-max-o HTTP_TEMP_REDIRECT:I = 0x133

.field private static final greylist-max-o MAX_REDIRECTS:I = 0x14

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final greylist-max-o VERBOSE:Z = false


# instance fields
.field private greylist mAllowCrossDomainRedirect:Z

.field private greylist mAllowCrossProtocolRedirect:Z

.field private volatile greylist mConnection:Ljava/net/HttpURLConnection;

.field private greylist mCurrentOffset:J

.field private greylist mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private blacklist mMediaHTTPConnectionExt:Landroid/media/IMediaHTTPConnectionExt;

.field private blacklist mMediaHTTPConnectionWrapper:Landroid/media/IMediaHTTPConnectionWrapper;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private greylist mTotalSize:J

.field private greylist mURL:Ljava/net/URL;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentOffset(Landroid/media/MediaHTTPConnection;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputStream(Landroid/media/MediaHTTPConnection;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaHTTPConnectionExt(Landroid/media/MediaHTTPConnection;)Landroid/media/IMediaHTTPConnectionExt;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionExt:Landroid/media/IMediaHTTPConnectionExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentOffset(Landroid/media/MediaHTTPConnection;J)V
    .locals 0

    iput-wide p1, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mseekTo(Landroid/media/MediaHTTPConnection;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 564
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 565
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    .line 566
    return-void
.end method

.method public constructor greylist <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 64
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 70
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 73
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 77
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 84
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 96
    const-class v0, Landroid/media/IMediaHTTPConnectionExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IMediaHTTPConnectionExt;

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionExt:Landroid/media/IMediaHTTPConnectionExt;

    .line 97
    new-instance v0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;

    invoke-direct {v0, p0, v2}, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;-><init>(Landroid/media/MediaHTTPConnection;Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper-IA;)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionWrapper:Landroid/media/IMediaHTTPConnectionWrapper;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 107
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-nez v0, :cond_0

    .line 108
    const-string v1, "MediaHTTPConnection"

    const-string v2, "MediaHTTPConnection: Unexpected. No CookieHandler found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    .line 112
    return-void
.end method

.method private declared-synchronized greylist-max-o convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "pairs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 159
    .local v5, "pair":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 160
    .local v6, "colonPos":I
    if-ltz v6, :cond_0

    .line 161
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v7, v8}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 165
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "colonPos":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_1
    monitor-exit p0

    return-object v0

    .line 154
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pairs":[Ljava/lang/String;
    .end local p1    # "headers":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    monitor-enter p0

    .line 144
    :try_start_0
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 147
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 149
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 143
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "val":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final greylist-max-o isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .line 222
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 223
    return v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 229
    return v0

    .line 233
    :cond_1
    :try_start_0
    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 234
    return v3

    .line 236
    :cond_2
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 237
    return v3

    .line 240
    :cond_3
    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 241
    :goto_0
    return v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_readAt(JI)I
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private static greylist-max-o parseBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p0, "val"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 137
    :goto_2
    return v0
.end method

.method private declared-synchronized greylist-max-o readAt(J[BI)I
    .locals 8
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    monitor-enter p0

    .line 423
    :try_start_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 424
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 426
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    const/16 v1, -0x3f2

    const/4 v2, -0x1

    :try_start_1
    iget-wide v3, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    .line 430
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    .line 433
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 435
    .local v3, "n":I
    if-ne v3, v2, :cond_1

    .line 438
    const/4 v3, 0x0

    .line 441
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    monitor-exit p0

    return v3

    .line 482
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    monitor-exit p0

    return v2

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 476
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    monitor-exit p0

    return v2

    .line 464
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 465
    .local v2, "e":Ljava/net/UnknownServiceException;
    :try_start_4
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v2}, Ljava/net/UnknownServiceException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 471
    monitor-exit p0

    return v1

    .line 456
    .end local v2    # "e":Ljava/net/UnknownServiceException;
    :catch_3
    move-exception v2

    .line 457
    .local v2, "e":Ljava/net/NoRouteToHostException;
    :try_start_5
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v2}, Ljava/net/NoRouteToHostException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 463
    monitor-exit p0

    return v1

    .line 448
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    :catch_4
    move-exception v2

    .line 449
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_6
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 455
    monitor-exit p0

    return v1

    .line 422
    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "e":Ljava/net/ProtocolException;
    .end local p1    # "offset":J
    .end local p3    # "data":[B
    .end local p4    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o seekTo(J)V
    .locals 16
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    .line 245
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "redirectCount":I
    const-wide/16 v4, -0x1

    :try_start_1
    iget-object v6, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 254
    .local v6, "url":Ljava/net/URL;
    invoke-static {v6}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v7

    move-object v8, v6

    move v6, v0

    .line 267
    .end local v0    # "redirectCount":I
    .local v6, "redirectCount":I
    .local v7, "noProxy":Z
    .local v8, "url":Ljava/net/URL;
    :goto_0
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_17

    .line 270
    if-eqz v7, :cond_0

    .line 271
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v8, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 273
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 280
    :goto_1
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_16

    .line 291
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionExt:Landroid/media/IMediaHTTPConnectionExt;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/media/IMediaHTTPConnectionExt;->isNeedSetTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const-string v0, "MediaHTTPConnection"

    const-string v9, "app setTimout"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v9, 0x1f40

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 294
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto :goto_2

    .line 296
    :cond_1
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v9, 0x7530

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 300
    :goto_2
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-boolean v9, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 302
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 303
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 304
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 305
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 304
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 309
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_3

    .line 310
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_3
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v11, v0

    .line 315
    .local v11, "response":I
    const/16 v0, 0x12c

    const/16 v12, 0x133

    if-eq v11, v0, :cond_a

    const/16 v0, 0x12d

    if-eq v11, v0, :cond_a

    const/16 v0, 0x12e

    if-eq v11, v0, :cond_a

    const/16 v0, 0x12f

    if-eq v11, v0, :cond_a

    if-eq v11, v12, :cond_a

    .line 321
    nop

    .line 360
    iget-boolean v0, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 366
    :cond_4
    const/16 v12, 0xce

    if-ne v11, v12, :cond_6

    .line 371
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v13, "Content-Range"

    .line 372
    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 374
    .local v13, "contentRange":Ljava/lang/String;
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 375
    if-eqz v13, :cond_5

    .line 380
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v14, v0

    .line 381
    .local v14, "lastSlashPos":I
    if-ltz v14, :cond_5

    .line 382
    add-int/lit8 v0, v14, 0x1

    .line 383
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v0

    .line 386
    .local v15, "total":Ljava/lang/String;
    :try_start_2
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    goto :goto_4

    .line 387
    :catch_0
    move-exception v0

    .line 391
    .end local v13    # "contentRange":Ljava/lang/String;
    .end local v14    # "lastSlashPos":I
    .end local v15    # "total":Ljava/lang/String;
    :cond_5
    :goto_4
    goto :goto_5

    :cond_6
    const/16 v0, 0xc8

    if-ne v11, v0, :cond_9

    .line 394
    :try_start_3
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 397
    :goto_5
    cmp-long v0, v2, v9

    if-lez v0, :cond_8

    if-ne v11, v12, :cond_7

    goto :goto_6

    .line 400
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0}, Ljava/net/ProtocolException;-><init>()V

    .end local p1    # "offset":J
    throw v0

    .line 403
    .restart local p1    # "offset":J
    :cond_8
    :goto_6
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v4, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 404
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 406
    iput-wide v2, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    .end local v6    # "redirectCount":I
    .end local v7    # "noProxy":Z
    .end local v8    # "url":Ljava/net/URL;
    .end local v11    # "response":I
    nop

    .line 414
    monitor-exit p0

    return-void

    .line 392
    .restart local v6    # "redirectCount":I
    .restart local v7    # "noProxy":Z
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v11    # "response":I
    :cond_9
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .end local p1    # "offset":J
    throw v0

    .line 324
    .restart local p1    # "offset":J
    :cond_a
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x14

    if-gt v6, v0, :cond_15

    .line 328
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "method":Ljava/lang/String;
    if-ne v11, v12, :cond_c

    const-string v4, "GET"

    .line 330
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "HEAD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_7

    .line 334
    :cond_b
    new-instance v4, Ljava/net/NoRouteToHostException;

    const-string v5, "Invalid redirect"

    invoke-direct {v4, v5}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v4

    .line 336
    .restart local p1    # "offset":J
    :cond_c
    :goto_7
    iget-object v4, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "location":Ljava/lang/String;
    if-eqz v4, :cond_14

    .line 340
    new-instance v5, Ljava/net/URL;

    iget-object v9, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {v5, v9, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v8, v5

    .line 341
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v9, "https"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 342
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    .line 343
    :cond_d
    new-instance v5, Ljava/net/NoRouteToHostException;

    const-string v9, "Unsupported protocol redirect"

    invoke-direct {v5, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v5

    .line 345
    .restart local p1    # "offset":J
    :cond_e
    :goto_8
    iget-object v5, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 346
    .local v5, "sameProtocol":Z
    iget-boolean v9, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    if-nez v9, :cond_10

    if-eqz v5, :cond_f

    goto :goto_9

    .line 347
    :cond_f
    new-instance v9, Ljava/net/NoRouteToHostException;

    const-string v10, "Cross-protocol redirects are disallowed"

    invoke-direct {v9, v10}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v9

    .line 349
    .restart local p1    # "offset":J
    :cond_10
    :goto_9
    iget-object v9, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 350
    .local v9, "sameHost":Z
    iget-boolean v10, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-nez v10, :cond_12

    if-eqz v9, :cond_11

    goto :goto_a

    .line 351
    :cond_11
    new-instance v10, Ljava/net/NoRouteToHostException;

    const-string v12, "Cross-domain redirects are disallowed"

    invoke-direct {v10, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v10

    .line 354
    .restart local p1    # "offset":J
    :cond_12
    :goto_a
    if-eq v11, v12, :cond_13

    .line 356
    iput-object v8, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 358
    .end local v0    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "sameProtocol":Z
    .end local v9    # "sameHost":Z
    :cond_13
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    .line 338
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    :cond_14
    new-instance v5, Ljava/net/NoRouteToHostException;

    const-string v9, "Invalid redirect"

    invoke-direct {v5, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v5

    .line 325
    .end local v0    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .restart local p1    # "offset":J
    :cond_15
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many redirects: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0

    .line 281
    .end local v11    # "response":I
    .restart local p1    # "offset":J
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v4, "concurrently disconnecting"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0

    .line 268
    .restart local p1    # "offset":J
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v4, "concurrently disconnecting"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    .end local v6    # "redirectCount":I
    .end local v7    # "noProxy":Z
    .end local v8    # "url":Ljava/net/URL;
    .restart local p1    # "offset":J
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v4, -0x1

    :try_start_5
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 409
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 410
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 412
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "offset":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o teardownConnection()V
    .locals 5

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    goto :goto_0

    .line 207
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/AssertionError;
    :try_start_2
    const-string v2, "MediaHTTPConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "teardown connection unknown exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v0

    .line 209
    nop

    .line 211
    :goto_0
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_1
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized greylist connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 124
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 125
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    nop

    .line 130
    :try_start_2
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 126
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    .end local p1    # "uri":Ljava/lang/String;
    .end local p2    # "headers":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 126
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    .restart local p1    # "uri":Ljava/lang/String;
    .restart local p2    # "headers":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1
.end method

.method public greylist disconnect()V
    .locals 2

    .line 176
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 181
    .local v0, "connectionToDisconnect":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 190
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 191
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 194
    nop

    .line 195
    return-void

    .line 191
    .restart local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    .end local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 194
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 553
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    .line 554
    return-void
.end method

.method public declared-synchronized greylist getMIMEType()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 536
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    goto :goto_0

    .line 537
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "application/octet-stream"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o getSize()J
    .locals 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    const-string v1, "mConnection == null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaHTTPConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_2

    .line 510
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionExt:Landroid/media/IMediaHTTPConnectionExt;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/media/IMediaHTTPConnectionExt;->isNeedSetTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionExt:Landroid/media/IMediaHTTPConnectionExt;

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaHTTPConnectionExt;->asyncSeekTo(J)Z

    goto :goto_1

    .line 513
    :cond_1
    invoke-direct {p0, v1, v2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_1
    goto :goto_2

    .line 522
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, -0x1

    return-wide v1

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    return-wide v0
.end method

.method public declared-synchronized greylist getUri()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 548
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;
    .locals 1

    .line 577
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mMediaHTTPConnectionWrapper:Landroid/media/IMediaHTTPConnectionWrapper;

    return-object v0
.end method

.method public declared-synchronized greylist readAt(JI)I
    .locals 1
    .param p1, "offset"    # J
    .param p3, "size"    # I

    monitor-enter p0

    .line 419
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 419
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    .end local p1    # "offset":J
    .end local p3    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
