.class public final Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;
.super Ljava/lang/Object;
.source "ProcMemStat.java"


# instance fields
.field public blacklist anon:I

.field public blacklist ashmem:I

.field public blacklist comm:Ljava/lang/String;

.field public blacklist dmabuf:I

.field public blacklist file:I

.field public blacklist gpu:I

.field public blacklist is_32bit:Z

.field public blacklist javaheap:I

.field public blacklist nativeheap:I

.field public blacklist nr_fds:I

.field public blacklist oom_score_adj:S

.field public blacklist pid:I

.field public blacklist ppid:I

.field public blacklist pss:I

.field public blacklist shmem:I

.field public blacklist swap:I

.field public blacklist swap_rss:I

.field public blacklist uid:I

.field public blacklist vss:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    .line 7
    iput-short v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    .line 8
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    .line 9
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    .line 10
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    .line 11
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    .line 12
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    .line 13
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    .line 14
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    .line 15
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    .line 16
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    .line 20
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    .line 21
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    .line 22
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    .line 23
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    .line 27
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    .line 28
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    .line 29
    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

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
            "Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 183
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 184
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 185
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 184
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 188
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 190
    new-instance v5, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;

    invoke-direct {v5}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;-><init>()V

    .line 191
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 192
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
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
            "Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 238
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 239
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 240
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 241
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 242
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 243
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 248
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 249
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 34
    return v0

    .line 36
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 37
    return v1

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;

    if-eq v2, v3, :cond_2

    .line 40
    return v1

    .line 42
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;

    .line 43
    .local v2, "other":Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;
    iget-object v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    iget-object v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 44
    return v1

    .line 46
    :cond_3
    iget-boolean v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    iget-boolean v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    if-eq v3, v4, :cond_4

    .line 47
    return v1

    .line 49
    :cond_4
    iget-short v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    iget-short v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    if-eq v3, v4, :cond_5

    .line 50
    return v1

    .line 52
    :cond_5
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    if-eq v3, v4, :cond_6

    .line 53
    return v1

    .line 55
    :cond_6
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    if-eq v3, v4, :cond_7

    .line 56
    return v1

    .line 58
    :cond_7
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    if-eq v3, v4, :cond_8

    .line 59
    return v1

    .line 61
    :cond_8
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    if-eq v3, v4, :cond_9

    .line 62
    return v1

    .line 64
    :cond_9
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    if-eq v3, v4, :cond_a

    .line 65
    return v1

    .line 67
    :cond_a
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    if-eq v3, v4, :cond_b

    .line 68
    return v1

    .line 70
    :cond_b
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    if-eq v3, v4, :cond_c

    .line 71
    return v1

    .line 73
    :cond_c
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    if-eq v3, v4, :cond_d

    .line 74
    return v1

    .line 76
    :cond_d
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    if-eq v3, v4, :cond_e

    .line 77
    return v1

    .line 79
    :cond_e
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    if-eq v3, v4, :cond_f

    .line 80
    return v1

    .line 82
    :cond_f
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    if-eq v3, v4, :cond_10

    .line 83
    return v1

    .line 85
    :cond_10
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    if-eq v3, v4, :cond_11

    .line 86
    return v1

    .line 88
    :cond_11
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    if-eq v3, v4, :cond_12

    .line 89
    return v1

    .line 91
    :cond_12
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    if-eq v3, v4, :cond_13

    .line 92
    return v1

    .line 94
    :cond_13
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    if-eq v3, v4, :cond_14

    .line 95
    return v1

    .line 97
    :cond_14
    iget v3, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

    iget v4, v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

    if-eq v3, v4, :cond_15

    .line 98
    return v1

    .line 100
    :cond_15
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 105
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    .line 106
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    .line 108
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 105
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 201
    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    .line 203
    nop

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 205
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v2, p3, v0

    add-long v8, v2, v0

    .line 203
    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 208
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    .line 209
    const-wide/16 v0, 0x12

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    .line 210
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    .line 211
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    .line 212
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    .line 213
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    .line 214
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    .line 215
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    .line 216
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    .line 217
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    .line 218
    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    .line 219
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    .line 220
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    .line 221
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    .line 222
    const-wide/16 v0, 0x44

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    .line 223
    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    .line 224
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    .line 225
    const-wide/16 v0, 0x50

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

    .line 226
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 174
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 175
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 176
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ".comm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ", .is_32bit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-boolean v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", .oom_score_adj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-short v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", .nr_fds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", .uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", .pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", .ppid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", .anon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", .file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", .shmem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", .swap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", .vss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", .pss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", .swap_rss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", .javaheap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", .nativeheap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", .ashmem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", .dmabuf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", .gpu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 253
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->comm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 254
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->is_32bit:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 255
    const-wide/16 v0, 0x12

    add-long/2addr v0, p2

    iget-short v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->oom_score_adj:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 256
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nr_fds:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 257
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->uid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 258
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 259
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ppid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 260
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->anon:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->file:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 262
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->shmem:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 263
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 264
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->vss:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 265
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->pss:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 266
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->swap_rss:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 267
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->javaheap:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 268
    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->nativeheap:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 269
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->ashmem:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 270
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->dmabuf:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 271
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->gpu:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 272
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 229
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 230
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStat;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 232
    return-void
.end method
