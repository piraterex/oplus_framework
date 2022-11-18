.class public Landroid/util/proto/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    .line 91
    .local v1, "fieldNumber":I
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getWireType()I

    move-result v2

    .line 94
    .local v2, "wireType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset : 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nField Number : 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, "\nWire Type : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "\nField Value : 0x"

    packed-switch v2, :pswitch_data_0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getWireType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 123
    :pswitch_0
    const-string v4, "fixed32"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-wide v4, 0x10700000000L

    invoke-static {v1, v4, v5}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v4

    .line 126
    .local v4, "fieldConstant":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    goto/16 :goto_0

    .line 120
    .end local v4    # "fieldConstant":J
    :pswitch_1
    const-string v3, "end group"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    goto/16 :goto_0

    .line 117
    :pswitch_2
    const-string/jumbo v3, "start group"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    goto/16 :goto_0

    .line 111
    :pswitch_3
    const-string/jumbo v3, "length delimited"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-wide v3, 0x10c00000000L

    invoke-static {v1, v3, v4}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v3

    .line 114
    .local v3, "fieldConstant":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nField Bytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    goto :goto_0

    .line 105
    .end local v3    # "fieldConstant":J
    :pswitch_4
    const-string v4, "fixed64"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-wide v4, 0x10600000000L

    invoke-static {v1, v4, v5}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v4

    .line 108
    .restart local v4    # "fieldConstant":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    goto :goto_0

    .line 99
    .end local v4    # "fieldConstant":J
    :pswitch_5
    const-string/jumbo v4, "varint"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-wide v4, 0x10300000000L

    invoke-static {v1, v4, v5}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v4

    .line 102
    .restart local v4    # "fieldConstant":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    nop

    .line 131
    .end local v4    # "fieldConstant":J
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

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

.method public static greylist-max-o toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "min"    # J
    .param p5, "average"    # J
    .param p7, "max"    # J

    .line 50
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v10}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    .line 51
    return-void
.end method

.method public static blacklist toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "min"    # J
    .param p5, "average"    # J
    .param p7, "max"    # J
    .param p9, "meanKb"    # I
    .param p10, "maxKb"    # I

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 37
    .local v0, "aggStatsToken":J
    const-wide v2, 0x10300000001L

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 38
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 39
    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 40
    const-wide v2, 0x10500000004L

    invoke-virtual {p0, v2, v3, p9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    const-wide v2, 0x10500000005L

    invoke-virtual {p0, v2, v3, p10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 43
    return-void
.end method

.method public static greylist-max-o toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 58
    .local v0, "token":J
    const-wide v2, 0x10300000001L

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 59
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 61
    return-void
.end method

.method public static greylist-max-o writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V
    .locals 3
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "flags"    # I
    .param p4, "origEnums"    # [I
    .param p5, "protoEnums"    # [I

    .line 68
    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_3

    .line 71
    array-length v0, p4

    .line 72
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 74
    aget v2, p4, v1

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 75
    aget v2, p5, v1

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 76
    return-void

    .line 78
    :cond_0
    aget v2, p4, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_1

    .line 79
    aget v2, p5, v1

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 69
    .end local v0    # "len":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of origEnums must match protoEnums"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
