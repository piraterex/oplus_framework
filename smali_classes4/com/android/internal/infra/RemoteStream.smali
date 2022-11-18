.class public abstract Lcom/android/internal/infra/RemoteStream;
.super Lcom/android/internal/infra/AndroidFuture;
.source "RemoteStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RES:",
        "Ljava/lang/Object;",
        "IOSTREAM::",
        "Ljava/io/Closeable;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TRES;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final blacklist mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mLocalPipe:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V
    .locals 4
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .local p1, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p2, "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TIOSTREAM;TRES;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    .line 192
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 193
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    aget-object v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 194
    .local v3, "remotePipe":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-interface {p1, v3}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 198
    .end local v3    # "remotePipe":Landroid/os/ParcelFileDescriptor;
    :cond_1
    if-eqz p4, :cond_2

    move v1, v2

    :cond_2
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    .line 199
    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/infra/RemoteStream;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    goto :goto_2

    .line 193
    .restart local v3    # "remotePipe":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .end local p1    # "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .end local p2    # "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TIOSTREAM;TRES;>;"
    .end local p3    # "backgroundExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "read":Z
    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 203
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "remotePipe":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .restart local p1    # "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .restart local p2    # "handleStream":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TIOSTREAM;TRES;>;"
    .restart local p3    # "backgroundExecutor":Ljava/util/concurrent/Executor;
    .restart local p4    # "read":Z
    :catchall_2
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 207
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;ZLcom/android/internal/infra/RemoteStream-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/infra/RemoteStream;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$sendBytes$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/io/OutputStream;)Ljava/lang/Void;
    .locals 1
    .param p0, "write"    # Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$sendBytes$1([BLjava/io/OutputStream;)Ljava/lang/Void;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 128
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 129
    .local v2, "numRead":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 130
    nop

    .line 134
    .end local v2    # "numRead":I
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 132
    .restart local v2    # "numRead":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 133
    .end local v2    # "numRead":I
    goto :goto_0
.end method

.method public static blacklist receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "[B>;"
        }
    .end annotation

    .line 115
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/InputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 98
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p1, "read":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/InputStream;TR;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$1;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$1;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 164
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p1, "write":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Ljava/io/OutputStream;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/OutputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 149
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    .local p1, "write":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<Ljava/io/OutputStream;TR;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$2;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$2;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;[B)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 176
    .local p0, "ipc":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;-><init>([B)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")TIOSTREAM;"
        }
    .end annotation
.end method

.method protected blacklist onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRES;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    .local p1, "res":Ljava/lang/Object;, "TRES;"
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 213
    .local p0, "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 214
    .local v0, "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    invoke-interface {v1, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/RemoteStream;->complete(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 217
    .end local v0    # "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    :cond_0
    goto :goto_1

    .line 213
    .restart local v0    # "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 215
    .end local v0    # "stream":Ljava/io/Closeable;, "TIOSTREAM;"
    .restart local p0    # "this":Lcom/android/internal/infra/RemoteStream;, "Lcom/android/internal/infra/RemoteStream<TRES;TIOSTREAM;>;"
    :catchall_2
    move-exception v0

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
