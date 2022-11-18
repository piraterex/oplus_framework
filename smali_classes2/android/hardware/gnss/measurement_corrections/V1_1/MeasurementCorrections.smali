.class public final Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
.super Ljava/lang/Object;
.source "MeasurementCorrections.java"


# instance fields
.field public blacklist environmentBearingDegrees:F

.field public blacklist environmentBearingUncertaintyDegrees:F

.field public blacklist hasEnvironmentBearing:Z

.field public blacklist satCorrections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    .line 41
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 115
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 116
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 117
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 116
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 120
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 122
    new-instance v5, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    invoke-direct {v5}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;-><init>()V

    .line 123
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
    mul-int/lit8 v6, v4, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 124
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
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
            "Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 163
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 164
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 165
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 167
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 172
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 173
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 53
    return v1

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    if-eq v2, v3, :cond_2

    .line 56
    return v1

    .line 58
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    .line 59
    .local v2, "other":Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    iget-object v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    return v1

    .line 62
    :cond_3
    iget-boolean v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    if-eq v3, v4, :cond_4

    .line 63
    return v1

    .line 65
    :cond_4
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 66
    return v1

    .line 68
    :cond_5
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    .line 69
    return v1

    .line 71
    :cond_6
    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 72
    return v1

    .line 74
    :cond_7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    .line 80
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    .line 83
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    .line 84
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 134
    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 135
    const-wide/16 v4, 0x44

    add-long v4, p3, v4

    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    .line 136
    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    .line 138
    const-wide/16 v4, 0x50

    add-long v6, p3, v4

    const-wide/16 v11, 0x8

    add-long/2addr v6, v11

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 139
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v1, v11, 0x40

    int-to-long v6, v1

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    .line 139
    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v12

    move-wide v6, v14

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 143
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 145
    new-instance v3, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;

    invoke-direct {v3}, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;-><init>()V

    .line 146
    .local v3, "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;
    mul-int/lit8 v4, v2, 0x40

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 147
    iget-object v4, v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_0
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 106
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 107
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", .hasEnvironmentBearing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-boolean v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .environmentBearingDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .environmentBearingUncertaintyDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .satCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 177
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->v1_0:Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 178
    const-wide/16 v3, 0x40

    add-long/2addr v3, p2

    iget-boolean v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 179
    const-wide/16 v3, 0x44

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 180
    const-wide/16 v3, 0x48

    add-long/2addr v3, p2

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 182
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x50

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 184
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 185
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x40

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 186
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 187
    iget-object v7, p0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;

    mul-int/lit8 v8, v6, 0x40

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/gnss/measurement_corrections/V1_1/SingleSatCorrection;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 191
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 153
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 156
    return-void
.end method
