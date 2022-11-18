.class public Landroid/os/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field greylist-max-o registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private declared-synchronized greylist-max-o internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 92
    .local v2, "r":Landroid/os/Registrant;
    invoke-virtual {v2, p1, p2}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v2    # "r":Landroid/os/Registrant;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    .end local v1    # "s":I
    .end local p0    # "this":Landroid/os/RegistrantList;
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    .end local p1    # "result":Ljava/lang/Object;
    .end local p2    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized greylist add(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 36
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    .end local p0    # "this":Landroid/os/RegistrantList;
    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist add(Landroid/os/Registrant;)V
    .locals 1
    .param p1, "r"    # Landroid/os/Registrant;

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 53
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    .end local p0    # "this":Landroid/os/RegistrantList;
    .end local p1    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 45
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    .end local p0    # "this":Landroid/os/RegistrantList;
    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-p get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    .end local p0    # "this":Landroid/os/RegistrantList;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public greylist notifyRegistrants()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public greylist notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 121
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public greylist notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public declared-synchronized greylist remove(Landroid/os/Handler;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;

    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 129
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 132
    .local v2, "r":Landroid/os/Registrant;
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 137
    .local v3, "rh":Landroid/os/Handler;
    if-eqz v3, :cond_0

    if-ne v3, p1, :cond_1

    .line 138
    :cond_0
    invoke-virtual {v2}, Landroid/os/Registrant;->clear()V

    .line 128
    .end local v2    # "r":Landroid/os/Registrant;
    .end local v3    # "rh":Landroid/os/Handler;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    .end local v1    # "s":I
    .end local p0    # "this":Landroid/os/RegistrantList;
    :cond_2
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 127
    .end local p1    # "h":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist removeAll()V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    .end local p0    # "this":Landroid/os/RegistrantList;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist removeCleared()V
    .locals 3

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 61
    iget-object v1, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 63
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, v1, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v1    # "r":Landroid/os/Registrant;
    .end local p0    # "this":Landroid/os/RegistrantList;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist size()I
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 77
    .end local p0    # "this":Landroid/os/RegistrantList;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
