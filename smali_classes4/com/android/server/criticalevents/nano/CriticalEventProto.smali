.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    }
.end annotation


# static fields
.field public static final blacklist ANR_FIELD_NUMBER:I = 0x4

.field public static final blacklist DATA_APP:I = 0x1

.field public static final blacklist HALF_WATCHDOG_FIELD_NUMBER:I = 0x3

.field public static final blacklist JAVA_CRASH_FIELD_NUMBER:I = 0x5

.field public static final blacklist NATIVE_CRASH_FIELD_NUMBER:I = 0x6

.field public static final blacklist PROCESS_CLASS_UNKNOWN:I = 0x0

.field public static final blacklist SYSTEM_APP:I = 0x2

.field public static final blacklist SYSTEM_SERVER:I = 0x3

.field public static final blacklist WATCHDOG_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;


# instance fields
.field private blacklist eventCase_:I

.field private blacklist event_:Ljava/lang/Object;

.field public blacklist timestampMs:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 756
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 757
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 758
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    .line 657
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v0, :cond_1

    .line 658
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v1, :cond_0

    .line 661
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 663
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 665
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 901
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    .line 761
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 762
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 763
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->cachedSize:I

    .line 764
    return-object p0
.end method

.method public blacklist clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 651
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 798
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 799
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 800
    const/4 v3, 0x1

    .line 801
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 803
    :cond_0
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 804
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 805
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    :cond_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 809
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 810
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 813
    :cond_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 814
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 815
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_3
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 819
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 820
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    :cond_4
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 824
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 825
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_5
    return v0
.end method

.method public blacklist getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 2

    .line 710
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0

    .line 713
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEventCase()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    return v0
.end method

.method public blacklist getHalfWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 2

    .line 693
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0

    .line 696
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 2

    .line 727
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0

    .line 730
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 2

    .line 744
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0

    .line 747
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 2

    .line 676
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0

    .line 679
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasAnr()Z
    .locals 2

    .line 707
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasHalfWatchdog()Z
    .locals 2

    .line 690
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasJavaCrash()Z
    .locals 2

    .line 724
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasNativeCrash()Z
    .locals 2

    .line 741
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasWatchdog()Z
    .locals 2

    .line 673
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 837
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 841
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 842
    return-object p0

    .line 887
    :sswitch_0
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 888
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 892
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_1

    .line 878
    :sswitch_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 879
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 883
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 884
    goto :goto_1

    .line 869
    :sswitch_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 870
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 872
    :cond_2
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 874
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 875
    goto :goto_1

    .line 860
    :sswitch_3
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 861
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 863
    :cond_3
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 865
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 866
    goto :goto_1

    .line 851
    :sswitch_4
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 852
    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 854
    :cond_4
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 856
    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 857
    goto :goto_1

    .line 847
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 848
    goto :goto_1

    .line 839
    :sswitch_6
    return-object p0

    .line 896
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x8 -> :sswitch_5
        0x12 -> :sswitch_4
        0x1a -> :sswitch_3
        0x22 -> :sswitch_2
        0x2a -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 716
    if-eqz p1, :cond_0

    .line 717
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 718
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 719
    return-object p0

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 699
    if-eqz p1, :cond_0

    .line 700
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 701
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 702
    return-object p0

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 733
    if-eqz p1, :cond_0

    .line 734
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 735
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 736
    return-object p0

    .line 733
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 750
    if-eqz p1, :cond_0

    .line 751
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 752
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 753
    return-object p0

    .line 750
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .param p1, "value"    # Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 682
    if-eqz p1, :cond_0

    .line 683
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    .line 684
    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    .line 685
    return-object p0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    iget-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 771
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 773
    :cond_0
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 777
    :cond_1
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 781
    :cond_2
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 782
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 785
    :cond_3
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 786
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 789
    :cond_4
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 790
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 793
    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 794
    return-void
.end method
