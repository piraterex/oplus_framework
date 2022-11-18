.class public final Landroid/hardware/radio/V1_6/SliceInfo;
.super Ljava/lang/Object;
.source "SliceInfo.java"


# instance fields
.field public blacklist mappedHplmnSD:I

.field public blacklist mappedHplmnSst:B

.field public blacklist sliceDifferentiator:I

.field public blacklist sst:B

.field public blacklist status:B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 18
    iput v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    .line 25
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 34
    iput v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 38
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

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
            "Landroid/hardware/radio/V1_6/SliceInfo;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SliceInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 108
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 109
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 110
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 109
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 113
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 115
    new-instance v5, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    .line 116
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/SliceInfo;
    mul-int/lit8 v6, v4, 0x14

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/SliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 117
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/SliceInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
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
            "Landroid/hardware/radio/V1_6/SliceInfo;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SliceInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 143
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 144
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 145
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 146
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 147
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 148
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/SliceInfo;

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/SliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 153
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 154
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 46
    return v1

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/SliceInfo;

    if-eq v2, v3, :cond_2

    .line 49
    return v1

    .line 51
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/SliceInfo;

    .line 52
    .local v2, "other":Landroid/hardware/radio/V1_6/SliceInfo;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    if-eq v3, v4, :cond_3

    .line 53
    return v1

    .line 55
    :cond_3
    iget v3, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    if-eq v3, v4, :cond_4

    .line 56
    return v1

    .line 58
    :cond_4
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    if-eq v3, v4, :cond_5

    .line 59
    return v1

    .line 61
    :cond_5
    iget v3, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    if-eq v3, v4, :cond_6

    .line 62
    return v1

    .line 64
    :cond_6
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    if-eq v3, v4, :cond_7

    .line 65
    return v1

    .line 67
    :cond_7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 73
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 75
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    .line 77
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 126
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 127
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    .line 128
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 129
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 130
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    .line 131
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 99
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 100
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/SliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 101
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ".sst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/SliceServiceType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .sliceDifferentiator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .mappedHplmnSst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/SliceServiceType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .mappedHplmnSD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/SliceStatus;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 158
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 159
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 160
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 161
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 162
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 163
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 134
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 135
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/SliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 137
    return-void
.end method
