.class Landroid/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$dupedFd:Ljava/io/FileDescriptor;

.field final synthetic blacklist val$length2:J

.field final synthetic blacklist val$offset2:J

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;

.field final synthetic blacklist val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;

    .line 3106
    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$5;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$5;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .locals 10

    .line 3108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3110
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroid/media/MediaPlayer$5;->val$offset2:J

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 3111
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 3112
    .local v1, "buffer":[B
    const-wide/16 v2, 0x0

    .local v2, "total":J
    :goto_0
    iget-wide v4, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-gez v6, :cond_1

    .line 3113
    array-length v6, v1

    int-to-long v8, v6

    sub-long/2addr v4, v2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 3114
    .local v4, "bytesToRead":I
    iget-object v5, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v5, v1, v7, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 3115
    .local v5, "bytes":I
    if-gez v5, :cond_0

    .line 3116
    goto :goto_1

    .line 3118
    :cond_0
    invoke-virtual {v0, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3119
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3121
    .end local v4    # "bytesToRead":I
    .end local v5    # "bytes":I
    goto :goto_0

    .line 3122
    .end local v2    # "total":J
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3123
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3124
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v3

    .line 3125
    .local v3, "h":Landroid/os/Handler;
    const/4 v4, 0x1

    .line 3126
    .local v4, "what":I
    const/4 v5, 0x4

    .line 3127
    .local v5, "arg1":I
    iget-object v6, p0, Landroid/media/MediaPlayer$5;->val$track:Landroid/media/SubtitleTrack;

    .line 3128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 3129
    .local v6, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3130
    .local v7, "m":Landroid/os/Message;
    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3132
    .end local v3    # "h":Landroid/os/Handler;
    .end local v4    # "what":I
    .end local v5    # "arg1":I
    .end local v6    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v7    # "m":Landroid/os/Message;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3133
    const/16 v2, 0x323

    .line 3139
    :try_start_2
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3142
    goto :goto_2

    .line 3140
    :catch_0
    move-exception v3

    .line 3141
    .local v3, "e":Landroid/system/ErrnoException;
    const-string v4, "MediaPlayer"

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3133
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_2
    return v2

    .line 3132
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/MediaPlayer$5;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3138
    .end local v1    # "buffer":[B
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/MediaPlayer$5;
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 3134
    :catch_1
    move-exception v1

    .line 3135
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3136
    const/16 v2, 0x384

    .line 3139
    :try_start_6
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3142
    goto :goto_3

    .line 3140
    :catch_2
    move-exception v3

    .line 3141
    .restart local v3    # "e":Landroid/system/ErrnoException;
    const-string v4, "MediaPlayer"

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3136
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_3
    return v2

    .line 3139
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_3

    .line 3142
    goto :goto_5

    .line 3140
    :catch_3
    move-exception v2

    .line 3141
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3143
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_5
    throw v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 3147
    invoke-direct {p0}, Landroid/media/MediaPlayer$5;->addTrack()I

    move-result v0

    .line 3148
    .local v0, "res":I
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3149
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3150
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3152
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 3153
    return-void
.end method
