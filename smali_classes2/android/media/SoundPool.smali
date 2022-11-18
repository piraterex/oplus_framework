.class public Landroid/media/SoundPool;
.super Landroid/media/PlayerBase;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$Builder;,
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o SAMPLE_LOADED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field private final blacklist mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/media/SoundPool$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private greylist-max-o mNativeContext:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 116
    const-string v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 124
    const-string v0, "SoundPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 125
    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    .line 124
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 2
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .line 151
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 152
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 151
    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    .line 153
    const-string v0, "SoundPool"

    const-string v1, "SoundPool()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private constructor greylist-max-o <init>(ILandroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .line 157
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    invoke-virtual {p0}, Landroid/media/SoundPool;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/SoundPool;->native_setup(ILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iput-object p2, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->baseRegisterPlayer(I)V

    .line 167
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native setup failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method

.method private final native greylist-max-o _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native greylist-max-o _mute(Z)V
.end method

.method private final native greylist-max-o _play(IFFIIF)I
.end method

.method private final native greylist-max-o _setVolume(IFF)V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private native blacklist native_setup(ILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private blacklist postEventFromNative(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 529
    .local v0, "eventHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 530
    return-void

    .line 532
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 533
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    return-void
.end method


# virtual methods
.method public final native whitelist autoPause()V
.end method

.method public final native whitelist autoResume()V
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public whitelist load(Landroid/content/Context;II)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 228
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v1, 0x0

    .line 229
    .local v1, "id":I
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, p0

    move v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v1

    .line 232
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 237
    :cond_0
    :goto_0
    return v1
.end method

.method public whitelist load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 9
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .line 249
    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 251
    .local v7, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, v7

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0

    .line 252
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    .end local v7    # "len":J
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist load(Ljava/io/FileDescriptor;JJI)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .line 275
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public whitelist load(Ljava/lang/String;I)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "id":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 201
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v3, p0

    move v9, p2

    invoke-direct/range {v3 .. v9}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v3

    move v0, v3

    .line 203
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundPool"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method public final native whitelist pause(I)V
.end method

.method public final whitelist play(IFFIIF)I
    .locals 1
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->baseStart(I)V

    .line 318
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_play(IFFIIF)I

    move-result v0

    return v0
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 401
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1
    .param p1, "id"    # I

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o playerPause()V
    .locals 0

    .line 429
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .locals 1
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .locals 0
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 412
    invoke-direct {p0, p1}, Landroid/media/SoundPool;->_mute(Z)V

    .line 413
    return-void
.end method

.method greylist-max-o playerStart()V
    .locals 0

    .line 424
    return-void
.end method

.method greylist-max-o playerStop()V
    .locals 0

    .line 434
    return-void
.end method

.method public final whitelist release()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRelease()V

    .line 178
    const-string v0, "SoundPool"

    const-string v1, "native_release called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    .line 180
    const-string v1, "native_release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public final native whitelist resume(I)V
.end method

.method public final native whitelist setLoop(II)V
.end method

.method public whitelist setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 498
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 499
    iget-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 500
    return-void

    .line 504
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 505
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 506
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_2

    .line 507
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 511
    :goto_0
    return-void
.end method

.method public final native whitelist setPriority(II)V
.end method

.method public final native whitelist setRate(IF)V
.end method

.method public greylist-max-o setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .line 441
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 442
    return-void
.end method

.method public final whitelist setVolume(IFF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 394
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    .line 395
    return-void
.end method

.method public final native whitelist stop(I)V
.end method

.method public final native whitelist unload(I)Z
.end method
