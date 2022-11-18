.class public Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;
.super Ljava/lang/Object;
.source "AudioVolumeGroupChangeHandler.java"


# static fields
.field private static final blacklist AUDIOVOLUMEGROUP_EVENT_NEW_LISTENER:I = 0x4

.field private static final blacklist AUDIOVOLUMEGROUP_EVENT_VOLUME_CHANGED:I = 0x3e8

.field protected static final blacklist LOGD:Z

.field private static final blacklist TAG:Ljava/lang/String; = "AudioVolumeGroupChangeHandler"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mJniCallback:J

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$VolumeGroupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->LOGD:Z

    .line 47
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private native blacklist native_finalize()V
.end method

.method private native blacklist native_setup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "moduleRef"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 170
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 171
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    .line 172
    .local v0, "eventHandler":Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;
    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->handler()Landroid/os/Handler;

    move-result-object v1

    .line 178
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 181
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->native_finalize()V

    .line 126
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    :cond_0
    return-void
.end method

.method blacklist handler()Landroid/os/Handler;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist init()V
    .locals 2

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioVolumeGroupChangeHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;-><init>(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->native_setup(Ljava/lang/Object;)V

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist registerListener(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/AudioManager$VolumeGroupCallback;

    .line 136
    const-string/jumbo v0, "volume group callback shall not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-boolean v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->LOGD:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "AudioVolumeGroupChangeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener(): cb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 144
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist unregisterListener(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/AudioManager$VolumeGroupCallback;

    .line 154
    const-string/jumbo v0, "volume group callback shall not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-boolean v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->LOGD:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "AudioVolumeGroupChangeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener(): cb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
