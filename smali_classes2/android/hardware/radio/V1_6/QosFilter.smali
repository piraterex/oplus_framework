.class public final Landroid/hardware/radio/V1_6/QosFilter;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;,
        Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;,
        Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;
    }
.end annotation


# instance fields
.field public blacklist direction:B

.field public blacklist flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

.field public blacklist localAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist localPort:Landroid/hardware/radio/V1_6/MaybePort;

.field public blacklist precedence:I

.field public blacklist protocol:B

.field public blacklist remoteAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist remotePort:Landroid/hardware/radio/V1_6/MaybePort;

.field public blacklist spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

.field public blacklist tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 630
    new-instance v0, Landroid/hardware/radio/V1_6/MaybePort;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/MaybePort;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 631
    new-instance v0, Landroid/hardware/radio/V1_6/MaybePort;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/MaybePort;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 635
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 639
    new-instance v1, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    .line 643
    new-instance v1, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    .line 647
    new-instance v1, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    .line 651
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 657
    iput v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosFilter;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 757
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 758
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 759
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 758
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 762
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 763
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 764
    new-instance v5, Landroid/hardware/radio/V1_6/QosFilter;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/QosFilter;-><init>()V

    .line 765
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/QosFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 766
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter;",
            ">;)V"
        }
    .end annotation

    .line 831
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosFilter;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 833
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 834
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 835
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 836
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 837
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 838
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/QosFilter;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/QosFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 837
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 840
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 843
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 844
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 661
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 662
    return v0

    .line 664
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 665
    return v1

    .line 667
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/QosFilter;

    if-eq v2, v3, :cond_2

    .line 668
    return v1

    .line 670
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/QosFilter;

    .line 671
    .local v2, "other":Landroid/hardware/radio/V1_6/QosFilter;
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 672
    return v1

    .line 674
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 675
    return v1

    .line 677
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 678
    return v1

    .line 680
    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 681
    return v1

    .line 683
    :cond_6
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    if-eq v3, v4, :cond_7

    .line 684
    return v1

    .line 686
    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 687
    return v1

    .line 689
    :cond_8
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 690
    return v1

    .line 692
    :cond_9
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 693
    return v1

    .line 695
    :cond_a
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    if-eq v3, v4, :cond_b

    .line 696
    return v1

    .line 698
    :cond_b
    iget v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    iget v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    if-eq v3, v4, :cond_c

    .line 699
    return v1

    .line 701
    :cond_c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 706
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 707
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 708
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 709
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 710
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 711
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    .line 712
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    .line 713
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    .line 714
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 715
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    .line 716
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 706
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    const-wide/16 v13, 0x8

    add-long/2addr v1, v13

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 777
    .local v15, "_hidl_vec_size":I
    mul-int/lit8 v1, v15, 0x10

    int-to-long v2, v1

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v11

    add-long/2addr v6, v11

    .line 777
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 781
    .local v8, "childBlob":Landroid/os/HwBlob;
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 782
    const/4 v1, 0x0

    move v6, v1

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v15, :cond_0

    .line 783
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 784
    .local v1, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v2, v6, 0x10

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v7

    .line 786
    .end local v1    # "_hidl_vec_element":Ljava/lang/String;
    .local v7, "_hidl_vec_element":Ljava/lang/String;
    nop

    .line 787
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 788
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v6, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v11, v1

    const/16 v16, 0x0

    .line 786
    move-object/from16 v1, p1

    move/from16 v17, v6

    move-object v13, v7

    .end local v6    # "_hidl_index_0":I
    .end local v7    # "_hidl_vec_element":Ljava/lang/String;
    .local v13, "_hidl_vec_element":Ljava/lang/String;
    .local v17, "_hidl_index_0":I
    move-wide v6, v11

    move-object v11, v8

    .end local v8    # "childBlob":Landroid/os/HwBlob;
    .local v11, "childBlob":Landroid/os/HwBlob;
    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 791
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v13    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v6, v17, 0x1

    move-object v8, v11

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x8

    .end local v17    # "_hidl_index_0":I
    .restart local v6    # "_hidl_index_0":I
    goto :goto_0

    .end local v11    # "childBlob":Landroid/os/HwBlob;
    .restart local v8    # "childBlob":Landroid/os/HwBlob;
    :cond_0
    move/from16 v17, v6

    move-object v11, v8

    .line 795
    .end local v6    # "_hidl_index_0":I
    .end local v8    # "childBlob":Landroid/os/HwBlob;
    .end local v15    # "_hidl_vec_size":I
    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 796
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x10

    int-to-long v3, v3

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long/2addr v7, v1

    const/4 v12, 0x1

    .line 796
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v12

    .line 800
    .local v12, "childBlob":Landroid/os/HwBlob;
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 801
    const/4 v1, 0x0

    move v13, v1

    .local v13, "_hidl_index_0":I
    :goto_1
    if-ge v13, v11, :cond_1

    .line 802
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 803
    .restart local v1    # "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v2, v13, 0x10

    int-to-long v2, v2

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v14

    .line 805
    .end local v1    # "_hidl_vec_element":Ljava/lang/String;
    .local v14, "_hidl_vec_element":Ljava/lang/String;
    nop

    .line 806
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 807
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v13, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v6, v1

    const/4 v8, 0x0

    .line 805
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 810
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v14    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 813
    .end local v11    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_index_0":I
    :cond_1
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/MaybePort;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 814
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v2, 0x2c

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/MaybePort;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 815
    const-wide/16 v1, 0x38

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 816
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    const-wide/16 v2, 0x39

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 817
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 818
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    const-wide/16 v2, 0x44

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 819
    const-wide/16 v1, 0x4c

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 820
    const-wide/16 v1, 0x50

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    .line 821
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 748
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 749
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 750
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, ".localAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, ", .remoteAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, ", .localPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, ", .remotePort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, ", .protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/QosProtocol;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, ", .tos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, ", .flowLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, ", .spi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, ", .direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/QosFilterDirection;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, ", .precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 849
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 850
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 851
    add-long v5, p2, v3

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 852
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 853
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 854
    mul-int/lit8 v12, v6, 0x10

    int-to-long v12, v12

    iget-object v14, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 853
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 856
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long v12, p2, v3

    add-long/2addr v12, v3

    invoke-virtual {v1, v12, v13, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 859
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 860
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v12, p2, v5

    add-long/2addr v12, v7

    invoke-virtual {v1, v12, v13, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 861
    add-long v7, p2, v5

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 862
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 863
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_1
    if-ge v8, v2, :cond_1

    .line 864
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 863
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 866
    .end local v8    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 868
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v3, 0x20

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/radio/V1_6/MaybePort;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 869
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v3, 0x2c

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/radio/V1_6/MaybePort;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 870
    const-wide/16 v2, 0x38

    add-long v2, p2, v2

    iget-byte v4, v0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 871
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    const-wide/16 v3, 0x39

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 872
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v3, 0x3c

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 873
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    const-wide/16 v3, 0x44

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 874
    const-wide/16 v2, 0x4c

    add-long v2, p2, v2

    iget-byte v4, v0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 875
    const-wide/16 v2, 0x50

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 876
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 824
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 825
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 826
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 827
    return-void
.end method
