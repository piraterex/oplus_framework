.class Landroid/media/Utils$ListenerList$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/media/Utils$ListenerList$ListenerWithCancellation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist mCancelled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/media/Utils$ListenerList;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/media/Utils$ListenerList$Listener;


# direct methods
.method constructor blacklist <init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/Utils$ListenerList;

    .line 545
    .local p0, "this":Landroid/media/Utils$ListenerList$1;, "Landroid/media/Utils$ListenerList$1;"
    iput-object p1, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    iput-object p2, p0, Landroid/media/Utils$ListenerList$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/Utils$ListenerList$1;->val$listener:Landroid/media/Utils$ListenerList$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    .line 547
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 2

    .line 568
    .local p0, "this":Landroid/media/Utils$ListenerList$1;, "Landroid/media/Utils$ListenerList$1;"
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    iput-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    .line 571
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 573
    :cond_0
    iput-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    .line 575
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$onEvent$0$android-media-Utils$ListenerList$1(Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/Utils$ListenerList$Listener;
    .param p2, "eventCode"    # I
    .param p3, "info"    # Ljava/lang/Object;

    .line 554
    .local p0, "this":Landroid/media/Utils$ListenerList$1;, "Landroid/media/Utils$ListenerList$1;"
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    iget-boolean v0, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    if-eqz v0, :cond_1

    return-void

    .line 561
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/media/Utils$ListenerList$Listener;->onEvent(ILjava/lang/Object;)V

    goto :goto_1

    .line 555
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    if-eqz v1, :cond_3

    monitor-exit v0

    return-void

    .line 557
    :cond_3
    invoke-interface {p1, p2, p3}, Landroid/media/Utils$ListenerList$Listener;->onEvent(ILjava/lang/Object;)V

    .line 558
    monitor-exit v0

    .line 563
    :goto_1
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onEvent(ILjava/lang/Object;)V
    .locals 3
    .param p1, "eventCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 551
    .local p0, "this":Landroid/media/Utils$ListenerList$1;, "Landroid/media/Utils$ListenerList$1;"
    .local p2, "info":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/Utils$ListenerList$1;->val$listener:Landroid/media/Utils$ListenerList$Listener;

    new-instance v2, Landroid/media/Utils$ListenerList$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Landroid/media/Utils$ListenerList$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/Utils$ListenerList$1;Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method
