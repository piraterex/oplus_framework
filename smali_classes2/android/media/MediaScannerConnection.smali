.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$ClientProxy;,
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaScannerConnection"


# instance fields
.field private final greylist-max-o mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private greylist-max-o mConnected:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mListener:Landroid/media/IMediaScannerListener$Stub;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mProvider:Landroid/content/ContentProviderClient;

.field private greylist-max-o mService:Landroid/media/IMediaScannerService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/media/MediaScannerConnection$1;

    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 102
    iput-object p1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 104
    return-void
.end method

.method static synthetic blacklist lambda$scanFile$1(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 186
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 187
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroid/media/MediaScannerConnection;->scanFileQuietly(Landroid/content/ContentProviderClient;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 188
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {p0, p2, v3, v4}, Landroid/media/MediaScannerConnection;->runCallBack(Landroid/content/Context;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 191
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_1
    return-void

    .line 184
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method private static blacklist runCallBack(Landroid/content/Context;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 207
    if-eqz p1, :cond_1

    .line 211
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 216
    const-string v1, "MediaScannerConnection"

    const-string v2, "Ignoring exception from callback for backward compatibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    :cond_0
    throw v0

    .line 220
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 183
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method private static blacklist scanFileQuietly(Landroid/content/ContentProviderClient;Ljava/io/File;)Landroid/net/Uri;
    .locals 5
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "file"    # Ljava/io/File;

    .line 195
    const-string v0, "MediaScannerConnection"

    const/4 v1, 0x0

    .line 197
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentResolver;->wrap(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to scan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public whitelist connect()V
    .locals 2

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    .line 116
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 120
    :cond_0
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist disconnect()V
    .locals 1

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    .line 132
    :cond_0
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized whitelist isConnected()Z
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 140
    .end local p0    # "this":Landroid/media/MediaScannerConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic blacklist lambda$scanFile$0$android-media-MediaScannerConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/media/MediaScannerConnection;->scanFileQuietly(Landroid/content/ContentProviderClient;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-static {v1, v2, p1, v0}, Landroid/media/MediaScannerConnection;->runCallBack(Landroid/content/Context;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 261
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 269
    return-void
.end method

.method public whitelist scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaScannerConnection;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    monitor-exit p0

    .line 162
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected to MediaScannerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaScannerConnection;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "mimeType":Ljava/lang/String;
    throw v0

    .line 161
    .restart local p0    # "this":Landroid/media/MediaScannerConnection;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
