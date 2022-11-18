.class final Lcom/android/framework/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/android/framework/protobuf/Reader;


# static fields
.field private static final blacklist FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final blacklist FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final blacklist NEXT_TAG_UNSET:I


# instance fields
.field private blacklist endGroupTag:I

.field private final blacklist input:Lcom/android/framework/protobuf/CodedInputStream;

.field private blacklist nextTag:I

.field private blacklist tag:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/CodedInputStream;)V
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 66
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/CodedInputStream;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    .line 67
    iput-object p0, v0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    .line 68
    return-void
.end method

.method public static blacklist forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/CodedInputStream;

    .line 59
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;-><init>(Lcom/android/framework/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private blacklist readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1317
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1313
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1311
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1309
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1307
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1305
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1303
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1301
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1299
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1297
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1295
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1293
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1291
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1289
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1287
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1285
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1283
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 225
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 229
    :try_start_0
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 231
    invoke-interface {p1, v1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 233
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 236
    nop

    .line 239
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 236
    return-object v1

    .line 234
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    .end local v0    # "prevEndGroupTag":I
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .end local p1    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .end local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v1    # "message":Ljava/lang/Object;, "TT;"
    .restart local v0    # "prevEndGroupTag":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .restart local p1    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .restart local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catchall_0
    move-exception v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 240
    throw v1
.end method

.method private blacklist readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 204
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v1, v1, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v2, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 211
    .local v1, "prevLimit":I
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "message":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 213
    invoke-interface {p1, v2, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 214
    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 215
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 216
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 218
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 219
    return-object v2

    .line 205
    .end local v1    # "prevLimit":I
    .end local v2    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private blacklist requirePosition(I)V
    .locals 1
    .param p1, "expectedPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1332
    return-void

    .line 1330
    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist requireWireType(I)V
    .locals 1
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed32Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1322
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    .line 1326
    return-void

    .line 1324
    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed64Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 1227
    return-void

    .line 1225
    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist getFieldNumber()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_0

    .line 78
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 83
    :goto_0
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    .line 84
    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public blacklist readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 153
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public blacklist readBoolList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-eqz v0, :cond_3

    .line 694
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 695
    .local v0, "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 718
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 697
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 698
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 700
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 701
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 702
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 703
    nop

    .line 720
    .end local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 706
    .restart local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 707
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    return-void

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 711
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 713
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 714
    return-void

    .line 716
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 721
    .end local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 744
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 723
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 724
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 726
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 728
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 729
    nop

    .line 747
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 732
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 734
    return-void

    .line 736
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 737
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 739
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 740
    return-void

    .line 742
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 246
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readBytesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/ByteString;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 861
    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 866
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_1

    .line 868
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 869
    return-void

    .line 871
    .end local v0    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 857
    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 111
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readDoubleList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_3

    .line 288
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 289
    .local v0, "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 312
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 291
    :pswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 292
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 293
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 295
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 296
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 297
    nop

    .line 314
    .end local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 300
    .restart local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 301
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 305
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 307
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 308
    return-void

    .line 310
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 315
    .end local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 338
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 318
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 319
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 321
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 323
    nop

    .line 341
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 326
    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    return-void

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 331
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 333
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 334
    return-void

    .line 336
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 258
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public blacklist readEnumList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 935
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 936
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 959
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 938
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 939
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 941
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 942
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 943
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 944
    nop

    .line 961
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 947
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 948
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    return-void

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 952
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 954
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 955
    return-void

    .line 957
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 962
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 985
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 964
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 965
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 967
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 969
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 970
    nop

    .line 988
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 973
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 975
    return-void

    .line 977
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 978
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 980
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 981
    return-void

    .line 983
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 147
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 636
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 637
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 660
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 648
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 649
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    return-void

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 653
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 655
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 656
    return-void

    .line 658
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 639
    :sswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 640
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 641
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 643
    .local v2, "endPos":I
    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 644
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 645
    nop

    .line 662
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_3

    .line 663
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 686
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 674
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    return-void

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 679
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    .line 681
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 682
    return-void

    .line 684
    .end local v0    # "nextTag":I
    :cond_5
    goto :goto_1

    .line 665
    :sswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 666
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 667
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 669
    .local v1, "endPos":I
    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_6

    .line 671
    nop

    .line 689
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_3
    return-void

    .line 670
    .restart local v0    # "bytes":I
    .restart local v1    # "endPos":I
    :cond_6
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 141
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFixed64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 578
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 579
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 602
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 581
    :pswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 582
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 583
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 585
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 586
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 587
    nop

    .line 604
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 590
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 591
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    return-void

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 595
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 597
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 598
    return-void

    .line 600
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 605
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 628
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 607
    :pswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 608
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 609
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 611
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 613
    nop

    .line 631
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 616
    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 618
    return-void

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 621
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 623
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 624
    return-void

    .line 626
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 117
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public blacklist readFloatList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_3

    .line 346
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    .line 347
    .local v0, "plist":Lcom/android/framework/protobuf/FloatArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 370
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 358
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 359
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 363
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 365
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 366
    return-void

    .line 368
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 349
    :sswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 350
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 351
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 353
    .local v2, "endPos":I
    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 354
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 355
    nop

    .line 372
    .end local v0    # "plist":Lcom/android/framework/protobuf/FloatArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_3

    .line 373
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 396
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 384
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    return-void

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 389
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    .line 391
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 392
    return-void

    .line 394
    .end local v0    # "nextTag":I
    :cond_5
    goto :goto_1

    .line 375
    :sswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 376
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 377
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 379
    .local v1, "endPos":I
    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_6

    .line 381
    nop

    .line 399
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_3
    return-void

    .line 380
    .restart local v0    # "bytes":I
    .restart local v1    # "endPos":I
    :cond_6
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 189
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 839
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 841
    .local v0, "listTag":I
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 846
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 848
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 849
    return-void

    .line 851
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 843
    :cond_2
    :goto_1
    return-void

    .line 837
    .end local v0    # "listTag":I
    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 829
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 830
    return-void
.end method

.method public blacklist readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 135
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 521
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 544
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 523
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 524
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 526
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 527
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 528
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 529
    nop

    .line 546
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 532
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 533
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 537
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 539
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 540
    return-void

    .line 542
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 547
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 570
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 549
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 550
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 552
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 554
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 555
    nop

    .line 573
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 558
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    return-void

    .line 562
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 563
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 565
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 566
    return-void

    .line 568
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 129
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 462
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 463
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 486
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 465
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 466
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 468
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 469
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 470
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 471
    nop

    .line 488
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 474
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 475
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    return-void

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 479
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 481
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 482
    return-void

    .line 484
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 489
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 512
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 491
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 492
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 494
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 496
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 497
    nop

    .line 515
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 500
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    return-void

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 505
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 507
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 508
    return-void

    .line 510
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1236
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 1237
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1238
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1239
    .local v1, "prevLimit":I
    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1240
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1243
    .local v3, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    .line 1244
    .local v4, "number":I
    const v5, 0x7fffffff

    if-eq v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 1245
    goto :goto_5

    .line 1248
    :cond_0
    const-string v5, "Unable to parse map entry."

    packed-switch v4, :pswitch_data_0

    .line 1259
    :try_start_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    goto :goto_1

    .line 1253
    :pswitch_0
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1256
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1255
    invoke-direct {p0, v6, v7, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1257
    goto :goto_2

    .line 1250
    :pswitch_1
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v7}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 1251
    goto :goto_2

    .line 1264
    :catch_0
    move-exception v6

    goto :goto_3

    .line 1259
    :goto_1
    if-eqz v6, :cond_1

    .line 1269
    :goto_2
    goto :goto_4

    .line 1260
    :cond_1
    new-instance v6, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local v4    # "number":I
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v6
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    .restart local v4    # "number":I
    .local v6, "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1270
    .end local v4    # "number":I
    .end local v6    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_4
    goto :goto_0

    .line 1267
    .restart local v4    # "number":I
    .restart local v6    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_2
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v7

    .line 1271
    .end local v4    # "number":I
    .end local v6    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :cond_3
    :goto_5
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v4, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 1275
    nop

    .line 1276
    return-void

    .line 1274
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 1275
    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 173
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 809
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 811
    .local v0, "listTag":I
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 816
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 818
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 819
    return-void

    .line 821
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 813
    :cond_2
    :goto_1
    return-void

    .line 807
    .end local v0    # "listTag":I
    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 799
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 800
    return-void
.end method

.method public blacklist readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 264
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 993
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 994
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1017
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1005
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1006
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    return-void

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1010
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 1012
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1013
    return-void

    .line 1015
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 996
    :sswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 997
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 998
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1000
    .local v2, "endPos":I
    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1001
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 1002
    nop

    .line 1019
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_3

    .line 1020
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1043
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1031
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1033
    return-void

    .line 1035
    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1036
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    .line 1038
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1039
    return-void

    .line 1041
    .end local v0    # "nextTag":I
    :cond_5
    goto :goto_1

    .line 1022
    :sswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1023
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 1024
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1026
    .local v1, "endPos":I
    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_6

    .line 1028
    nop

    .line 1046
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_3
    return-void

    .line 1027
    .restart local v0    # "bytes":I
    .restart local v1    # "endPos":I
    :cond_6
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 270
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSFixed64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 1051
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 1052
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1075
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1054
    :pswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1055
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1056
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1058
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1059
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 1060
    nop

    .line 1077
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 1063
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1064
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    return-void

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1068
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 1070
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1071
    return-void

    .line 1073
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 1078
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1101
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1080
    :pswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1081
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1082
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1084
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 1086
    nop

    .line 1104
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 1089
    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1091
    return-void

    .line 1093
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1094
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 1096
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1097
    return-void

    .line 1099
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 276
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readSInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 1109
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1110
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1133
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1112
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1113
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1115
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1116
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 1117
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1118
    nop

    .line 1135
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 1121
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1122
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1123
    return-void

    .line 1125
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1126
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 1128
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1129
    return-void

    .line 1131
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 1136
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1159
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1138
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1139
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1141
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 1143
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1144
    nop

    .line 1162
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 1147
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1149
    return-void

    .line 1151
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1152
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 1154
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1155
    return-void

    .line 1157
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 282
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 1167
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 1168
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1191
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1170
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1171
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1173
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1174
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 1175
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1176
    nop

    .line 1193
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 1179
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1180
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    return-void

    .line 1183
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1184
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 1186
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1187
    return-void

    .line 1189
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 1194
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1217
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1196
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1197
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1199
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 1201
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1202
    nop

    .line 1220
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 1205
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1207
    return-void

    .line 1209
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1210
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 1212
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1213
    return-void

    .line 1215
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 159
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 752
    return-void
.end method

.method public blacklist readStringListInternal(Ljava/util/List;Z)V
    .locals 3
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 764
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 765
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    .line 767
    .local v0, "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    .line 768
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    return-void

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 772
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 774
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 775
    return-void

    .line 777
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 780
    .end local v0    # "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    return-void

    .line 784
    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 785
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    .line 787
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 788
    return-void

    .line 790
    .end local v0    # "nextTag":I
    :cond_5
    goto :goto_1

    .line 761
    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 757
    return-void
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 165
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 252
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 877
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 878
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 901
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 880
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 881
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 883
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 884
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 885
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 886
    nop

    .line 903
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 889
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 890
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    return-void

    .line 893
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 894
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 896
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 897
    return-void

    .line 899
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 904
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 927
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 906
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 907
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 909
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 911
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 912
    nop

    .line 930
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 915
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 917
    return-void

    .line 919
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 920
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 922
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 923
    return-void

    .line 925
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 123
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 404
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 405
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 428
    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 407
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 408
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 410
    .local v2, "endPos":I
    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 411
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 412
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 413
    nop

    .line 430
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_1

    .line 416
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 417
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 421
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    .line 423
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 424
    return-void

    .line 426
    .end local v1    # "nextTag":I
    :cond_2
    goto :goto_0

    .line 431
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 454
    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 433
    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 434
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 436
    .local v1, "endPos":I
    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 438
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 439
    nop

    .line 457
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_1
    return-void

    .line 442
    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 444
    return-void

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 447
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    .line 449
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 450
    return-void

    .line 452
    .end local v0    # "nextTag":I
    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist shouldDiscardUnknownFields()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result v0

    return v0
.end method

.method public blacklist skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
