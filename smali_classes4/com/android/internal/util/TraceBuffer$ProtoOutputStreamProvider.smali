.class Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;
.super Ljava/lang/Object;
.source "TraceBuffer.java"

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/TraceBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtoOutputStreamProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBytes(Landroid/util/proto/ProtoOutputStream;)[B
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 88
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 79
    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getBytes(Landroid/util/proto/ProtoOutputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getItemSize(Landroid/util/proto/ProtoOutputStream;)I
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 83
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getItemSize(Ljava/lang/Object;)I
    .locals 0

    .line 79
    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getItemSize(Landroid/util/proto/ProtoOutputStream;)I

    move-result p1

    return p1
.end method

.method public blacklist write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "encapsulatingProto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Ljava/util/Queue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p2, "buffer":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/util/proto/ProtoOutputStream;>;"
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 95
    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/proto/ProtoOutputStream;

    .line 96
    .local v1, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    .line 97
    .local v2, "protoBytes":[B
    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .end local v1    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .end local v2    # "protoBytes":[B
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public bridge synthetic blacklist write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V

    return-void
.end method
