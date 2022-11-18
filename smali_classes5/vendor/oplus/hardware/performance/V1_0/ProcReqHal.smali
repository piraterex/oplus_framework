.class public final Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
.super Ljava/lang/Object;
.source "ProcReqHal.java"


# instance fields
.field public blacklist items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist proc:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

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
            "Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 58
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 59
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 60
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 59
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 63
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 65
    new-instance v5, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v5}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 66
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
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
            "Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 109
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 111
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 113
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 118
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 14
    return v1

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 19
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    .line 20
    .local v2, "other":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    iget-object v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    iget-object v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    return v1

    .line 23
    :cond_3
    iget-object v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    return v1

    .line 26
    :cond_4
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    .line 33
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    .line 78
    nop

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 78
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 84
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 85
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x28

    int-to-long v9, v7

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v4, p3, v4

    add-long v13, v4, v2

    .line 85
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 89
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 90
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 91
    new-instance v4, Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;

    invoke-direct {v4}, Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;-><init>()V

    .line 92
    .local v4, "_hidl_vec_element":Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;
    mul-int/lit8 v5, v3, 0x28

    int-to-long v7, v5

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v2, v7, v8}, Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    iget-object v7, v0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v4    # "_hidl_vec_element":Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    .line 96
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 49
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 50
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 51
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ".proc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .items = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 123
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->proc:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 125
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 126
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x10

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 127
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 128
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x28

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 129
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 130
    iget-object v7, p0, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;

    mul-int/lit8 v8, v6, 0x28

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Lvendor/oplus/hardware/performance/V1_0/ProcReqItemHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 132
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 134
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 99
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 102
    return-void
.end method
