.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$fFormat:Landroid/media/MediaFormat;

.field final synthetic blacklist val$fIs:Ljava/io/InputStream;

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;

    .line 2867
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$4;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .locals 9

    .line 2869
    iget-object v0, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    const/16 v1, 0x385

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2873
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 2874
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-nez v0, :cond_1

    .line 2875
    return v1

    .line 2879
    :cond_1
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v1

    .line 2880
    .local v2, "scanner":Ljava/util/Scanner;
    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 2881
    .local v3, "contents":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 2882
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2883
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2884
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 2885
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    .line 2886
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2887
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2888
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2889
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2890
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v1

    .line 2891
    .local v1, "h":Landroid/os/Handler;
    const/4 v5, 0x1

    .line 2892
    .local v5, "what":I
    const/4 v6, 0x4

    .line 2893
    .local v6, "arg1":I
    nop

    .line 2894
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 2895
    .local v7, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v8, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2896
    .local v8, "m":Landroid/os/Message;
    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2898
    .end local v1    # "h":Landroid/os/Handler;
    .end local v5    # "what":I
    .end local v6    # "arg1":I
    .end local v7    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v8    # "m":Landroid/os/Message;
    :cond_2
    monitor-exit v4

    .line 2899
    const/16 v1, 0x323

    return v1

    .line 2898
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2887
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2883
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 2870
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v2    # "scanner":Ljava/util/Scanner;
    .end local v3    # "contents":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 2903
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v0

    .line 2904
    .local v0, "res":I
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2905
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2906
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2908
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 2909
    return-void
.end method
