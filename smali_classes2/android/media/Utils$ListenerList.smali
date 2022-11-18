.class public Landroid/media/Utils$ListenerList;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Utils$ListenerList$ListenerWithCancellation;,
        Landroid/media/Utils$ListenerList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mClearCallingIdentity:Z

.field private final blacklist mForceRemoveConsistency:Z

.field private blacklist mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictSingleCallerOnEvent:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 473
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/media/Utils$ListenerList;-><init>(ZZZ)V

    .line 476
    return-void
.end method

.method public constructor blacklist <init>(ZZZ)V
    .locals 1
    .param p1, "restrictSingleCallerOnEvent"    # Z
    .param p2, "clearCallingIdentity"    # Z
    .param p3, "forceRemoveConsistency"    # Z

    .line 499
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    .line 500
    iput-boolean p1, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    .line 501
    iput-boolean p2, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    .line 502
    iput-boolean p3, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    .line 503
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/Utils$ListenerList$Listener<",
            "TV;>;)V"
        }
    .end annotation

    .line 539
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    .local p3, "listener":Landroid/media/Utils$ListenerList$Listener;, "Landroid/media/Utils$ListenerList$Listener<TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v0, Landroid/media/Utils$ListenerList$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/media/Utils$ListenerList$1;-><init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 578
    .local v0, "listenerWithCancellation":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    monitor-exit v1

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist notify(ILjava/lang/Object;)V
    .locals 6
    .param p1, "eventCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 615
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    .local p2, "info":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 617
    monitor-exit v0

    return-void

    .line 619
    :cond_0
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 620
    .local v1, "listeners":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    iget-boolean v0, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 625
    .local v0, "identity":Ljava/lang/Long;
    :goto_0
    :try_start_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 626
    .local v4, "object":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    .line 628
    .local v5, "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    invoke-interface {v5, p1, p2}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 631
    :cond_2
    if-eqz v0, :cond_3

    .line 632
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    :cond_3
    return-void

    .line 631
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 632
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    :cond_4
    throw v2

    .line 620
    .end local v0    # "identity":Ljava/lang/Long;
    .end local v1    # "listeners":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist remove(Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 591
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    .line 596
    .local v1, "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    if-nez v1, :cond_0

    .line 597
    monitor-exit v0

    return-void

    .line 599
    :cond_0
    iget-object v2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-interface {v1}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->cancel()V

    .line 604
    return-void

    .line 600
    .end local v1    # "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
