.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSystemInfo"
.end annotation


# instance fields
.field public blacklist yearOfHw:S


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

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
            "Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;",
            ">;"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 721
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 722
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x2

    int-to-long v5, v3

    .line 723
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 722
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 726
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 727
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 728
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;-><init>()V

    .line 729
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    mul-int/lit8 v6, v4, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 730
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 734
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
            "Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;",
            ">;)V"
        }
    .end annotation

    .line 750
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 752
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 753
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 754
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 755
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 756
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 757
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    mul-int/lit8 v5, v3, 0x2

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 756
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 759
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 762
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 763
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 679
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 680
    return v0

    .line 682
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 683
    return v1

    .line 685
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    if-eq v2, v3, :cond_2

    .line 686
    return v1

    .line 688
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    .line 689
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

    if-eq v3, v4, :cond_3

    .line 690
    return v1

    .line 692
    :cond_3
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 697
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

    .line 698
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 697
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 739
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

    .line 740
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 712
    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 713
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 714
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v1, ".yearOfHw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 767
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->yearOfHw:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 768
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 743
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 744
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 745
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 746
    return-void
.end method
