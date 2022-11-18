.class public final Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Row"
.end annotation


# instance fields
.field public blacklist row:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 141
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 142
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 143
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 142
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 146
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 148
    new-instance v5, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 149
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    mul-int/lit8 v6, v4, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 184
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 185
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 186
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 187
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 188
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 189
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 194
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 195
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 103
    return v1

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    if-eq v2, v3, :cond_2

    .line 106
    return v1

    .line 108
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    .line 109
    .local v2, "other":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    return v1

    .line 112
    :cond_3
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    .line 118
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 160
    move-object v0, p0

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    move-object/from16 v5, p2

    invoke-virtual {v5, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 161
    .local v3, "_hidl_vec_size":I
    mul-int/lit8 v4, v3, 0x8

    int-to-long v7, v4

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, p3, v1

    add-long/2addr v11, v1

    .line 161
    const/4 v13, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 165
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 166
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 167
    const-wide/16 v6, 0x0

    .line 168
    .local v6, "_hidl_vec_element":D
    mul-int/lit8 v4, v2, 0x8

    int-to-long v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    .line 169
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v6    # "_hidl_vec_element":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v3    # "_hidl_vec_size":I
    :cond_0
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 132
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 133
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 134
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ".row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 200
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    .local v0, "_hidl_vec_size":I
    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 202
    add-long v3, p2, v1

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 203
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 204
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 205
    mul-int/lit8 v5, v4, 0x8

    int-to-long v5, v5

    iget-object v7, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->row:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "_hidl_index_0":I
    :cond_0
    add-long v4, p2, v1

    add-long/2addr v4, v1

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 209
    .end local v0    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 175
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 176
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 178
    return-void
.end method
