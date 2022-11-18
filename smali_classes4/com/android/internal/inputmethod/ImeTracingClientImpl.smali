.class Lcom/android/internal/inputmethod/ImeTracingClientImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;
.source "ImeTracingClientImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isImeTraceEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->sEnabled:Z

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 0
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "source"    # I

    .line 39
    return-void
.end method

.method public blacklist startTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 98
    return-void
.end method

.method public blacklist stopTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 102
    return-void
.end method

.method public blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "immInstance"    # Landroid/view/inputmethod/InputMethodManager;
    .param p3, "icProto"    # [B

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_1

    .line 50
    monitor-exit v0

    return-void

    .line 52
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 57
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p2, v1, p3}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 58
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->sendToService([BILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v1    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "imeTracing"

    const-string v3, "Exception while sending ime-related client dump to server"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    .line 63
    throw v1

    .line 53
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 45
    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist triggerManagerServiceDump(Ljava/lang/String;)V
    .locals 0
    .param p1, "where"    # Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "dumper"    # Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    .param p3, "icProto"    # [B

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_1

    .line 75
    monitor-exit v0

    return-void

    .line 77
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 82
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-interface {p2, v2, p3}, Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;->dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 83
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->sendToService([BILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "imeTracing"

    const-string v3, "Exception while sending ime-related service dump to server"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    .line 88
    throw v1

    .line 78
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 70
    :cond_2
    :goto_2
    return-void
.end method
