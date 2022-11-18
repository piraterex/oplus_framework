.class public abstract Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 154
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 386
    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 396
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    invoke-static {p0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    instance-of v0, p0, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_4

    .line 403
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "lazyValues":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/LazyStringList;

    .line 405
    .local v1, "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 406
    .local v2, "begin":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 407
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element at index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is null."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "message":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-lt v5, v2, :cond_0

    .line 411
    invoke-interface {v1, v5}, Lcom/android/framework/protobuf/LazyStringList;->remove(I)Ljava/lang/Object;

    .line 410
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 413
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 415
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    instance-of v5, v4, Lcom/android/framework/protobuf/ByteString;

    if-eqz v5, :cond_2

    .line 416
    move-object v5, v4

    check-cast v5, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v1, v5}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    goto :goto_2

    .line 418
    :cond_2
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/android/framework/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 421
    .end local v0    # "lazyValues":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    .end local v2    # "begin":I
    :cond_3
    goto :goto_3

    .line 422
    :cond_4
    instance-of v0, p0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v0, :cond_5

    .line 423
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 425
    :cond_5
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->addAllCheckingNulls(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 428
    :goto_3
    return-void
.end method

.method private static blacklist addAllCheckingNulls(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 359
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 360
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 362
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 363
    .local v0, "begin":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 364
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_2

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Element at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is null."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "message":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 368
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 370
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 374
    :cond_3
    return-void
.end method

.method private blacklist getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .line 350
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method protected static blacklist newUninitializedMessageException(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/UninitializedMessageException;
    .locals 1
    .param p0, "message"    # Lcom/android/framework/protobuf/MessageLite;

    .line 379
    new-instance v0, Lcom/android/framework/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UninitializedMessageException;-><init>(Lcom/android/framework/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist clone()Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 1

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->clone()Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->clone()Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist internalMergeFrom(Lcom/android/framework/protobuf/AbstractMessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public blacklist mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public blacklist mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Z
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 322
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 323
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_0
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    .line 326
    .local v1, "size":I
    new-instance v2, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v2, p1, v1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 327
    .local v2, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 328
    const/4 v3, 0x1

    return v3
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 177
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object p0

    .line 182
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 193
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-object p0

    .line 198
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "other"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->internalMergeFrom(Lcom/android/framework/protobuf/AbstractMessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist mergeFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 251
    .local v0, "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 253
    return-object p0
.end method

.method public blacklist mergeFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 260
    .local v0, "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 262
    return-object p0
.end method

.method public blacklist mergeFrom([B)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeFrom([BII)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 213
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-object p0

    .line 218
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 238
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return-object p0

    .line 243
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([B)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/framework/protobuf/AbstractMessageLite$Builder;, "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
