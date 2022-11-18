.class public final Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;
.super Ljava/lang/Object;
.source "ExplorerInfo.java"


# instance fields
.field public blacklist endTime:D

.field public blacklist exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

.field public blacklist modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

.field public blacklist operationMode:I

.field public blacklist sensorDuration:[D

.field public blacklist startTime:D

.field public blacklist tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    .line 7
    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [D

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    .line 9
    new-instance v0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    invoke-direct {v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    .line 10
    new-instance v0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    invoke-direct {v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    .line 11
    new-instance v0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    invoke-direct {v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 93
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 94
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xc8

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 94
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 98
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 100
    new-instance v5, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;

    invoke-direct {v5}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;-><init>()V

    .line 101
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;
    mul-int/lit16 v6, v4, 0xc8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;>;"
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

    mul-int/lit16 v3, v1, 0xc8

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

    check-cast v4, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;

    mul-int/lit16 v5, v3, 0xc8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 15
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 16
    return v0

    .line 18
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 19
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;

    if-eq v2, v3, :cond_2

    .line 22
    return v1

    .line 24
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;

    .line 25
    .local v2, "other":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;
    iget v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    iget v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    if-eq v3, v4, :cond_3

    .line 26
    return v1

    .line 28
    :cond_3
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    .line 29
    return v1

    .line 31
    :cond_4
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5

    .line 32
    return v1

    .line 34
    :cond_5
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 35
    return v1

    .line 37
    :cond_6
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 38
    return v1

    .line 40
    :cond_7
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 41
    return v1

    .line 43
    :cond_8
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 44
    return v1

    .line 46
    :cond_9
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    .line 56
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 111
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    .line 112
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    .line 113
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    .line 115
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 116
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    const/16 v3, 0x8

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToDoubleArray(J[DI)V

    .line 117
    nop

    .line 119
    .end local v0    # "_hidl_array_offset_0":J
    iget-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    const-wide/16 v1, 0x58

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 120
    iget-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    const-wide/16 v1, 0x70

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 121
    iget-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    const-wide/16 v1, 0xa0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 122
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 85
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".operationMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .sensorDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .exceptionInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .modeInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .tempInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 5
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 149
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->operationMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->startTime:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 151
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->endTime:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 153
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 154
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->sensorDuration:[D

    .line 156
    .local v2, "_hidl_array_item_0":[D
    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 160
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putDoubleArray(J[D)V

    .line 161
    nop

    .line 163
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[D
    iget-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->exceptionInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;

    const-wide/16 v1, 0x58

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerExceptionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 164
    iget-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->modeInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;

    const-wide/16 v1, 0x70

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 165
    iget-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->tempInfo:Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;

    const-wide/16 v1, 0xa0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerTempInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 166
    return-void

    .line 157
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[D
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array element is not of the expected length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 125
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method
