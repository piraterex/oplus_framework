.class public final Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;
.super Ljava/lang/Object;
.source "ExplorerModeInfo.java"


# instance fields
.field public blacklist AINRDuration:D

.field public blacklist AINRRunTimes:I

.field public blacklist HDRDuration:D

.field public blacklist HDRRunTimes:I

.field public blacklist HDR_AINRDuration:D

.field public blacklist HDR_AINRRunTimes:I

.field public blacklist OtherModeDuration:D

.field public blacklist OtherModeRunTimes:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    .line 6
    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    .line 7
    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    .line 8
    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    .line 10
    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    .line 11
    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    .line 12
    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 101
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 102
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 101
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 105
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 107
    new-instance v5, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    invoke-direct {v5}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;-><init>()V

    .line 108
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 141
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 143
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 148
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    if-eq v2, v3, :cond_2

    .line 23
    return v1

    .line 25
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    .line 26
    .local v2, "other":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;
    iget v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    iget v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    if-eq v3, v4, :cond_3

    .line 27
    return v1

    .line 29
    :cond_3
    iget v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    iget v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    if-eq v3, v4, :cond_4

    .line 30
    return v1

    .line 32
    :cond_4
    iget v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    iget v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    if-eq v3, v4, :cond_5

    .line 33
    return v1

    .line 35
    :cond_5
    iget v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    iget v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    if-eq v3, v4, :cond_6

    .line 36
    return v1

    .line 38
    :cond_6
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_7

    .line 39
    return v1

    .line 41
    :cond_7
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_8

    .line 42
    return v1

    .line 44
    :cond_8
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_9

    .line 45
    return v1

    .line 47
    :cond_9
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_a

    .line 48
    return v1

    .line 50
    :cond_a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 118
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    .line 119
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    .line 120
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    .line 121
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    .line 122
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    .line 123
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    .line 124
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    .line 125
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

    .line 126
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 91
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".HDRRunTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .AINRRunTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .HDR_AINRRunTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .OtherModeRunTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .HDRDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .AINRDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .HDR_AINRDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .OtherModeDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 153
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRRunTimes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRRunTimes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRRunTimes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeRunTimes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDRDuration:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 158
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->AINRDuration:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 159
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->HDR_AINRDuration:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 160
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->OtherModeDuration:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 161
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 129
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method
