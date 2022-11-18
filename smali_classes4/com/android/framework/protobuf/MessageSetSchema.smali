.class final Lcom/android/framework/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lcom/android/framework/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist hasExtensions:Z

.field private final blacklist unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)V
    .locals 1
    .param p3, "defaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<**>;"
    .local p2, "extensionSchema":Lcom/android/framework/protobuf/ExtensionSchema;, "Lcom/android/framework/protobuf/ExtensionSchema<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 49
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/ExtensionSchema;->hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    .line 50
    iput-object p2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    .line 51
    iput-object p3, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 52
    return-void
.end method

.method private blacklist getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 389
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "schema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    .local v0, "unknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private blacklist mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p4, "reader"    # Lcom/android/framework/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "extensionSchema":Lcom/android/framework/protobuf/ExtensionSchema;, "Lcom/android/framework/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 243
    .local v7, "unknownFields":Ljava/lang/Object;, "TUB;"
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v8

    .line 246
    .local v8, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TET;>;"
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v0

    .line 247
    .local v9, "number":I
    const v0, 0x7fffffff

    if-ne v9, v0, :cond_0

    .line 263
    invoke-virtual {p1, p3, v7}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    return-void

    .line 250
    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/FieldSet;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 257
    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    return-void

    .line 263
    .end local v9    # "number":I
    :catchall_0
    move-exception v0

    invoke-virtual {p1, p3, v7}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    throw v0
.end method

.method static blacklist newSchema(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageSetSchema;
    .locals 1
    .param p2, "defaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MessageLite;",
            ")",
            "Lcom/android/framework/protobuf/MessageSetSchema<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<**>;"
    .local p1, "extensionSchema":Lcom/android/framework/protobuf/ExtensionSchema;, "Lcom/android/framework/protobuf/ExtensionSchema<*>;"
    new-instance v0, Lcom/android/framework/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/MessageSetSchema;-><init>(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)V

    return-object v0
.end method

.method private blacklist parseMessageSetItemOrUnknownField(Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/FieldSet;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "reader"    # Lcom/android/framework/protobuf/Reader;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TET;>;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p3, "extensionSchema":Lcom/android/framework/protobuf/ExtensionSchema;, "Lcom/android/framework/protobuf/ExtensionSchema<TET;>;"
    .local p4, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TET;>;"
    .local p5, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v0

    .line 283
    .local v0, "startTag":I
    sget v1, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 284
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 287
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 286
    invoke-virtual {p3, p2, v1, v3}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "extension":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/android/framework/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V

    .line 291
    return v2

    .line 293
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v2

    return v2

    .line 296
    .end local v1    # "extension":Ljava/lang/Object;
    :cond_1
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v1

    return v1

    .line 316
    :cond_2
    const/4 v1, 0x0

    .line 317
    .local v1, "typeId":I
    const/4 v3, 0x0

    .line 318
    .local v3, "rawBytes":Lcom/android/framework/protobuf/ByteString;
    const/4 v4, 0x0

    .line 324
    .local v4, "extension":Ljava/lang/Object;
    :goto_0
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v5

    .line 325
    .local v5, "number":I
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    .line 326
    goto :goto_1

    .line 329
    :cond_3
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v6

    .line 330
    .local v6, "tag":I
    sget v7, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v6, v7, :cond_4

    .line 331
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v1

    .line 332
    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 333
    invoke-virtual {p3, p2, v7, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v4

    .line 334
    goto :goto_0

    .line 335
    :cond_4
    sget v7, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v6, v7, :cond_6

    .line 336
    if-eqz v4, :cond_5

    .line 337
    invoke-virtual {p3, p1, v4, p2, p4}, Lcom/android/framework/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V

    .line 339
    goto :goto_0

    .line 342
    :cond_5
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    .line 343
    goto :goto_0

    .line 345
    :cond_6
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v7

    if-nez v7, :cond_a

    .line 346
    nop

    .line 351
    .end local v5    # "number":I
    .end local v6    # "tag":I
    :goto_1
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v5

    sget v6, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v5, v6, :cond_9

    .line 356
    if-eqz v3, :cond_8

    .line 357
    if-eqz v4, :cond_7

    .line 360
    invoke-virtual {p3, v3, v4, p2, p4}, Lcom/android/framework/protobuf/ExtensionSchema;->parseMessageSetItem(Lcom/android/framework/protobuf/ByteString;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V

    goto :goto_2

    .line 362
    :cond_7
    invoke-virtual {p5, p6, v1, v3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    .line 365
    :cond_8
    :goto_2
    return v2

    .line 352
    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 349
    :cond_a
    goto :goto_0
.end method

.method private blacklist writeUnknownFieldsHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "messageUnknown":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const/4 v2, 0x0

    return v2

    .line 74
    :cond_0
    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    .line 76
    .local v2, "messageExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v3

    .line 77
    .local v3, "otherExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 79
    .end local v2    # "messageExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    .end local v3    # "otherExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public blacklist getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 378
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v1, p1}, Lcom/android/framework/protobuf/MessageSetSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    iget-boolean v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_0
    return v0
.end method

.method public blacklist hashCode(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 85
    .local v0, "hashCode":I
    iget-boolean v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1

    .line 87
    .local v1, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    mul-int/lit8 v2, v0, 0x35

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 89
    .end local v1    # "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    :cond_0
    return v0
.end method

.method public final blacklist isInitialized(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 370
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 371
    .local v0, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isInitialized()Z

    move-result v1

    return v1
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSetSchema;->mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 228
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    .locals 17
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v1, v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 136
    .local v1, "unknownFields":Lcom/android/framework/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 138
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v1, v2, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-object v10, v1

    goto :goto_0

    .line 136
    :cond_0
    move-object v10, v1

    .line 140
    .end local v1    # "unknownFields":Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .local v10, "unknownFields":Lcom/android/framework/protobuf/UnknownFieldSetLite;
    :goto_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 141
    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v11

    .line 142
    .local v11, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p3

    .line 143
    .end local p3    # "position":I
    .local v1, "position":I
    .local v2, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :goto_1
    if-ge v1, v8, :cond_a

    .line 144
    invoke-static {v7, v1, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v12

    .line 145
    .end local v1    # "position":I
    .local v12, "position":I
    iget v13, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 146
    .local v13, "startTag":I
    sget v1, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v3, 0x2

    if-eq v13, v1, :cond_3

    .line 147
    invoke-static {v13}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 148
    iget-object v1, v0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    iget-object v3, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iget-object v4, v0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 151
    invoke-static {v13}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 149
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 152
    .end local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local v14, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    if-eqz v14, :cond_1

    .line 155
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    .line 156
    invoke-virtual {v14}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 154
    invoke-static {v1, v7, v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 158
    .end local v12    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v14, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v2, v3}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object v2, v14

    goto :goto_1

    .line 160
    .end local v1    # "position":I
    .restart local v12    # "position":I
    :cond_1
    nop

    .line 161
    move v1, v13

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move-object v2, v14

    .end local v12    # "position":I
    .restart local v1    # "position":I
    goto :goto_1

    .line 165
    .end local v1    # "position":I
    .end local v14    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v12    # "position":I
    :cond_2
    invoke-static {v13, v7, v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 167
    .end local v12    # "position":I
    .restart local v1    # "position":I
    goto :goto_1

    .line 170
    .end local v1    # "position":I
    .restart local v12    # "position":I
    :cond_3
    const/4 v1, 0x0

    .line 171
    .local v1, "typeId":I
    const/4 v4, 0x0

    .line 173
    .local v4, "rawBytes":Lcom/android/framework/protobuf/ByteString;
    :goto_2
    if-ge v12, v8, :cond_8

    .line 174
    invoke-static {v7, v12, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 175
    .end local v12    # "position":I
    .local v5, "position":I
    iget v6, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 176
    .local v6, "tag":I
    invoke-static {v6}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v12

    .line 177
    .local v12, "number":I
    invoke-static {v6}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v14

    .line 178
    .local v14, "wireType":I
    packed-switch v12, :pswitch_data_0

    move-object/from16 v16, v2

    .end local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local v16, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    goto :goto_3

    .line 190
    .end local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :pswitch_0
    if-eqz v2, :cond_4

    .line 192
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v15

    .line 193
    invoke-virtual {v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 192
    invoke-virtual {v15, v3}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    .line 191
    invoke-static {v3, v7, v5, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 195
    .end local v5    # "position":I
    .local v3, "position":I
    iget-object v5, v2, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v15, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v5, v15}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 196
    move v12, v3

    const/4 v3, 0x2

    goto :goto_2

    .line 198
    .end local v3    # "position":I
    .restart local v5    # "position":I
    :cond_4
    const/4 v3, 0x2

    if-ne v14, v3, :cond_5

    .line 199
    invoke-static {v7, v5, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 200
    .end local v5    # "position":I
    .restart local v3    # "position":I
    iget-object v5, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    .line 201
    move v12, v3

    const/4 v3, 0x2

    goto :goto_2

    .line 198
    .end local v3    # "position":I
    .restart local v5    # "position":I
    :cond_5
    move-object/from16 v16, v2

    goto :goto_3

    .line 180
    :pswitch_1
    if-nez v14, :cond_6

    .line 181
    invoke-static {v7, v5, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 182
    .end local v5    # "position":I
    .restart local v3    # "position":I
    iget v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 183
    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    iget-object v15, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-object/from16 v16, v2

    .end local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 185
    invoke-virtual {v5, v15, v2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 186
    .end local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    move v12, v3

    const/4 v3, 0x2

    goto :goto_2

    .line 180
    .end local v3    # "position":I
    .restart local v5    # "position":I
    :cond_6
    move-object/from16 v16, v2

    .line 208
    .end local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :goto_3
    sget v2, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v6, v2, :cond_7

    .line 209
    move v12, v5

    goto :goto_4

    .line 211
    :cond_7
    invoke-static {v6, v7, v5, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v12

    .line 212
    .end local v5    # "position":I
    .end local v6    # "tag":I
    .end local v14    # "wireType":I
    .local v12, "position":I
    move-object/from16 v2, v16

    const/4 v3, 0x2

    goto :goto_2

    .line 173
    .end local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :cond_8
    move-object/from16 v16, v2

    .line 214
    .end local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :goto_4
    if-eqz v4, :cond_9

    .line 215
    nop

    .line 216
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    .line 215
    invoke-virtual {v10, v2, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 218
    .end local v1    # "typeId":I
    .end local v4    # "rawBytes":Lcom/android/framework/protobuf/ByteString;
    .end local v13    # "startTag":I
    :cond_9
    move v1, v12

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 219
    .end local v12    # "position":I
    .end local v16    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local v1, "position":I
    .restart local v2    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :cond_a
    if-ne v1, v8, :cond_b

    .line 222
    return-void

    .line 220
    :cond_b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 6
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/android/framework/protobuf/MessageSetSchema;, "Lcom/android/framework/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 104
    .local v0, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    .local v2, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 108
    .local v3, "fd":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {v3}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    instance-of v4, v2, Lcom/android/framework/protobuf/LazyField$LazyEntry;

    if-eqz v4, :cond_0

    .line 112
    nop

    .line 113
    invoke-interface {v3}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    move-object v5, v2

    check-cast v5, Lcom/android/framework/protobuf/LazyField$LazyEntry;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/LazyField$LazyEntry;->getField()Lcom/android/framework/protobuf/LazyField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/framework/protobuf/LazyField;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v5

    .line 112
    invoke-interface {p2, v4, v5}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-interface {v3}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 117
    .end local v2    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "fd":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :goto_1
    goto :goto_0

    .line 109
    .restart local v2    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v3    # "fd":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Found invalid MessageSet item."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v2    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "fd":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :cond_2
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/framework/protobuf/MessageSetSchema;->writeUnknownFieldsHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 119
    return-void
.end method
