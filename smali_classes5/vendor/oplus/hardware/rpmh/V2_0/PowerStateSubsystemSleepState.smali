.class public final Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
.super Ljava/lang/Object;
.source "PowerStateSubsystemSleepState.java"


# instance fields
.field public blacklist lastEntryTimestampMs:J

.field public blacklist name:Ljava/lang/String;

.field public blacklist residencyInMsecSinceBoot:J

.field public blacklist supportedOnlyInSuspend:Z

.field public blacklist totalTransitions:J

.field public blacklist version:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    .line 16
    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    .line 20
    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    .line 24
    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

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
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 104
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 105
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 106
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 105
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 109
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 111
    new-instance v5, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    invoke-direct {v5}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;-><init>()V

    .line 112
    .local v5, "_hidl_vec_element":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    mul-int/lit8 v6, v4, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v5    # "_hidl_vec_element":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
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
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 148
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 149
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 151
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 156
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 157
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 33
    return v0

    .line 35
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 36
    return v1

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    if-eq v2, v3, :cond_2

    .line 39
    return v1

    .line 41
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 42
    .local v2, "other":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    iget-object v3, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 43
    return v1

    .line 45
    :cond_3
    iget-wide v3, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    iget-wide v5, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 46
    return v1

    .line 48
    :cond_4
    iget-wide v3, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    iget-wide v5, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 49
    return v1

    .line 51
    :cond_5
    iget-wide v3, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    iget-wide v5, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 52
    return v1

    .line 54
    :cond_6
    iget-wide v3, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    iget-wide v5, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    .line 55
    return v1

    .line 57
    :cond_7
    iget-boolean v3, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    iget-boolean v4, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    if-eq v3, v4, :cond_8

    .line 58
    return v1

    .line 60
    :cond_8
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 122
    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    .line 124
    nop

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 126
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v2, p3, v0

    add-long v8, v2, v0

    .line 124
    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 129
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    .line 130
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    .line 131
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    .line 132
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    .line 133
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    .line 134
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 95
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 96
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .residencyInMsecSinceBoot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .totalTransitions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .lastEntryTimestampMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-wide v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .supportedOnlyInSuspend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-boolean v1, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 161
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 162
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 163
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 164
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 165
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 166
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 167
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 137
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    return-void
.end method
