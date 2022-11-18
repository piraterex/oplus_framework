.class public final Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApexInfo"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;


# instance fields
.field public blacklist decompressedSize:J

.field public blacklist isCompressed:Z

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist sourceVersion:J

.field public blacklist version:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 676
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 677
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->clear()Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 678
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .locals 2

    .line 650
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-nez v0, :cond_1

    .line 651
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-nez v1, :cond_0

    .line 654
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 656
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 658
    :cond_1
    :goto_0
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 778
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .locals 3

    .line 681
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 682
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    .line 683
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    .line 684
    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    .line 685
    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    .line 686
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->cachedSize:I

    .line 687
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    .line 713
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 714
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 716
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 718
    :cond_0
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 719
    const/4 v5, 0x2

    .line 720
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    :cond_1
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    if-eqz v1, :cond_2

    .line 723
    const/4 v2, 0x3

    .line 724
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_2
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 727
    const/4 v5, 0x4

    .line 728
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_3
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    .line 731
    const/4 v3, 0x5

    .line 732
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_4
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 743
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 747
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    return-object p0

    .line 769
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    goto :goto_1

    .line 765
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    .line 766
    goto :goto_1

    .line 761
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    .line 762
    goto :goto_1

    .line 757
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    .line 758
    goto :goto_1

    .line 753
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    .line 754
    goto :goto_1

    .line 745
    :sswitch_5
    return-object p0

    .line 773
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xa -> :sswitch_4
        0x10 -> :sswitch_3
        0x18 -> :sswitch_2
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 696
    :cond_0
    iget-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 697
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 699
    :cond_1
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    if-eqz v0, :cond_2

    .line 700
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 702
    :cond_2
    iget-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 703
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 705
    :cond_3
    iget-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->sourceVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 706
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 708
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 709
    return-void
.end method
