.class Landroid/os/ZygoteProcess$ZygoteState;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ZygoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZygoteState"
.end annotation


# instance fields
.field private final blacklist mAbiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClosed:Z

.field final blacklist mUsapSocketAddress:Landroid/net/LocalSocketAddress;

.field final blacklist mZygoteInputStream:Ljava/io/DataInputStream;

.field final blacklist mZygoteOutputWriter:Ljava/io/BufferedWriter;

.field private final blacklist mZygoteSessionSocket:Landroid/net/LocalSocket;

.field final blacklist mZygoteSocketAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method private constructor blacklist <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .locals 0
    .param p1, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "usapSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p3, "zygoteSessionSocket"    # Landroid/net/LocalSocket;
    .param p4, "zygoteInputStream"    # Ljava/io/DataInputStream;
    .param p5, "zygoteOutputWriter"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p6, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 216
    iput-object p2, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    .line 217
    iput-object p3, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    .line 218
    iput-object p4, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 219
    iput-object p5, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 220
    iput-object p6, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    .line 221
    return-void
.end method

.method static blacklist connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 11
    .param p0, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p1, "usapSocketAddress"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 241
    .local v0, "zygoteSessionSocket":Landroid/net/LocalSocket;
    if-eqz p0, :cond_0

    .line 246
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 247
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v1

    .line 248
    .local v8, "zygoteInputStream":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 250
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    .line 258
    .local v9, "zygoteOutputWriter":Ljava/io/BufferedWriter;
    nop

    .line 260
    new-instance v10, Landroid/os/ZygoteProcess$ZygoteState;

    .line 262
    invoke-static {v9, v8}, Landroid/os/ZygoteProcess;->-$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v7

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/os/ZygoteProcess$ZygoteState;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 260
    return-object v10

    .line 252
    .end local v8    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v9    # "zygoteOutputWriter":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    .line 257
    :goto_1
    throw v1

    .line 242
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "zygoteSocketAddress can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ZygoteProcess"

    const-string v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    .line 284
    return-void
.end method

.method blacklist getUsapSessionSocket()Landroid/net/LocalSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 267
    .local v0, "usapSessionSocket":Landroid/net/LocalSocket;
    iget-object v1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 269
    return-object v0
.end method

.method greylist-max-o isClosed()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return v0
.end method

.method greylist-max-o matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "abi"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
