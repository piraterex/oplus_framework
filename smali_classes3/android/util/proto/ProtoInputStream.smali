.class public final Landroid/util/proto/ProtoInputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoInputStream.java"


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final blacklist NO_MORE_FIELDS:I = -0x1

.field private static final blacklist STATE_FIELD_MISS:B = 0x4t

.field private static final blacklist STATE_READING_PACKED:B = 0x2t

.field private static final blacklist STATE_STARTED_FIELD_READ:B = 0x1t


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mDepth:I

.field private blacklist mDiscardedBytes:I

.field private blacklist mEnd:I

.field private blacklist mExpectedObjectTokenStack:Landroid/util/LongArray;

.field private blacklist mFieldNumber:I

.field private blacklist mOffset:I

.field private blacklist mPackedEnd:I

.field private blacklist mState:B

.field private blacklist mStream:Ljava/io/InputStream;

.field private blacklist mWireType:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 167
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 168
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 151
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 125
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 131
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 137
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 143
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 152
    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 153
    if-lez p2, :cond_0

    .line 154
    iput p2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    goto :goto_0

    .line 156
    :cond_0
    const/16 v0, 0x2000

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    .line 158
    :goto_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    .line 159
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 3
    .param p1, "buffer"    # [B

    .line 175
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 107
    const/4 v2, -0x1

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 125
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 131
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 137
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 143
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 176
    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    .line 177
    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 178
    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    .line 179
    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 180
    return-void
.end method

.method private blacklist assertFieldNumber(J)V
    .locals 3
    .param p1, "fieldId"    # J

    .line 929
    long-to-int v0, p1

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    if-ne v0, v1, :cond_0

    .line 936
    return-void

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match current field number (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 931
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 933
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 934
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertFreshData()V
    .locals 3

    .line 958
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 963
    return-void

    .line 959
    :cond_0
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to read already read field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 961
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    .line 960
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 961
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWireType(I)V
    .locals 3
    .param p1, "wireType"    # I

    .line 945
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    if-ne p1, v0, :cond_0

    .line 952
    return-void

    .line 946
    :cond_0
    new-instance v0, Landroid/util/proto/WireTypeMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 947
    invoke-static {v2}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match expected wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 948
    invoke-static {p1}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/WireTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkPacked(J)V
    .locals 5
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 872
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v2

    long-to-int v0, v2

    .line 873
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 874
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 877
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, ") packed length "

    const-string v3, "Requested field id ("

    packed-switch v1, :pswitch_data_0

    .line 914
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 915
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a packable field"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 917
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 912
    goto :goto_0

    .line 882
    :pswitch_2
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 889
    const/4 v1, 0x5

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 890
    goto :goto_0

    .line 883
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 884
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not aligned for fixed32"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 887
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    :pswitch_3
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 901
    const/4 v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 902
    goto :goto_0

    .line 895
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 896
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not aligned for fixed64"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 899
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v0    # "length":I
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist fillBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 787
    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 788
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 789
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    if-lt v0, v1, :cond_0

    .line 790
    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 791
    .local v0, "skipped":I
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 792
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 794
    .end local v0    # "skipped":I
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 796
    :cond_1
    return-void
.end method

.method private blacklist incOffset(I)V
    .locals 4
    .param p1, "n"    # I

    .line 852
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 854
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 855
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    .line 854
    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 856
    :cond_0
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of embedded object.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 857
    invoke-virtual {v2, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 858
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist readFixed32()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v2, :cond_0

    .line 640
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 641
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v1, -0x4

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, -0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 649
    :cond_0
    const/4 v0, 0x0

    .line 650
    .local v0, "value":I
    const/4 v1, 0x0

    .line 651
    .local v1, "shift":I
    const/4 v2, 0x4

    .line 652
    .local v2, "bytesLeft":I
    :goto_0
    if-lez v2, :cond_4

    .line 653
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 655
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int v5, v3, v4

    if-ge v5, v2, :cond_1

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 656
    .local v3, "fragment":I
    :goto_1
    if-ltz v3, :cond_3

    .line 662
    invoke-direct {p0, v3}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 663
    sub-int/2addr v2, v3

    .line 664
    :goto_2
    if-lez v3, :cond_2

    .line 665
    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v5, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    .line 666
    add-int/lit8 v3, v3, -0x1

    .line 667
    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    .line 669
    .end local v3    # "fragment":I
    :cond_2
    goto :goto_0

    .line 657
    .restart local v3    # "fragment":I
    :cond_3
    new-instance v4, Landroid/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete fixed32 at offset 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 659
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 660
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 670
    .end local v3    # "fragment":I
    :cond_4
    return v0
.end method

.method private blacklist readFixed64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    const-wide/16 v3, 0xff

    if-gt v0, v2, :cond_0

    .line 682
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 683
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v2, -0x8

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 v7, v2, -0x7

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    shl-long/2addr v7, v1

    or-long/2addr v5, v7

    add-int/lit8 v1, v2, -0x6

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v3

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long/2addr v5, v7

    add-int/lit8 v1, v2, -0x5

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v3

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    or-long/2addr v5, v7

    add-int/lit8 v1, v2, -0x4

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v3

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    or-long/2addr v5, v7

    add-int/lit8 v1, v2, -0x3

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v3

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long/2addr v5, v7

    add-int/lit8 v1, v2, -0x2

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v3

    const/16 v1, 0x30

    shl-long/2addr v7, v1

    or-long/2addr v5, v7

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v3

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v5

    return-wide v0

    .line 695
    :cond_0
    const-wide/16 v0, 0x0

    .line 696
    .local v0, "value":J
    const/4 v2, 0x0

    .line 697
    .local v2, "shift":I
    const/16 v5, 0x8

    .line 698
    .local v5, "bytesLeft":I
    :goto_0
    if-lez v5, :cond_4

    .line 699
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 701
    iget v6, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int v8, v6, v7

    if-ge v8, v5, :cond_1

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_1
    move v6, v5

    .line 702
    .local v6, "fragment":I
    :goto_1
    if-ltz v6, :cond_3

    .line 708
    invoke-direct {p0, v6}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 709
    sub-int/2addr v5, v6

    .line 710
    :goto_2
    if-lez v6, :cond_2

    .line 711
    iget-object v7, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v8, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v8, v6

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    .line 712
    add-int/lit8 v6, v6, -0x1

    .line 713
    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 715
    .end local v6    # "fragment":I
    :cond_2
    goto :goto_0

    .line 703
    .restart local v6    # "fragment":I
    :cond_3
    new-instance v3, Landroid/util/proto/ProtoParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete fixed64 at offset 0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 705
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 706
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    .end local v6    # "fragment":I
    :cond_4
    return-wide v0
.end method

.method private blacklist readRawBytes(I)[B
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    new-array v0, p1, [B

    .line 727
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 728
    .local v1, "pos":I
    :goto_0
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int v3, v2, p1

    sub-int/2addr v3, v1

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-le v3, v4, :cond_2

    .line 729
    sub-int/2addr v4, v2

    .line 730
    .local v4, "fragment":I
    if-lez v4, :cond_0

    .line 731
    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    invoke-direct {p0, v4}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 733
    add-int/2addr v1, v4

    .line 735
    :cond_0
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 736
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-ge v2, v3, :cond_1

    .line 742
    .end local v4    # "fragment":I
    goto :goto_0

    .line 737
    .restart local v4    # "fragment":I
    :cond_1
    new-instance v2, Landroid/util/proto/ProtoParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpectedly reached end of the InputStream at offset 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 739
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 740
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    .end local v4    # "fragment":I
    :cond_2
    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int v4, p1, v1

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 745
    return-object v0
.end method

.method private blacklist readRawString(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 756
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int v1, v0, p1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v1, v2, :cond_0

    .line 758
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v1

    .line 759
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 760
    return-object v0

    .line 761
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    const/4 v3, 0x0

    if-gt p1, v1, :cond_1

    .line 765
    sub-int/2addr v2, v0

    .line 766
    .local v2, "stringHead":I
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int v4, p1, v2

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 769
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 770
    iput v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 772
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 773
    .restart local v0    # "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 774
    return-object v0

    .line 778
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "stringHead":I
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private blacklist readTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 561
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_0

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 564
    return-void

    .line 566
    :cond_0
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 567
    .local v0, "tag":I
    ushr-int/lit8 v1, v0, 0x3

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 568
    and-int/lit8 v1, v0, 0x7

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 569
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 570
    return-void
.end method

.method private blacklist readVarint()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    const-wide/16 v0, 0x0

    .line 599
    .local v0, "value":J
    const/4 v2, 0x0

    .line 601
    .local v2, "shift":I
    :goto_0
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 604
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    .line 605
    .local v3, "fragment":I
    if-ltz v3, :cond_3

    .line 611
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 612
    iget-object v5, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v6, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    .line 613
    .local v5, "b":B
    int-to-long v6, v5

    const-wide/16 v8, 0x7f

    and-long/2addr v6, v8

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    .line 614
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_0

    .line 615
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 616
    return-wide v0

    .line 618
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 619
    const/16 v6, 0x3f

    if-gt v2, v6, :cond_1

    .line 611
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 620
    .restart local v5    # "b":B
    :cond_1
    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Varint is too large at offset 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 622
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 623
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 627
    .end local v4    # "i":I
    .end local v5    # "b":B
    :cond_2
    invoke-direct {p0, v3}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 628
    .end local v3    # "fragment":I
    goto :goto_0

    .line 606
    .restart local v3    # "fragment":I
    :cond_3
    new-instance v4, Landroid/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete varint at offset 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 609
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public blacklist decodeZigZag32(I)I
    .locals 2
    .param p1, "n"    # I

    .line 579
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist decodeZigZag64(J)J
    .locals 4
    .param p1, "n"    # J

    .line 589
    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist dumpDebugData()Ljava/lang/String;
    .locals 4

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmFieldNumber : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmWireType : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmState : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmDiscardedBytes : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmOffset : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, "\nmExpectedObjectTokenStack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_0

    .line 978
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 982
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nmDepth : 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v1, "\nmBuffer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    if-nez v1, :cond_1

    .line 985
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 987
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 989
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmBufferSize : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmEnd : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist end(J)V
    .locals 4
    .param p1, "token"    # J

    .line 541
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 551
    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 552
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 553
    return-void

    .line 542
    :cond_1
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match current message token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 544
    invoke-virtual {v2, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFieldNumber()I
    .locals 1

    .line 186
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist getOffset()I
    .locals 2

    .line 207
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWireType()I
    .locals 2

    .line 195
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return v0
.end method

.method public blacklist nextField()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 221
    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 222
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 224
    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->skip()V

    .line 227
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 229
    :cond_1
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 230
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ge v0, v2, :cond_2

    .line 233
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 234
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 235
    :cond_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ne v0, v1, :cond_3

    .line 237
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    goto :goto_0

    .line 239
    :cond_3
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of packed field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_4
    :goto_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 247
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    .line 246
    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    goto :goto_1

    .line 251
    :cond_5
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readTag()V

    .line 253
    :goto_1
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist nextField(J)Z
    .locals 2
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    long-to-int v1, p1

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_0
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readBoolean(J)Z
    .locals 5
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 413
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 414
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 417
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 421
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 422
    .local v0, "value":Z
    :cond_0
    nop

    .line 429
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 430
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readBytes(J)[B
    .locals 3
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 467
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 470
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be read as raw bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 474
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 475
    .local v0, "len":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object v1

    .line 476
    .local v1, "value":[B
    nop

    .line 484
    .end local v0    # "len":I
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 485
    return-object v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readDouble(J)D
    .locals 3
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 281
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 282
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 285
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be read as a double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 289
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 290
    .local v0, "value":D
    nop

    .line 298
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 299
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readFloat(J)F
    .locals 3
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 311
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 314
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a float"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 318
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 319
    .local v0, "value":F
    nop

    .line 326
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 327
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readInt(J)I
    .locals 3
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 338
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 339
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 342
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :sswitch_0
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 351
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/ProtoInputStream;->decodeZigZag32(I)I

    move-result v0

    .line 352
    .local v0, "value":I
    goto :goto_0

    .line 346
    .end local v0    # "value":I
    :sswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 347
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result v0

    .line 348
    .restart local v0    # "value":I
    goto :goto_0

    .line 356
    .end local v0    # "value":I
    :sswitch_2
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 357
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 358
    .restart local v0    # "value":I
    nop

    .line 365
    :goto_0
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 366
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist readLong(J)J
    .locals 3
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 376
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 377
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 380
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :sswitch_0
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 389
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    .line 390
    .local v0, "value":J
    goto :goto_0

    .line 384
    .end local v0    # "value":J
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 385
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide v0

    .line 386
    .restart local v0    # "value":J
    goto :goto_0

    .line 393
    .end local v0    # "value":J
    :sswitch_2
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 394
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    .line 395
    .restart local v0    # "value":J
    nop

    .line 402
    :goto_0
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 403
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x6 -> :sswitch_1
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist readString(J)Ljava/lang/String;
    .locals 3
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 440
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 443
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 446
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 447
    .local v0, "len":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->readRawString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "value":Ljava/lang/String;
    nop

    .line 456
    .end local v0    # "len":I
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 457
    return-object v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 804
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_1

    .line 806
    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    packed-switch v0, :pswitch_data_0

    .line 835
    :pswitch_0
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 837
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 838
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 833
    goto :goto_1

    .line 819
    :pswitch_2
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 820
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 821
    .local v0, "length":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 822
    goto :goto_1

    .line 816
    .end local v0    # "length":I
    :pswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 817
    goto :goto_1

    .line 810
    :goto_0
    :pswitch_4
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 811
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    aget-byte v0, v0, v1

    .line 812
    .local v0, "b":B
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 813
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_1

    .line 814
    nop

    .line 841
    .end local v0    # "b":B
    :goto_1
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 842
    return-void

    .line 813
    .restart local v0    # "b":B
    :cond_1
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist start(J)J
    .locals 9
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 496
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 497
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 499
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 501
    .local v0, "messageSize":I
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    if-nez v1, :cond_0

    .line 502
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 504
    :cond_0
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v3

    const-wide v4, 0x20000000000L

    const/4 v6, 0x0

    if-ne v1, v3, :cond_2

    .line 506
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    and-long v7, p1, v4

    cmp-long v3, v7, v4

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    long-to-int v5, p1

    .line 508
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    add-int/2addr v7, v0

    .line 506
    invoke-static {v6, v3, v4, v5, v7}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/LongArray;->add(J)V

    goto :goto_2

    .line 512
    :cond_2
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    and-long v7, p1, v4

    cmp-long v4, v7, v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    long-to-int v5, p1

    .line 514
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    add-int/2addr v7, v0

    .line 512
    invoke-static {v6, v4, v3, v5, v7}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongArray;->set(IJ)V

    .line 518
    :goto_2
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-lez v1, :cond_5

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 519
    invoke-virtual {v3, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v4, v2

    .line 520
    invoke-virtual {v3, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v3

    if-gt v1, v3, :cond_4

    goto :goto_3

    .line 521
    :cond_4
    new-instance v1, Landroid/util/proto/ProtoParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Embedded Object ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 522
    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ends after of parent Objects\'s ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v5, v2

    .line 524
    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_5
    :goto_3
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 529
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    return-wide v1
.end method
