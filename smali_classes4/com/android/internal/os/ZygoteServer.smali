.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INVALID_TIMESTAMP:I = -0x1

.field public static final blacklist TAG:Ljava/lang/String; = "ZygoteServer"

.field private static final blacklist USAP_POOL_REFILL_DELAY_MS_DEFAULT:Ljava/lang/String; = "1000"

.field private static final blacklist USAP_POOL_SIZE_MAX_DEFAULT:Ljava/lang/String; = "2"

.field private static final blacklist USAP_POOL_SIZE_MAX_LIMIT:I = 0x64

.field private static final blacklist USAP_POOL_SIZE_MIN_DEFAULT:Ljava/lang/String; = "1"

.field private static final blacklist USAP_POOL_SIZE_MIN_LIMIT:I = 0x1


# instance fields
.field private blacklist mCloseSocketFd:Z

.field private blacklist mIsFirstPropertyCheck:Z

.field private blacklist mIsForkChild:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolEventFD:Ljava/io/FileDescriptor;

.field private blacklist mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field private blacklist mUsapPoolRefillDelayMs:I

.field private blacklist mUsapPoolRefillThreshold:I

.field private blacklist mUsapPoolRefillTriggerTimestamp:J

.field private blacklist mUsapPoolSizeMax:I

.field private blacklist mUsapPoolSizeMin:I

.field private final blacklist mUsapPoolSocket:Landroid/net/LocalServerSocket;

.field private final blacklist mUsapPoolSupported:Z

.field private blacklist mZygoteSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 135
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 140
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 146
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 152
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 348
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 168
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 169
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 171
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 172
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "usapSocketName"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 135
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 140
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 146
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 348
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 216
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 218
    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 219
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 221
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 222
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 223
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .locals 4
    .param p1, "isPrimaryZygote"    # Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 135
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 140
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 146
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 152
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 348
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 181
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string/jumbo v2, "zygote"

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 185
    nop

    .line 186
    const-string/jumbo v2, "usap_pool_primary"

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    goto :goto_0

    .line 189
    :cond_0
    const-string/jumbo v2, "zygote_secondary"

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 190
    nop

    .line 191
    const-string/jumbo v2, "usap_pool_secondary"

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 195
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 200
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 201
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 202
    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 203
    const-string v0, "1000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 205
    return-void
.end method

.method private blacklist acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p1, "abiList"    # Ljava/lang/String;

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist fetchUsapPoolPolicyProps()V
    .locals 8

    .line 301
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    if-eqz v0, :cond_4

    .line 302
    const-string/jumbo v0, "usap_pool_size_max"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "usapPoolSizeMaxPropString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 310
    :cond_0
    const-string/jumbo v2, "usap_pool_size_min"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "usapPoolSizeMinPropString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    nop

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    .line 314
    invoke-static {v4, v5}, Ljava/lang/Integer;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 318
    :cond_1
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v4, v4, 0x2

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 318
    const-string/jumbo v5, "usap_refill_threshold"

    invoke-static {v5, v4}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "usapPoolRefillThresholdPropString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 323
    nop

    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 323
    invoke-static {v5, v6}, Ljava/lang/Integer;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 328
    :cond_2
    const-string/jumbo v5, "usap_pool_refill_delay_ms"

    const-string v6, "1000"

    invoke-static {v5, v6}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "usapPoolRefillDelayMsPropString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 332
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 336
    :cond_3
    iget v6, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v7, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    if-lt v6, v7, :cond_4

    .line 337
    const-string v6, "ZygoteServer"

    const-string v7, "The max size of the USAP pool must be greater than the minimum size.  Restoring default values."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 342
    iget v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 345
    .end local v0    # "usapPoolSizeMaxPropString":Ljava/lang/String;
    .end local v2    # "usapPoolSizeMinPropString":Ljava/lang/String;
    .end local v4    # "usapPoolRefillThresholdPropString":Ljava/lang/String;
    .end local v5    # "usapPoolRefillDelayMsPropString":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsIfUnfetched()V
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 364
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 366
    :cond_0
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsWithMinInterval()V
    .locals 6

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 353
    .local v0, "currentTimestamp":J
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 355
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 356
    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 357
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 359
    :cond_1
    return-void
.end method

.method private blacklist resetUsapRefillState()V
    .locals 2

    .line 453
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 454
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 455
    return-void
.end method


# virtual methods
.method blacklist closeServerSocket()V
    .locals 3

    .line 274
    const-string v0, "ZygoteServer"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 276
    .local v1, "fd":Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 277
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v2, :cond_0

    .line 278
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "ex":Landroid/system/ErrnoException;
    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 281
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 287
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 288
    return-void
.end method

.method protected blacklist createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist fillUsapPool([IZ)Ljava/lang/Runnable;
    .locals 7
    .param p1, "sessionSocketRawFDs"    # [I
    .param p2, "isPriorityRefill"    # Z

    .line 379
    const-wide/16 v0, 0x40

    const-string v2, "Zygote:FillUsapPool"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v2

    .line 390
    .local v2, "usapPoolCount":I
    const-string/jumbo v3, "zygote"

    if-eqz p2, :cond_0

    .line 392
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    sub-int/2addr v4, v2

    .line 394
    .local v4, "numUsapsToSpawn":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Priority USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    .end local v4    # "numUsapsToSpawn":I
    :cond_0
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v2

    .line 400
    .restart local v4    # "numUsapsToSpawn":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delayed USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 408
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 409
    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 410
    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;

    move-result-object v3

    .line 412
    .local v3, "caller":Ljava/lang/Runnable;
    if-eqz v3, :cond_1

    .line 413
    return-object v3

    .line 415
    .end local v3    # "caller":Ljava/lang/Runnable;
    :cond_1
    goto :goto_1

    .line 419
    :cond_2
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 421
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->resetUsapRefillState()V

    .line 423
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isUsapPoolEnabled()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    return v0
.end method

.method blacklist registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .locals 4
    .param p1, "socketName"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    .line 241
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 248
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method blacklist runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 18
    .param p1, "abiList"    # Ljava/lang/String;

    .line 464
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 465
    .local v2, "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 467
    .local v3, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 477
    :goto_0
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 479
    const/4 v0, 0x0

    .line 485
    .local v0, "usapPipeFDs":[I
    iget-boolean v6, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 486
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPipeFDs()[I

    move-result-object v0

    .line 487
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v7

    array-length v8, v0

    add-int/2addr v6, v8

    new-array v6, v6, [Landroid/system/StructPollfd;

    move-object v8, v6

    move-object v6, v0

    .local v6, "pollFDs":[Landroid/system/StructPollfd;
    goto :goto_1

    .line 489
    .end local v6    # "pollFDs":[Landroid/system/StructPollfd;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/system/StructPollfd;

    move-object v8, v6

    move-object v6, v0

    .line 500
    .end local v0    # "usapPipeFDs":[I
    .local v6, "usapPipeFDs":[I
    .local v8, "pollFDs":[Landroid/system/StructPollfd;
    :goto_1
    const/4 v0, 0x0

    .line 501
    .local v0, "pollIndex":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/FileDescriptor;

    .line 502
    .local v10, "socketFD":Ljava/io/FileDescriptor;
    new-instance v11, Landroid/system/StructPollfd;

    invoke-direct {v11}, Landroid/system/StructPollfd;-><init>()V

    aput-object v11, v8, v0

    .line 503
    aget-object v11, v8, v0

    iput-object v10, v11, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 504
    aget-object v11, v8, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v11, Landroid/system/StructPollfd;->events:S

    .line 505
    nop

    .end local v10    # "socketFD":Ljava/io/FileDescriptor;
    add-int/lit8 v0, v0, 0x1

    .line 506
    goto :goto_2

    .line 508
    :cond_1
    move v9, v0

    .line 510
    .local v9, "usapPoolEventFDIndex":I
    iget-boolean v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 511
    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    aput-object v10, v8, v0

    .line 512
    aget-object v10, v8, v0

    iget-object v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v12, v10, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 513
    aget-object v10, v8, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v10, Landroid/system/StructPollfd;->events:S

    .line 514
    add-int/lit8 v0, v0, 0x1

    .line 517
    nop

    .line 518
    array-length v10, v6

    move v12, v11

    :goto_3
    if-ge v12, v10, :cond_2

    aget v13, v6, v12

    .line 519
    .local v13, "usapPipeFD":I
    new-instance v14, Ljava/io/FileDescriptor;

    invoke-direct {v14}, Ljava/io/FileDescriptor;-><init>()V

    .line 520
    .local v14, "managedFd":Ljava/io/FileDescriptor;
    invoke-virtual {v14, v13}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 522
    new-instance v15, Landroid/system/StructPollfd;

    invoke-direct {v15}, Landroid/system/StructPollfd;-><init>()V

    aput-object v15, v8, v0

    .line 523
    aget-object v15, v8, v0

    iput-object v14, v15, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 524
    aget-object v15, v8, v0

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v15, Landroid/system/StructPollfd;->events:S

    .line 525
    nop

    .end local v13    # "usapPipeFD":I
    .end local v14    # "managedFd":Ljava/io/FileDescriptor;
    add-int/lit8 v0, v0, 0x1

    .line 518
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v0

    goto :goto_4

    .line 510
    :cond_3
    move v7, v0

    .line 531
    .end local v0    # "pollIndex":I
    .local v7, "pollIndex":I
    :goto_4
    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_4

    .line 532
    const/4 v0, -0x1

    move v10, v0

    .local v0, "pollTimeoutMs":I
    goto :goto_5

    .line 534
    .end local v0    # "pollTimeoutMs":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sub-long/2addr v12, v14

    .line 536
    .local v12, "elapsedTimeMs":J
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    int-to-long v14, v0

    cmp-long v10, v12, v14

    if-ltz v10, :cond_5

    .line 540
    const/4 v0, 0x0

    .line 541
    .restart local v0    # "pollTimeoutMs":I
    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 542
    sget-object v10, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    move v10, v0

    goto :goto_5

    .line 544
    .end local v0    # "pollTimeoutMs":I
    :cond_5
    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-gtz v10, :cond_6

    .line 549
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    move v10, v0

    .restart local v0    # "pollTimeoutMs":I
    goto :goto_5

    .line 552
    .end local v0    # "pollTimeoutMs":I
    :cond_6
    int-to-long v14, v0

    sub-long/2addr v14, v12

    long-to-int v0, v14

    move v10, v0

    .line 558
    .end local v12    # "elapsedTimeMs":J
    .local v10, "pollTimeoutMs":I
    :goto_5
    :try_start_0
    invoke-static {v8, v10}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    move v12, v0

    .line 561
    .local v12, "pollReturnValue":I
    nop

    .line 563
    if-nez v12, :cond_7

    .line 569
    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 570
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto/16 :goto_d

    .line 573
    :cond_7
    const/4 v0, 0x0

    move/from16 v17, v7

    move v7, v0

    move/from16 v0, v17

    .line 575
    .local v0, "pollIndex":I
    .local v7, "usapPoolFDRead":Z
    :goto_6
    add-int/lit8 v13, v0, -0x1

    .end local v0    # "pollIndex":I
    .local v13, "pollIndex":I
    if-ltz v13, :cond_14

    .line 576
    aget-object v0, v8, v13

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    sget v14, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v14

    if-nez v0, :cond_8

    .line 577
    goto/16 :goto_b

    .line 580
    :cond_8
    if-nez v13, :cond_9

    .line 582
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0

    .line 583
    .local v0, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v0    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    goto/16 :goto_b

    :cond_9
    const-string v14, "ZygoteServer"

    if-ge v13, v9, :cond_10

    .line 589
    :try_start_1
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    .line 590
    .local v0, "connection":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v15

    if-nez v15, :cond_a

    .line 591
    invoke-static {}, Ldalvik/system/ZygoteHooks;->isIndefiniteThreadSuspensionSafe()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    goto :goto_7

    :cond_a
    move v15, v11

    .line 592
    .local v15, "multipleForksOK":Z
    :goto_7
    nop

    .line 593
    invoke-virtual {v0, v1, v15}, Lcom/android/internal/os/ZygoteConnection;->processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v16

    .line 596
    .local v16, "command":Ljava/lang/Runnable;
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_c

    .line 599
    if-eqz v16, :cond_b

    .line 603
    nop

    .line 648
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 603
    return-object v16

    .line 600
    :cond_b
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .end local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "usapPoolFDRead":Z
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    .end local v13    # "pollIndex":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "abiList":Ljava/lang/String;
    throw v4

    .line 606
    .restart local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .restart local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "usapPoolFDRead":Z
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    .restart local v12    # "pollReturnValue":I
    .restart local v13    # "pollIndex":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "abiList":Ljava/lang/String;
    :cond_c
    if-nez v16, :cond_e

    .line 614
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 615
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 616
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 617
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    .end local v0    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .end local v15    # "multipleForksOK":Z
    .end local v16    # "command":Ljava/lang/Runnable;
    :cond_d
    :goto_8
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 649
    goto/16 :goto_b

    .line 607
    .restart local v0    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .restart local v15    # "multipleForksOK":Z
    .restart local v16    # "command":Ljava/lang/Runnable;
    :cond_e
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command != null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .end local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "usapPoolFDRead":Z
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    .end local v13    # "pollIndex":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "abiList":Ljava/lang/String;
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    .end local v0    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .end local v15    # "multipleForksOK":Z
    .end local v16    # "command":Ljava/lang/Runnable;
    .restart local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .restart local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "usapPoolFDRead":Z
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    .restart local v12    # "pollReturnValue":I
    .restart local v13    # "pollIndex":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "abiList":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v4, :cond_f

    .line 627
    const-string v4, "Exception executing zygote command: "

    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ZygoteConnection;

    .line 633
    .local v4, "conn":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 635
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 636
    nop

    .end local v4    # "conn":Lcom/android/internal/os/ZygoteConnection;
    goto :goto_8

    .line 641
    :cond_f
    const-string v4, "Caught post-fork exception in child process."

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    nop

    .end local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .end local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "usapPoolFDRead":Z
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    .end local v13    # "pollIndex":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "abiList":Ljava/lang/String;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .restart local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "usapPoolFDRead":Z
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    .restart local v12    # "pollReturnValue":I
    .restart local v13    # "pollIndex":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "abiList":Ljava/lang/String;
    :goto_9
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 649
    throw v0

    .line 662
    :cond_10
    const/16 v0, 0x8

    :try_start_5
    new-array v4, v0, [B

    .line 663
    .local v4, "buffer":[B
    aget-object v5, v8, v13

    iget-object v5, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    array-length v15, v4

    .line 664
    invoke-static {v5, v4, v11, v15}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 666
    .local v5, "readBytes":I
    if-ne v5, v0, :cond_12

    .line 667
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 670
    .local v0, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 671
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .local v14, "messagePayload":J
    nop

    .line 686
    .end local v4    # "buffer":[B
    .end local v5    # "readBytes":I
    nop

    .line 688
    if-le v13, v9, :cond_11

    .line 689
    long-to-int v0, v14

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->removeUsapTableEntry(I)Z

    .line 692
    :cond_11
    const/4 v7, 0x1

    .line 693
    .end local v14    # "messagePayload":J
    move v0, v13

    const-wide/16 v4, -0x1

    goto/16 :goto_6

    .line 672
    .restart local v4    # "buffer":[B
    .restart local v5    # "readBytes":I
    :cond_12
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incomplete read from USAP management FD of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 674
    goto :goto_b

    .line 676
    .end local v4    # "buffer":[B
    .end local v5    # "readBytes":I
    :catch_1
    move-exception v0

    .line 677
    .local v0, "ex":Ljava/lang/Exception;
    if-ne v13, v9, :cond_13

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP pool event FD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 679
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 681
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP reporting pipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 682
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_a
    nop

    .line 575
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b
    move v0, v13

    const-wide/16 v4, -0x1

    goto/16 :goto_6

    .line 696
    :cond_14
    if-eqz v7, :cond_16

    .line 697
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    .line 699
    .local v0, "usapPoolCount":I
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    if-ge v0, v4, :cond_15

    .line 701
    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto :goto_c

    .line 702
    :cond_15
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    iget v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    if-lt v4, v5, :cond_16

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 709
    .end local v0    # "usapPoolCount":I
    .end local v7    # "usapPoolFDRead":Z
    :cond_16
    :goto_c
    move v7, v13

    .end local v13    # "pollIndex":I
    .local v7, "pollIndex":I
    :goto_d
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-eq v0, v4, :cond_19

    .line 710
    nop

    .line 711
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 712
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;-><init>()V

    .line 713
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 714
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 716
    .local v0, "sessionSocketRawFDs":[I
    iget-object v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v13, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-ne v5, v13, :cond_17

    goto :goto_e

    :cond_17
    move v4, v11

    .line 719
    .local v4, "isPriorityRefill":Z
    :goto_e
    nop

    .line 720
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v5

    .line 722
    .local v5, "command":Ljava/lang/Runnable;
    if-eqz v5, :cond_18

    .line 723
    return-object v5

    .line 724
    :cond_18
    if-eqz v4, :cond_19

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 729
    .end local v0    # "sessionSocketRawFDs":[I
    .end local v4    # "isPriorityRefill":Z
    .end local v5    # "command":Ljava/lang/Runnable;
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "pollIndex":I
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    :cond_19
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    .line 559
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "pollIndex":I
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 560
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "poll failed"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method blacklist setForkChild()V
    .locals 1

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 228
    return-void
.end method

.method blacklist setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;
    .locals 4
    .param p1, "newStatus"    # Z
    .param p2, "sessionSocket"    # Landroid/net/LocalSocket;

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    const-string v1, "ZygoteServer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "Attempting to enable a USAP pool for a Zygote that doesn\'t support it."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v2

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-ne v0, p1, :cond_1

    .line 437
    return-object v2

    .line 440
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USAP Pool status change: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v3, "ENABLED"

    goto :goto_0

    :cond_2
    const-string v3, "DISABLED"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 444
    if-eqz p1, :cond_3

    .line 445
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 447
    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    .line 448
    return-object v2
.end method
