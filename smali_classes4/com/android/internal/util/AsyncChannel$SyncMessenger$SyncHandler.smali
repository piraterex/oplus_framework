.class Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
.super Landroid/os/Handler;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field private greylist-max-o mLockObject:Ljava/lang/Object;

.field private greylist-max-o mResultMsg:Landroid/os/Message;

.field final synthetic blacklist this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLockObject(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 786
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    .line 787
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 781
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    .line 788
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 793
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "msgCopy":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 795
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    .line 797
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
