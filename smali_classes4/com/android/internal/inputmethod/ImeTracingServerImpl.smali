.class Lcom/android/internal/inputmethod/ImeTracingServerImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;
.source "ImeTracingServerImpl.java"


# static fields
.field private static final blacklist BUFFER_CAPACITY:I = 0x400000

.field private static final blacklist MAGIC_NUMBER_CLIENTS_VALUE:J = 0x4543415254434d49L

.field private static final blacklist MAGIC_NUMBER_IMMS_VALUE:J = 0x45434152544d4d49L

.field private static final blacklist MAGIC_NUMBER_IMS_VALUE:J = 0x4543415254534d49L

.field private static final blacklist TRACE_DIRNAME:Ljava/lang/String; = "/data/misc/wmtrace/"

.field private static final blacklist TRACE_FILENAME_CLIENTS:Ljava/lang/String; = "ime_trace_clients.winscope"

.field private static final blacklist TRACE_FILENAME_IMMS:Ljava/lang/String; = "ime_trace_managerservice.winscope"

.field private static final blacklist TRACE_FILENAME_IMS:Ljava/lang/String; = "ime_trace_service.winscope"


# instance fields
.field private final blacklist mBufferClients:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mBufferImms:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mBufferIms:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mEnabledLock:Ljava/lang/Object;

.field private final blacklist mTraceFileClients:Ljava/io/File;

.field private final blacklist mTraceFileImms:Ljava/io/File;

.field private final blacklist mTraceFileIms:Ljava/io/File;


# direct methods
.method constructor blacklist <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/ime_trace_clients.winscope"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileClients:Ljava/io/File;

    .line 75
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/ime_trace_service.winscope"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileIms:Ljava/io/File;

    .line 77
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    .line 78
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/ime_trace_managerservice.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileImms:Ljava/io/File;

    .line 79
    return-void
.end method

.method private blacklist resetBuffers()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 236
    return-void
.end method

.method private blacklist writeTracesToFilesLocked()V
    .locals 7

    .line 142
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 143
    .local v0, "clientsProto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x4543415254434d49L    # 4.655612619772045E25

    const-wide v3, 0x10600000001L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 145
    iget-object v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileClients:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 147
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 148
    .local v1, "imsProto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x4543415254534d49L    # 4.655612620672765E25

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 149
    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    iget-object v5, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileIms:Ljava/io/File;

    invoke-virtual {v2, v5, v1}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 151
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 152
    .local v2, "immsProto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x45434152544d4d49L    # 4.655612620334995E25

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 154
    iget-object v3, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileImms:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->resetBuffers()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "clientsProto":Landroid/util/proto/ProtoOutputStream;
    .end local v1    # "imsProto":Landroid/util/proto/ProtoOutputStream;
    .end local v2    # "immsProto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "imeTracing"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "source"    # I

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    packed-switch p2, :pswitch_data_0

    .line 102
    const-string v0, "imeTracing"

    const-string v1, "Request to add to buffer, but source not recognised."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 99
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 93
    return-void

    .line 105
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 209
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 224
    const-string v1, "Writing traces in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->writeTracesToFilesLocked()V

    .line 228
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 214
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startTrace(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 165
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "imeTracing"

    const-string v1, "Warn: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "imeTracing"

    const-string v2, "Warn: Tracing is already started."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v0

    return-void

    .line 176
    :cond_1
    const-string v1, "Starting tracing in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 179
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->resetBuffers()V

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist stopTrace(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 185
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "imeTracing"

    const-string v1, "Warn: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, "Stopping tracing and writing traces in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 200
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->writeTracesToFilesLocked()V

    .line 201
    monitor-exit v0

    .line 202
    return-void

    .line 192
    :cond_2
    :goto_0
    const-string v1, "imeTracing"

    const-string v2, "Warn: Tracing is not available or not started."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v0

    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .locals 0
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "immInstance"    # Landroid/view/inputmethod/InputMethodManager;
    .param p3, "icProto"    # [B

    .line 111
    return-void
.end method

.method public blacklist triggerManagerServiceDump(Ljava/lang/String;)V
    .locals 4
    .param p1, "where"    # Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_1

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sendToService([BILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    nop

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    .line 137
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "imeTracing"

    const-string v3, "Exception while sending ime-related manager service dump to server"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 138
    :goto_1
    return-void

    .line 136
    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    .line 137
    throw v0

    .line 129
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 121
    :cond_2
    :goto_3
    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .locals 0
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "dumper"    # Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    .param p3, "icProto"    # [B

    .line 116
    return-void
.end method
