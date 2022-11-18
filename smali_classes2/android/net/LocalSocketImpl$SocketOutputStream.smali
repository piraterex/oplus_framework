.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/LocalSocketImpl;

    .line 121
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 126
    return-void
.end method

.method public whitelist test-api write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v0}, Landroid/net/LocalSocketImpl;->-$$Nest$fgetwriteMonitor(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-$$Nest$fgetfd(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 153
    .local v1, "myFd":Ljava/io/FileDescriptor;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2, p1, v1}, Landroid/net/LocalSocketImpl;->-$$Nest$mwrite_native(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V

    .line 155
    .end local v1    # "myFd":Ljava/io/FileDescriptor;
    monitor-exit v0

    .line 156
    return-void

    .line 153
    .restart local v1    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/LocalSocketImpl$SocketOutputStream;
    .end local p1    # "b":I
    throw v2

    .line 155
    .end local v1    # "myFd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/net/LocalSocketImpl$SocketOutputStream;
    .restart local p1    # "b":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    .line 132
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v0}, Landroid/net/LocalSocketImpl;->-$$Nest$fgetwriteMonitor(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-$$Nest$fgetfd(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 139
    .local v1, "myFd":Ljava/io/FileDescriptor;
    if-eqz v1, :cond_1

    .line 141
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    .line 144
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2, p1, p2, p3, v1}, Landroid/net/LocalSocketImpl;->-$$Nest$mwriteba_native(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V

    .line 145
    .end local v1    # "myFd":Ljava/io/FileDescriptor;
    monitor-exit v0

    .line 146
    return-void

    .line 142
    .restart local v1    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Landroid/net/LocalSocketImpl$SocketOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2

    .line 139
    .restart local p0    # "this":Landroid/net/LocalSocketImpl$SocketOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/LocalSocketImpl$SocketOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2

    .line 145
    .end local v1    # "myFd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/net/LocalSocketImpl$SocketOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
