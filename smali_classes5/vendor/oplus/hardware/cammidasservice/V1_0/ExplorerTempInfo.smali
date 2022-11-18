.class public final Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;
.super Ljava/lang/Object;
.source "ExplorerTempInfo.java"


# instance fields
.field public blacklist DDRTemp:[F

.field public blacklist ISPTemp:[F

.field public blacklist MAXCPUTemp:[F

.field public blacklist NPUTemp:[F

.field public blacklist surfaceTemp:[F


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    .line 6
    new-array v1, v0, [F

    iput-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    .line 7
    new-array v1, v0, [F

    iput-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    .line 8
    new-array v1, v0, [F

    iput-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    .line 9
    new-array v0, v0, [F

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 79
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 80
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 81
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 80
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 84
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 86
    new-instance v5, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    invoke-direct {v5}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;-><init>()V

    .line 87
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;
    mul-int/lit8 v6, v4, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 136
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 137
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 139
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 144
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 14
    return v0

    .line 16
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 17
    return v1

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    if-eq v2, v3, :cond_2

    .line 20
    return v1

    .line 22
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    .line 23
    .local v2, "other":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 24
    return v1

    .line 26
    :cond_3
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 27
    return v1

    .line 29
    :cond_4
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 30
    return v1

    .line 32
    :cond_5
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 33
    return v1

    .line 35
    :cond_6
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 36
    return v1

    .line 38
    :cond_7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    .line 44
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    .line 47
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 98
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 99
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    const/4 v3, 0x2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 100
    nop

    .line 103
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 104
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 105
    nop

    .line 108
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 109
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 110
    nop

    .line 113
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 114
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 115
    nop

    .line 118
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 119
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 120
    nop

    .line 122
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 70
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 71
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 72
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ".DDRTemp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .NPUTemp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .ISPTemp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .MAXCPUTemp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .surfaceTemp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 150
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 151
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->DDRTemp:[F

    .line 153
    .local v2, "_hidl_array_item_0":[F
    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_4

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 157
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 158
    nop

    .line 161
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 162
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->NPUTemp:[F

    .line 164
    .restart local v2    # "_hidl_array_item_0":[F
    if-eqz v2, :cond_3

    array-length v4, v2

    if-ne v4, v5, :cond_3

    .line 168
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 169
    nop

    .line 172
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 173
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->ISPTemp:[F

    .line 175
    .restart local v2    # "_hidl_array_item_0":[F
    if-eqz v2, :cond_2

    array-length v4, v2

    if-ne v4, v5, :cond_2

    .line 179
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 180
    nop

    .line 183
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 184
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->MAXCPUTemp:[F

    .line 186
    .restart local v2    # "_hidl_array_item_0":[F
    if-eqz v2, :cond_1

    array-length v4, v2

    if-ne v4, v5, :cond_1

    .line 190
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 191
    nop

    .line 194
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 195
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->surfaceTemp:[F

    .line 197
    .restart local v2    # "_hidl_array_item_0":[F
    if-eqz v2, :cond_0

    array-length v4, v2

    if-ne v4, v5, :cond_0

    .line 201
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 202
    nop

    .line 204
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    return-void

    .line 198
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[F
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 125
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method
