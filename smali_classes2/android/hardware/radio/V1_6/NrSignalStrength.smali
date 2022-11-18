.class public final Landroid/hardware/radio/V1_6/NrSignalStrength;
.super Ljava/lang/Object;
.source "NrSignalStrength.java"


# instance fields
.field public blacklist base:Landroid/hardware/radio/V1_4/NrSignalStrength;

.field public blacklist csiCqiReport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist csiCqiTableIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/NrSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/NrSignalStrength;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/NrSignalStrength;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 85
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 86
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 87
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 86
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 90
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 92
    new-instance v5, Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/NrSignalStrength;-><init>()V

    .line 93
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/NrSignalStrength;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/NrSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/NrSignalStrength;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
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
            "Landroid/hardware/radio/V1_6/NrSignalStrength;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/NrSignalStrength;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 131
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 132
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 133
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 135
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/NrSignalStrength;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/NrSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 140
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 141
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 32
    return v0

    .line 34
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 35
    return v1

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/NrSignalStrength;

    if-eq v2, v3, :cond_2

    .line 38
    return v1

    .line 40
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 41
    .local v2, "other":Landroid/hardware/radio/V1_6/NrSignalStrength;
    iget-object v3, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    return v1

    .line 44
    :cond_3
    iget v3, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    iget v4, v2, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    if-eq v3, v4, :cond_4

    .line 45
    return v1

    .line 47
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 48
    return v1

    .line 50
    :cond_5
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 56
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v15, p1

    invoke-virtual {v2, v15, v1, v5, v6}, Landroid/hardware/radio/V1_4/NrSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
    const-wide/16 v5, 0x18

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    .line 106
    const-wide/16 v5, 0x20

    add-long v7, p3, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 107
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v7, v2, 0x1

    int-to-long v8, v7

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v5, p3, v5

    add-long v12, v5, v3

    .line 107
    const/4 v14, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 111
    .local v3, "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 112
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 113
    const/4 v5, 0x0

    .line 114
    .local v5, "_hidl_vec_element":B
    mul-int/lit8 v6, v4, 0x1

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 115
    iget-object v6, v0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 76
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 77
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/NrSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .csiCqiTableIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .csiCqiReport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 145
    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/radio/V1_4/NrSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    const-wide/16 v3, 0x18

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 148
    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x20

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 151
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 152
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 153
    mul-int/lit8 v7, v6, 0x1

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 155
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 157
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 121
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 122
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/NrSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 124
    return-void
.end method
