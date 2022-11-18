.class public Landroid/filterfw/core/FilterContext;
.super Ljava/lang/Object;
.source "FilterContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mFrameManager:Landroid/filterfw/core/FrameManager;

.field private greylist-max-o mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private greylist-max-o mGraphs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/filterfw/core/FilterGraph;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStoredFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method final greylist-max-o addGraph(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 123
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public declared-synchronized greylist-max-o fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 82
    .local v0, "frame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->onFrameFetch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local p0    # "this":Landroid/filterfw/core/FilterContext;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 80
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public greylist getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public greylist-max-o initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 2
    .param p1, "environment"    # Landroid/filterfw/core/GLEnvironment;

    .line 59
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 65
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to re-initialize GL Environment for FilterContext!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist-max-o removeFrame(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 90
    .local v0, "frame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local p0    # "this":Landroid/filterfw/core/FilterContext;
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o setFrameManager(Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/filterfw/core/FrameManager;

    .line 42
    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/filterfw/core/FrameManager;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 49
    invoke-virtual {p1, p0}, Landroid/filterfw/core/FrameManager;->setContext(Landroid/filterfw/core/FilterContext;)V

    .line 51
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to set FrameManager which is already bound to another FilterContext!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to set null FrameManager!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist-max-o storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 73
    .local v0, "storedFrame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 76
    .end local p0    # "this":Landroid/filterfw/core/FilterContext;
    :cond_0
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->onFrameStore()V

    .line 77
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "storedFrame":Landroid/filterfw/core/Frame;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "frame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o tearDown()V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Frame;

    .line 99
    .local v1, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 100
    nop

    .end local v1    # "frame":Landroid/filterfw/core/Frame;
    goto :goto_0

    .line 101
    .end local p0    # "this":Landroid/filterfw/core/FilterContext;
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/FilterGraph;

    .line 105
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 106
    .end local v1    # "graph":Landroid/filterfw/core/FilterGraph;
    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/filterfw/core/FrameManager;->tearDown()V

    .line 112
    iput-object v1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 116
    :cond_2
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    .line 118
    iput-object v1, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_3
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
