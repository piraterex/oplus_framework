.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfProgramEvent"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;


# instance fields
.field public blacklist currentRas:I

.field public blacklist dropMulticast:Z

.field public blacklist effectiveLifetime:J

.field public blacklist filteredRas:I

.field public blacklist hasIpv4Addr:Z

.field public blacklist lifetime:J

.field public blacklist programLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1969
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    .line 1971
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .locals 2

    .line 1937
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v0, :cond_1

    .line 1938
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1940
    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v1, :cond_0

    .line 1941
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    .line 1943
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1945
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2101
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2095
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .locals 2

    .line 1974
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 1975
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 1976
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 1977
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 1978
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 1979
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 1980
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 1981
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->cachedSize:I

    .line 1982
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    .line 2014
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2015
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2016
    const/4 v5, 0x1

    .line 2017
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2019
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    if-eqz v1, :cond_1

    .line 2020
    const/4 v2, 0x2

    .line 2021
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2023
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    if-eqz v1, :cond_2

    .line 2024
    const/4 v2, 0x3

    .line 2025
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2027
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    if-eqz v1, :cond_3

    .line 2028
    const/4 v2, 0x4

    .line 2029
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2031
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    if-eqz v1, :cond_4

    .line 2032
    const/4 v2, 0x5

    .line 2033
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2035
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    if-eqz v1, :cond_5

    .line 2036
    const/4 v2, 0x6

    .line 2037
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2039
    :cond_5
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    .line 2040
    const/4 v3, 0x7

    .line 2041
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2043
    :cond_6
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1931
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2052
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2056
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2057
    return-object p0

    .line 2086
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    goto :goto_1

    .line 2082
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 2083
    goto :goto_1

    .line 2078
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 2079
    goto :goto_1

    .line 2074
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 2075
    goto :goto_1

    .line 2070
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 2071
    goto :goto_1

    .line 2066
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 2067
    goto :goto_1

    .line 2062
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 2063
    goto :goto_1

    .line 2054
    :sswitch_7
    return-object p0

    .line 2090
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_5
        0x18 -> :sswitch_4
        0x20 -> :sswitch_3
        0x28 -> :sswitch_2
        0x30 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1988
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1989
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1991
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    if-eqz v0, :cond_1

    .line 1992
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1994
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    if-eqz v0, :cond_2

    .line 1995
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1997
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    if-eqz v0, :cond_3

    .line 1998
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2000
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    if-eqz v0, :cond_4

    .line 2001
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2003
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    if-eqz v0, :cond_5

    .line 2004
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2006
    :cond_5
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 2007
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2009
    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2010
    return-void
.end method
