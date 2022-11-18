.class public final Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApexMetadata"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;


# instance fields
.field public blacklist apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 808
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 809
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->clear()Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    .line 810
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .locals 2

    .line 794
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    if-nez v0, :cond_1

    .line 795
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    if-nez v1, :cond_0

    .line 798
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    .line 800
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 802
    :cond_1
    :goto_0
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 888
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .locals 1

    .line 813
    invoke-static {}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->emptyArray()[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 814
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->cachedSize:I

    .line 815
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 834
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 835
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 837
    aget-object v2, v2, v1

    .line 838
    .local v2, "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    if-eqz v2, :cond_0

    .line 839
    nop

    .line 840
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 836
    .end local v2    # "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 853
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 857
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 858
    return-object p0

    .line 863
    :sswitch_0
    const/16 v1, 0xa

    .line 864
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 865
    .local v1, "arrayLength":I
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    array-length v4, v2

    .line 866
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v1

    new-array v5, v5, [Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 868
    .local v5, "newArray":[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    if-eqz v4, :cond_1

    .line 869
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    :cond_1
    :goto_2
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_2

    .line 872
    new-instance v2, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v2}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    aput-object v2, v5, v4

    .line 873
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 874
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 871
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 877
    :cond_2
    new-instance v2, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-direct {v2}, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;-><init>()V

    aput-object v2, v5, v4

    .line 878
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 879
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 880
    goto :goto_3

    .line 855
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    :sswitch_1
    return-object p0

    .line 883
    .end local v0    # "tag":I
    :cond_3
    :goto_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 822
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 823
    aget-object v1, v1, v0

    .line 824
    .local v1, "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    if-eqz v1, :cond_0

    .line 825
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 822
    .end local v1    # "element":Landroid/ota/nano/OtaPackageMetadata$ApexInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 830
    return-void
.end method
