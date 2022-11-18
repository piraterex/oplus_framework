.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/RevocableFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/RevocableFileDescriptor;

    .line 114
    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method

.method private blacklist checkRevoked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmRevoked(Landroid/os/RevocableFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EPERM:I

    const-string v2, "RevocableFileDescriptor"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public whitelist onFsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 159
    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onFsync()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 161
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 162
    return-void
.end method

.method public whitelist onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 124
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public whitelist onRead(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "n":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/InterruptedIOException;
    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    .line 137
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 139
    :cond_0
    :goto_1
    return v0
.end method

.method public whitelist onRelease()V
    .locals 2

    .line 166
    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fputmRevoked(Landroid/os/RevocableFileDescriptor;Z)V

    .line 168
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 169
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    .line 172
    :cond_0
    return-void
.end method

.method public whitelist onWrite(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "n":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/InterruptedIOException;
    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    .line 152
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 154
    :cond_0
    :goto_1
    return v0
.end method
