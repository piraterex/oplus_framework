.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkStats"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;


# instance fields
.field public blacklist durationMs:J

.field public blacklist everValidated:Z

.field public blacklist ipSupport:I

.field public blacklist noConnectivityReports:I

.field public blacklist portalFound:Z

.field public blacklist validationAttempts:I

.field public blacklist validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2709
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 2711
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .locals 2

    .line 2674
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v0, :cond_1

    .line 2675
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2677
    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v1, :cond_0

    .line 2678
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 2680
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2682
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2913
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2907
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .locals 2

    .line 2714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2716
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2717
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2718
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2719
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2720
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2721
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2722
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->cachedSize:I

    .line 2723
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 2768
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2769
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2770
    nop

    .line 2771
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v1, :cond_1

    .line 2774
    const/4 v2, 0x2

    .line 2775
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2777
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v1, :cond_2

    .line 2778
    const/4 v2, 0x3

    .line 2779
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2781
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v1, :cond_3

    .line 2782
    const/4 v2, 0x4

    .line 2783
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2785
    :cond_3
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v1, :cond_4

    .line 2786
    const/4 v2, 0x5

    .line 2787
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2789
    :cond_4
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v1, :cond_5

    .line 2790
    const/4 v2, 0x6

    .line 2791
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2793
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    .line 2794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 2795
    aget-object v2, v2, v1

    .line 2796
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_6

    .line 2797
    const/4 v3, 0x7

    .line 2798
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2794
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2802
    .end local v1    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    .line 2803
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 2804
    aget-object v2, v2, v1

    .line 2805
    .restart local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_8

    .line 2806
    const/16 v3, 0x8

    .line 2807
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2803
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2811
    .end local v1    # "i":I
    :cond_9
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2668
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2819
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2820
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 2824
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2825
    return-object p0

    .line 2882
    :sswitch_0
    const/16 v2, 0x42

    .line 2883
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2884
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    array-length v4, v3

    .line 2885
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2887
    .local v5, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_1

    .line 2888
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2890
    :cond_1
    :goto_2
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_2

    .line 2891
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2892
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2893
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2890
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2896
    :cond_2
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2897
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2898
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2899
    goto/16 :goto_6

    .line 2862
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_1
    const/16 v2, 0x3a

    .line 2863
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2864
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    array-length v4, v3

    .line 2865
    .restart local v4    # "i":I
    :goto_3
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2867
    .restart local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_4

    .line 2868
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2870
    :cond_4
    :goto_4
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_5

    .line 2871
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2872
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2873
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2870
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2876
    :cond_5
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2877
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2878
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2879
    goto :goto_6

    .line 2858
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2859
    goto :goto_6

    .line 2854
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2855
    goto :goto_6

    .line 2850
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2851
    goto :goto_6

    .line 2846
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2847
    goto :goto_6

    .line 2834
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2835
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_5

    .line 2840
    :pswitch_0
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2843
    :goto_5
    goto :goto_6

    .line 2830
    .end local v1    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2831
    goto :goto_6

    .line 2822
    :sswitch_8
    return-object p0

    .line 2902
    .end local v0    # "tag":I
    :cond_6
    :goto_6
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x18 -> :sswitch_5
        0x20 -> :sswitch_4
        0x28 -> :sswitch_3
        0x30 -> :sswitch_2
        0x3a -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2729
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2730
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2732
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v0, :cond_1

    .line 2733
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2735
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v0, :cond_2

    .line 2736
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2738
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v0, :cond_3

    .line 2739
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2741
    :cond_3
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v0, :cond_4

    .line 2742
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2744
    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v0, :cond_5

    .line 2745
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2747
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 2748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 2749
    aget-object v1, v1, v0

    .line 2750
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_6

    .line 2751
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2748
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2755
    .end local v0    # "i":I
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    .line 2756
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 2757
    aget-object v1, v1, v0

    .line 2758
    .restart local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_8

    .line 2759
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2756
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2763
    .end local v0    # "i":I
    :cond_9
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2764
    return-void
.end method
