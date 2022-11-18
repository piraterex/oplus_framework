.class Lcom/android/framework/protobuf/AllocatedBuffer$1;
.super Lcom/android/framework/protobuf/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist array()[B
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist arrayOffset()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public blacklist hasArray()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public blacklist hasNioBuffer()Z
    .locals 1

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist limit()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public blacklist nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist position()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist position(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .locals 1
    .param p1, "position"    # I

    .line 190
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    return-object p0
.end method

.method public blacklist remaining()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method
