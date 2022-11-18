.class public Landroid/util/proto/ProtoStream;
.super Ljava/lang/Object;
.source "ProtoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/proto/ProtoStream$FieldCount;,
        Landroid/util/proto/ProtoStream$FieldType;,
        Landroid/util/proto/ProtoStream$WireType;
    }
.end annotation


# static fields
.field public static final whitelist FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final whitelist FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final whitelist FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final whitelist FIELD_COUNT_SHIFT:I = 0x28

.field public static final whitelist FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final whitelist FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final blacklist FIELD_ID_MASK:I = -0x8

.field public static final whitelist FIELD_ID_SHIFT:I = 0x3

.field public static final whitelist FIELD_TYPE_BOOL:J = 0x800000000L

.field public static final whitelist FIELD_TYPE_BYTES:J = 0xc00000000L

.field public static final whitelist FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final whitelist FIELD_TYPE_ENUM:J = 0xe00000000L

.field public static final whitelist FIELD_TYPE_FIXED32:J = 0x700000000L

.field public static final whitelist FIELD_TYPE_FIXED64:J = 0x600000000L

.field public static final whitelist FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final whitelist FIELD_TYPE_INT32:J = 0x500000000L

.field public static final whitelist FIELD_TYPE_INT64:J = 0x300000000L

.field public static final whitelist FIELD_TYPE_MASK:J = 0xff00000000L

.field public static final whitelist FIELD_TYPE_MESSAGE:J = 0xb00000000L

.field private static final blacklist FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final whitelist FIELD_TYPE_SFIXED32:J = 0xf00000000L

.field public static final whitelist FIELD_TYPE_SFIXED64:J = 0x1000000000L

.field public static final whitelist FIELD_TYPE_SHIFT:I = 0x20

.field public static final whitelist FIELD_TYPE_SINT32:J = 0x1100000000L

.field public static final whitelist FIELD_TYPE_SINT64:J = 0x1200000000L

.field public static final whitelist FIELD_TYPE_STRING:J = 0x900000000L

.field public static final whitelist FIELD_TYPE_UINT32:J = 0xd00000000L

.field public static final whitelist FIELD_TYPE_UINT64:J = 0x400000000L

.field public static final blacklist FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final whitelist WIRE_TYPE_END_GROUP:I = 0x4

.field public static final whitelist WIRE_TYPE_FIXED32:I = 0x5

.field public static final whitelist WIRE_TYPE_FIXED64:I = 0x1

.field public static final whitelist WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final whitelist WIRE_TYPE_MASK:I = 0x7

.field public static final whitelist WIRE_TYPE_START_GROUP:I = 0x3

.field public static final whitelist WIRE_TYPE_VARINT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 18

    .line 340
    const-string v0, "Double"

    const-string v1, "Float"

    const-string v2, "Int64"

    const-string v3, "UInt64"

    const-string v4, "Int32"

    const-string v5, "Fixed64"

    const-string v6, "Fixed32"

    const-string v7, "Bool"

    const-string v8, "String"

    const-string v9, "Group"

    const-string v10, "Message"

    const-string v11, "Bytes"

    const-string v12, "UInt32"

    const-string v13, "Enum"

    const-string v14, "SFixed32"

    const-string v15, "SFixed64"

    const-string v16, "SInt32"

    const-string v17, "SInt64"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/proto/ProtoStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertObjectIdToOrdinal(I)I
    .locals 1
    .param p0, "objectId"    # I

    .line 613
    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method public static blacklist getDepthFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .line 579
    const/16 v0, 0x33

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getFieldCountString(J)Ljava/lang/String;
    .locals 2
    .param p0, "fieldCount"    # J

    .line 464
    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 465
    const-string v0, ""

    return-object v0

    .line 466
    :cond_0
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 467
    const-string v0, "Repeated"

    return-object v0

    .line 468
    :cond_1
    const-wide v0, 0x50000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 469
    const-string v0, "Packed"

    return-object v0

    .line 471
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getFieldIdString(J)Ljava/lang/String;
    .locals 8
    .param p0, "fieldId"    # J

    .line 501
    const-wide v0, 0xf0000000000L

    and-long/2addr v0, p0

    .line 502
    .local v0, "fieldCount":J
    invoke-static {v0, v1}, Landroid/util/proto/ProtoStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "countString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fieldCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    :cond_1
    const-wide v3, 0xff00000000L

    and-long/2addr v3, p0

    .line 511
    .local v3, "fieldType":J
    invoke-static {v3, v4}, Landroid/util/proto/ProtoStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "typeString":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fieldType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 516
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-int v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fieldId=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 517
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 516
    return-object v6
.end method

.method public static whitelist getFieldTypeString(J)Ljava/lang/String;
    .locals 3
    .param p0, "fieldType"    # J

    .line 452
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 453
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/util/proto/ProtoStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 454
    aget-object v1, v1, v0

    return-object v1

    .line 456
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getObjectIdFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .line 592
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7ffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist getOffsetFromToken(J)I
    .locals 1
    .param p0, "token"    # J

    .line 601
    long-to-int v0, p0

    return v0
.end method

.method public static blacklist getRepeatedFromToken(J)Z
    .locals 4
    .param p0, "token"    # J

    .line 570
    const/16 v0, 0x3c

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist getTagSizeFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .line 561
    const/16 v0, 0x3d

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getWireTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wireType"    # I

    .line 479
    packed-switch p0, :pswitch_data_0

    .line 493
    const/4 v0, 0x0

    return-object v0

    .line 491
    :pswitch_0
    const-string v0, "Fixed32"

    return-object v0

    .line 489
    :pswitch_1
    const-string v0, "End Group"

    return-object v0

    .line 487
    :pswitch_2
    const-string v0, "Start Group"

    return-object v0

    .line 485
    :pswitch_3
    const-string v0, "Length Delimited"

    return-object v0

    .line 483
    :pswitch_4
    const-string v0, "Fixed64"

    return-object v0

    .line 481
    :pswitch_5
    const-string v0, "Varint"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist makeFieldId(IJ)J
    .locals 4
    .param p0, "id"    # I
    .param p1, "fieldFlags"    # J

    .line 526
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method public static whitelist makeToken(IZIII)J
    .locals 6
    .param p0, "tagSize"    # I
    .param p1, "repeated"    # Z
    .param p2, "depth"    # I
    .param p3, "objectId"    # I
    .param p4, "offset"    # I

    .line 548
    int-to-long v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const/16 v2, 0x3d

    shl-long/2addr v0, v2

    .line 549
    if-eqz p1, :cond_0

    const-wide/high16 v2, 0x1000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    or-long/2addr v0, v2

    const-wide/16 v2, 0x1ff

    int-to-long v4, p2

    and-long/2addr v2, v4

    const/16 v4, 0x33

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0x7ffff

    int-to-long v4, p3

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    int-to-long v4, p4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 548
    return-wide v0
.end method

.method public static whitelist token2String(J)Ljava/lang/String;
    .locals 2
    .param p0, "token"    # J

    .line 620
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 621
    const-string v0, "Token(0)"

    return-object v0

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token(val=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getDepthFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getObjectIdFromToken(J)I

    move-result v1

    invoke-static {v1}, Landroid/util/proto/ProtoStream;->convertObjectIdToOrdinal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tagSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 626
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getTagSizeFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getOffsetFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    return-object v0
.end method
