.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectStatistics"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;


# instance fields
.field public blacklist connectBlockingCount:I

.field public blacklist connectCount:I

.field public blacklist errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist ipv6AddrCount:I

.field public blacklist latenciesMs:[I

.field public blacklist nonBlockingLatenciesMs:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1521
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    .line 1523
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 2

    .line 1492
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    if-nez v0, :cond_1

    .line 1493
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1495
    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    if-nez v1, :cond_0

    .line 1496
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    .line 1498
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1500
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1755
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1749
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 1

    .line 1526
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 1527
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    .line 1528
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 1529
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 1530
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    .line 1531
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1532
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->cachedSize:I

    .line 1533
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    .line 1571
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1572
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1573
    nop

    .line 1574
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    if-eqz v1, :cond_1

    .line 1577
    const/4 v3, 0x2

    .line 1578
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1580
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1581
    const/4 v1, 0x0

    .line 1582
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 1583
    aget v4, v4, v3

    .line 1584
    .local v4, "element":I
    nop

    .line 1585
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 1582
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1587
    .end local v3    # "i":I
    :cond_2
    add-int/2addr v0, v1

    .line 1588
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1590
    .end local v1    # "dataSize":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 1592
    aget-object v3, v3, v1

    .line 1593
    .local v3, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v3, :cond_4

    .line 1594
    const/4 v4, 0x4

    .line 1595
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1591
    .end local v3    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1599
    .end local v1    # "i":I
    :cond_5
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    if-eqz v1, :cond_6

    .line 1600
    const/4 v3, 0x5

    .line 1601
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    .line 1604
    const/4 v1, 0x0

    .line 1605
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 1606
    aget v4, v4, v3

    .line 1607
    .restart local v4    # "element":I
    nop

    .line 1608
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 1605
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1610
    .end local v3    # "i":I
    :cond_7
    add-int/2addr v0, v1

    .line 1611
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1613
    .end local v1    # "dataSize":I
    :cond_8
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 9
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1621
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1622
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1626
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1627
    return-object p0

    .line 1721
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1722
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1724
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 1725
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1726
    .local v5, "startPos":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_0

    .line 1727
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1728
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1730
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1731
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-nez v6, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    array-length v7, v6

    .line 1732
    .local v7, "i":I
    :goto_2
    add-int v8, v7, v4

    new-array v8, v8, [I

    .line 1733
    .local v8, "newArray":[I
    if-eqz v7, :cond_2

    .line 1734
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1736
    :cond_2
    :goto_3
    array-length v1, v8

    if-ge v7, v1, :cond_3

    .line 1737
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v8, v7

    .line 1736
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1739
    :cond_3
    iput-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    .line 1740
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 1741
    goto/16 :goto_d

    .line 1704
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[I
    :sswitch_1
    const/16 v2, 0x30

    .line 1705
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1706
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-nez v3, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    array-length v4, v3

    .line 1707
    .local v4, "i":I
    :goto_4
    add-int v5, v4, v2

    new-array v5, v5, [I

    .line 1708
    .local v5, "newArray":[I
    if-eqz v4, :cond_5

    .line 1709
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1711
    :cond_5
    :goto_5
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_6

    .line 1712
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1713
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1711
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1716
    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1717
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    .line 1718
    goto/16 :goto_d

    .line 1700
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    .line 1701
    goto/16 :goto_d

    .line 1680
    :sswitch_3
    const/16 v2, 0x22

    .line 1681
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1682
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_7

    move v4, v1

    goto :goto_6

    :cond_7
    array-length v4, v3

    .line 1683
    .restart local v4    # "i":I
    :goto_6
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1685
    .local v5, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_8

    .line 1686
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1688
    :cond_8
    :goto_7
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_9

    .line 1689
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 1690
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1691
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1688
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1694
    :cond_9
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 1695
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1696
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1697
    goto/16 :goto_d

    .line 1657
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1658
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1660
    .restart local v3    # "limit":I
    const/4 v4, 0x0

    .line 1661
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1662
    .local v5, "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_a

    .line 1663
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1664
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1666
    :cond_a
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1667
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-nez v6, :cond_b

    move v7, v1

    goto :goto_9

    :cond_b
    array-length v7, v6

    .line 1668
    .restart local v7    # "i":I
    :goto_9
    add-int v8, v7, v4

    new-array v8, v8, [I

    .line 1669
    .restart local v8    # "newArray":[I
    if-eqz v7, :cond_c

    .line 1670
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1672
    :cond_c
    :goto_a
    array-length v1, v8

    if-ge v7, v1, :cond_d

    .line 1673
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v8, v7

    .line 1672
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1675
    :cond_d
    iput-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 1676
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 1677
    goto :goto_d

    .line 1640
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[I
    :sswitch_5
    const/16 v2, 0x18

    .line 1641
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1642
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-nez v3, :cond_e

    move v4, v1

    goto :goto_b

    :cond_e
    array-length v4, v3

    .line 1643
    .local v4, "i":I
    :goto_b
    add-int v5, v4, v2

    new-array v5, v5, [I

    .line 1644
    .local v5, "newArray":[I
    if-eqz v4, :cond_f

    .line 1645
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1647
    :cond_f
    :goto_c
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_10

    .line 1648
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1649
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1647
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1652
    :cond_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1653
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 1654
    goto :goto_d

    .line 1636
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 1637
    goto :goto_d

    .line 1632
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 1633
    goto :goto_d

    .line 1624
    :sswitch_8
    return-object p0

    .line 1744
    .end local v0    # "tag":I
    :cond_11
    :goto_d
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x18 -> :sswitch_5
        0x1a -> :sswitch_4
        0x22 -> :sswitch_3
        0x28 -> :sswitch_2
        0x30 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1539
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    if-eqz v0, :cond_0

    .line 1540
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1542
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    if-eqz v0, :cond_1

    .line 1543
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1545
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1547
    const/4 v2, 0x3

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1551
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1552
    aget-object v1, v1, v0

    .line 1553
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_3

    .line 1554
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1551
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1558
    .end local v0    # "i":I
    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    if-eqz v0, :cond_5

    .line 1559
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1561
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    .line 1562
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 1563
    const/4 v2, 0x6

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1566
    .end local v0    # "i":I
    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1567
    return-void
.end method
