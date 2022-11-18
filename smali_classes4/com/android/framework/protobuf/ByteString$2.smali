.class Lcom/android/framework/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/framework/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I
    .locals 4
    .param p1, "former"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "latter"    # Lcom/android/framework/protobuf/ByteString;

    .line 257
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    .line 258
    .local v0, "formerBytes":Lcom/android/framework/protobuf/ByteString$ByteIterator;
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v1

    .line 260
    .local v1, "latterBytes":Lcom/android/framework/protobuf/ByteString$ByteIterator;
    :goto_0
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    nop

    .line 264
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v2

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 265
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 266
    return v2

    .line 268
    .end local v2    # "result":I
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 254
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString$2;->compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I

    move-result p1

    return p1
.end method
