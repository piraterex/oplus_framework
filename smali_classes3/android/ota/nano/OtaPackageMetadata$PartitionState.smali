.class public final Landroid/ota/nano/OtaPackageMetadata$PartitionState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartitionState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionName:Ljava/lang/String;

.field public blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 39
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 2

    .line 14
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 2

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->cachedSize:I

    .line 47
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 80
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 83
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "dataCount":I
    const/4 v3, 0x0

    .line 88
    .local v3, "dataSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 89
    aget-object v5, v5, v4

    .line 90
    .local v5, "element":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    nop

    .line 93
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 88
    .end local v5    # "element":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v4    # "i":I
    :cond_2
    add-int/2addr v0, v3

    .line 97
    mul-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v4

    .line 99
    .end local v1    # "dataCount":I
    .end local v3    # "dataSize":I
    :cond_3
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    .line 100
    const/4 v1, 0x0

    .line 101
    .restart local v1    # "dataCount":I
    const/4 v3, 0x0

    .line 102
    .restart local v3    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 103
    aget-object v5, v5, v4

    .line 104
    .restart local v5    # "element":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    nop

    .line 107
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 102
    .end local v5    # "element":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v4    # "i":I
    :cond_5
    add-int/2addr v0, v3

    .line 111
    mul-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v4

    .line 113
    .end local v1    # "dataCount":I
    .end local v3    # "dataSize":I
    :cond_6
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 114
    const/4 v1, 0x4

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    .line 115
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_7
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 126
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 130
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 131
    return-object p0

    .line 174
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    goto/16 :goto_5

    .line 157
    :sswitch_1
    const/16 v2, 0x1a

    .line 158
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 159
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    array-length v4, v3

    .line 160
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 161
    .local v5, "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 162
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :cond_1
    :goto_2
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 166
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 169
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 170
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    .line 171
    goto :goto_5

    .line 140
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_2
    const/16 v2, 0x12

    .line 141
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 142
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-nez v3, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    array-length v4, v3

    .line 143
    .restart local v4    # "i":I
    :goto_3
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 144
    .restart local v5    # "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 145
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_4
    :goto_4
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_5

    .line 148
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 149
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 153
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    .line 154
    goto :goto_5

    .line 136
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 137
    goto :goto_5

    .line 128
    :sswitch_4
    return-object p0

    .line 178
    .end local v0    # "tag":I
    :cond_6
    :goto_5
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0x1a -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 58
    aget-object v2, v2, v0

    .line 59
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 60
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 65
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 66
    aget-object v2, v2, v0

    .line 67
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 68
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 76
    return-void
.end method
