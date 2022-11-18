.class public final Landroid/hardware/gnss/V2_1/GnssSignalType;
.super Ljava/lang/Object;
.source "GnssSignalType.java"


# instance fields
.field public blacklist carrierFrequencyHz:D

.field public blacklist codeType:Ljava/lang/String;

.field public blacklist constellation:B


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

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
            "Landroid/hardware/gnss/V2_1/GnssSignalType;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/GnssSignalType;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 81
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 82
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 83
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 82
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 86
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 88
    new-instance v5, Landroid/hardware/gnss/V2_1/GnssSignalType;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/GnssSignalType;-><init>()V

    .line 89
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/GnssSignalType;
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V2_1/GnssSignalType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/GnssSignalType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
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
            "Landroid/hardware/gnss/V2_1/GnssSignalType;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/GnssSignalType;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 120
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 121
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 122
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 123
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 125
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_1/GnssSignalType;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/GnssSignalType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 130
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 28
    return v0

    .line 30
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 31
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/GnssSignalType;

    if-eq v2, v3, :cond_2

    .line 34
    return v1

    .line 36
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/GnssSignalType;

    .line 37
    .local v2, "other":Landroid/hardware/gnss/V2_1/GnssSignalType;
    iget-byte v3, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    if-eq v3, v4, :cond_3

    .line 38
    return v1

    .line 40
    :cond_3
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    .line 41
    return v1

    .line 43
    :cond_4
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 44
    return v1

    .line 46
    :cond_5
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    .line 52
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 99
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    .line 100
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    .line 101
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

    .line 103
    nop

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 103
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 108
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 72
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 73
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/GnssSignalType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ".constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-byte v1, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .carrierFrequencyHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .codeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 135
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 136
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->carrierFrequencyHz:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 137
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/V2_1/GnssSignalType;->codeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 138
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 111
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/GnssSignalType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 114
    return-void
.end method
