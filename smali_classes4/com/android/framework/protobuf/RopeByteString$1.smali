.class Lcom/android/framework/protobuf/RopeByteString$1;
.super Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/RopeByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

.field final blacklist pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/RopeByteString;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/RopeByteString;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/framework/protobuf/RopeByteString;

    .line 285
    iput-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$1;->this$0:Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 286
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    .line 287
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$1;->nextPiece()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    return-void
.end method

.method private blacklist nextPiece()Lcom/android/framework/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist nextByte()B
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    .line 306
    .local v0, "b":B
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$1;->nextPiece()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    .line 309
    :cond_0
    return v0

    .line 303
    .end local v0    # "b":B
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
