.class public final Landroid/hardware/thermal/V1_0/CpuUsage;
.super Ljava/lang/Object;
.source "CpuUsage.java"


# instance fields
.field public blacklist active:J

.field public blacklist isOnline:Z

.field public blacklist name:Ljava/lang/String;

.field public blacklist total:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    .line 17
    iput-wide v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

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
            "Landroid/hardware/thermal/V1_0/CpuUsage;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V1_0/CpuUsage;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 91
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 93
    new-instance v5, Landroid/hardware/thermal/V1_0/CpuUsage;

    invoke-direct {v5}, Landroid/hardware/thermal/V1_0/CpuUsage;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/thermal/V1_0/CpuUsage;
    mul-int/lit8 v6, v4, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/thermal/V1_0/CpuUsage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/thermal/V1_0/CpuUsage;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
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
            "Landroid/hardware/thermal/V1_0/CpuUsage;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V1_0/CpuUsage;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 128
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 129
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 131
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/thermal/V1_0/CpuUsage;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/thermal/V1_0/CpuUsage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 136
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 26
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 27
    return v0

    .line 29
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 30
    return v1

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/thermal/V1_0/CpuUsage;

    if-eq v2, v3, :cond_2

    .line 33
    return v1

    .line 35
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/thermal/V1_0/CpuUsage;

    .line 36
    .local v2, "other":Landroid/hardware/thermal/V1_0/CpuUsage;
    iget-object v3, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 37
    return v1

    .line 39
    :cond_3
    iget-wide v3, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    iget-wide v5, v2, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 40
    return v1

    .line 42
    :cond_4
    iget-wide v3, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    iget-wide v5, v2, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 43
    return v1

    .line 45
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

    iget-boolean v4, v2, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

    if-eq v3, v4, :cond_6

    .line 46
    return v1

    .line 48
    :cond_6
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    .line 106
    nop

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 108
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v2, p3, v0

    add-long v8, v2, v0

    .line 106
    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 111
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    .line 112
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    .line 113
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

    .line 114
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/thermal/V1_0/CpuUsage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .total = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-wide v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .isOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 141
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 142
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->active:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 143
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->total:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 144
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/thermal/V1_0/CpuUsage;->isOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V1_0/CpuUsage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 120
    return-void
.end method
