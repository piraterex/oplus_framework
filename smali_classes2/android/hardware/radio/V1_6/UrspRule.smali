.class public final Landroid/hardware/radio/V1_6/UrspRule;
.super Ljava/lang/Object;
.source "UrspRule.java"


# instance fields
.field public blacklist precedence:B

.field public blacklist routeSelectionDescriptor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist trafficDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/UrspRule;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/UrspRule;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 76
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 77
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 78
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 77
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 81
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 83
    new-instance v5, Landroid/hardware/radio/V1_6/UrspRule;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/UrspRule;-><init>()V

    .line 84
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/UrspRule;
    mul-int/lit8 v6, v4, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/UrspRule;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/UrspRule;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
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
            "Landroid/hardware/radio/V1_6/UrspRule;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/UrspRule;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 133
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 135
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 136
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 137
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 138
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/UrspRule;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/UrspRule;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 143
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 144
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 26
    return v1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/UrspRule;

    if-eq v2, v3, :cond_2

    .line 29
    return v1

    .line 31
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/UrspRule;

    .line 32
    .local v2, "other":Landroid/hardware/radio/V1_6/UrspRule;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    if-eq v3, v4, :cond_3

    .line 33
    return v1

    .line 35
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 36
    return v1

    .line 38
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 39
    return v1

    .line 41
    :cond_5
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    .line 47
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    .line 49
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    .line 96
    const-wide/16 v13, 0x8

    add-long v1, p3, v13

    add-long/2addr v1, v13

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 97
    .local v15, "_hidl_vec_size":I
    mul-int/lit8 v1, v15, 0x30

    int-to-long v2, v1

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v13

    add-long/2addr v6, v11

    .line 97
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 101
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 102
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v15, :cond_0

    .line 103
    new-instance v3, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/TrafficDescriptor;-><init>()V

    .line 104
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_6/TrafficDescriptor;
    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_6/TrafficDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 105
    iget-object v4, v0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/TrafficDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v15    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x18

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 110
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x30

    int-to-long v3, v3

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/4 v11, 0x1

    .line 110
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 114
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 115
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_1
    if-ge v2, v13, :cond_1

    .line 116
    new-instance v3, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;-><init>()V

    .line 117
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 118
    iget-object v4, v0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_1
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 67
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 68
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/UrspRule;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 69
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ".precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", .trafficDescriptors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", .routeSelectionDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 148
    move-object v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-byte v6, v0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 150
    iget-object v4, v0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 151
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 153
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x30

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 155
    iget-object v12, v0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    mul-int/lit8 v13, v8, 0x30

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_6/TrafficDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 154
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v12, p2, v5

    add-long/2addr v12, v2

    invoke-virtual {v1, v12, v13, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 160
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 161
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v12, p2, v7

    add-long/2addr v12, v5

    invoke-virtual {v1, v12, v13, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 162
    add-long v5, p2, v7

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 163
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x30

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 164
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 165
    iget-object v9, v0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    mul-int/lit8 v10, v6, 0x30

    int-to-long v10, v10

    invoke-virtual {v9, v5, v10, v11}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 167
    .end local v6    # "_hidl_index_0":I
    :cond_1
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 169
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 124
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 125
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/UrspRule;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 127
    return-void
.end method
