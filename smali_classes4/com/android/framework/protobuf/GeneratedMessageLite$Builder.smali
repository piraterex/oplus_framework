.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.super Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected blacklist instance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected blacklist isBuilt:Z


# direct methods
.method protected constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 342
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 343
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 345
    return-void
.end method

.method private blacklist mergeFromInstance(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 414
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "dest":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    .local p2, "src":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    return-void
.end method


# virtual methods
.method public final blacklist build()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 395
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    return-object v0

    .line 396
    :cond_0
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newUninitializedMessageException(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist build()Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 389
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clear()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 370
    return-object p0
.end method

.method public bridge synthetic blacklist clear()Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 1

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 376
    .local v0, "builder":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    .line 377
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 1

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

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

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist copyOnWrite()V
    .locals 2

    .line 352
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 355
    .local v0, "newInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 356
    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 359
    .end local v0    # "newInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    :cond_0
    return-void
.end method

.method public blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist internalMergeFrom(Lcom/android/framework/protobuf/AbstractMessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist internalMergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist isInitialized()Z
    .locals 2

    .line 363
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
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

    .line 453
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 457
    :try_start_0
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 458
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;

    move-result-object v2

    .line 457
    invoke-interface {v0, v1, v2, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    nop

    .line 465
    return-object p0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 463
    :cond_0
    throw v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 409
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-direct {p0, v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 410
    return-object p0
.end method

.method public blacklist mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
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

    .line 445
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 8
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
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

    .line 426
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 428
    :try_start_0
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    add-int v6, p2, p3

    new-instance v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    invoke-direct {v7, p4}, Lcom/android/framework/protobuf/ArrayDecoders$Registers;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    nop

    .line 438
    return-object p0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from byte array should not throw IOException."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 431
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 432
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

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

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

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

    .line 330
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
