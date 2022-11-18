.class public final Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;
.super Ljava/lang/Object;
.source "PowerFactor.java"


# instance fields
.field public blacklist cameraInfoSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist duration:D

.field public blacklist flashTime:[D

.field public blacklist frameRate:D

.field public blacklist isLaserOpen:Z

.field public blacklist isOISEnable:Z

.field public blacklist motorTime:[D

.field public blacklist numOfCameras:I

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist startTime:D


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    .line 8
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    .line 9
    iput-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    .line 10
    iput-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    .line 11
    iput-boolean v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    .line 12
    const/4 v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    .line 13
    iput-boolean v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 114
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 115
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 116
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 115
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 119
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 121
    new-instance v5, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;

    invoke-direct {v5}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;-><init>()V

    .line 122
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;
    mul-int/lit8 v6, v4, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
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
            "Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 180
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 181
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 182
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 183
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 184
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 185
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 190
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 191
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 18
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 19
    return v0

    .line 21
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 22
    return v1

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;

    if-eq v2, v3, :cond_2

    .line 25
    return v1

    .line 27
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;

    .line 28
    .local v2, "other":Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 29
    return v1

    .line 31
    :cond_3
    iget v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    iget v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    if-eq v3, v4, :cond_4

    .line 32
    return v1

    .line 34
    :cond_4
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 35
    return v1

    .line 37
    :cond_5
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6

    .line 38
    return v1

    .line 40
    :cond_6
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_7

    .line 41
    return v1

    .line 43
    :cond_7
    iget-wide v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    iget-wide v5, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_8

    .line 44
    return v1

    .line 46
    :cond_8
    iget-boolean v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    iget-boolean v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    if-eq v3, v4, :cond_9

    .line 47
    return v1

    .line 49
    :cond_9
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 50
    return v1

    .line 52
    :cond_a
    iget-boolean v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    iget-boolean v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    if-eq v3, v4, :cond_b

    .line 53
    return v1

    .line 55
    :cond_b
    iget-object v3, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

    iget-object v4, v2, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 56
    return v1

    .line 58
    :cond_c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    .line 66
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    .line 71
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

    .line 73
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    .line 134
    nop

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 134
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 139
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    .line 141
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 142
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x10

    int-to-long v9, v7

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v4, p3, v4

    add-long v13, v4, v2

    .line 142
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 146
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 148
    new-instance v4, Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;

    invoke-direct {v4}, Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;-><init>()V

    .line 149
    .local v4, "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;
    mul-int/lit8 v5, v3, 0x10

    int-to-long v7, v5

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v2, v7, v8}, Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
    iget-object v7, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v4    # "_hidl_vec_element":Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    .line 153
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v2

    iput-wide v2, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    .line 154
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v2

    iput-wide v2, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    .line 155
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v2

    iput-wide v2, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    .line 156
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    .line 158
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    .line 159
    .local v2, "_hidl_array_offset_0":J
    iget-object v4, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    const/4 v6, 0x2

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/os/HwBlob;->copyToDoubleArray(J[DI)V

    .line 160
    nop

    .line 162
    .end local v2    # "_hidl_array_offset_0":J
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    .line 164
    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    .line 165
    .restart local v2    # "_hidl_array_offset_0":J
    iget-object v4, v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

    const/4 v6, 0x3

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/os/HwBlob;->copyToDoubleArray(J[DI)V

    .line 166
    nop

    .line 168
    .end local v2    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 105
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 106
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ".packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .numOfCameras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .cameraInfoSet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .frameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .isLaserOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", .flashTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .isOISEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-boolean v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .motorTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 195
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 196
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    iget v4, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->numOfCameras:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 198
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 199
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x18

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 200
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 201
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 203
    iget-object v7, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->cameraInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;

    mul-int/lit8 v8, v6, 0x10

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Lvendor/oplus/hardware/cammidasservice/V1_0/CameraInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 207
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->frameRate:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 208
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->startTime:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 209
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->duration:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 210
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isLaserOpen:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 212
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 213
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->flashTime:[D

    .line 215
    .local v2, "_hidl_array_item_0":[D
    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 219
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putDoubleArray(J[D)V

    .line 220
    nop

    .line 222
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[D
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->isOISEnable:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 224
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    .line 225
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->motorTime:[D

    .line 227
    .restart local v2    # "_hidl_array_item_0":[D
    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 231
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putDoubleArray(J[D)V

    .line 232
    nop

    .line 234
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[D
    return-void

    .line 228
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[D
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 171
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 172
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 174
    return-void
.end method
