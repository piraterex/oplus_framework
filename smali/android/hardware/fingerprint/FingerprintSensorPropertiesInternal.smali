.class public Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
.super Landroid/hardware/biometrics/SensorPropertiesInternal;
.source "FingerprintSensorPropertiesInternal.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist halControlsIllumination:Z

.field private final blacklist mSensorLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist sensorType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZ)V
    .locals 14
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I
    .param p3, "maxEnrollmentsPerUser"    # I
    .param p5, "sensorType"    # I
    .param p6, "resetLockoutRequiresHardwareAuthToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZ)V"
        }
    .end annotation

    .line 82
    .local p4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    const-string v1, ""

    const/16 v2, 0x21c

    const/16 v3, 0x664

    const/16 v4, 0x82

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    .line 84
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 82
    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    invoke-direct/range {v5 .. v13}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZZLjava/util/List;)V
    .locals 7
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I
    .param p3, "maxEnrollmentsPerUser"    # I
    .param p5, "sensorType"    # I
    .param p6, "halControlsIllumination"    # Z
    .param p7, "resetLockoutRequiresHardwareAuthToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZZ",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    .local p8, "sensorLocations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorLocationInternal;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 66
    sget-object v0, Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtilsExtPlugin;->getSupportSensorType:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 68
    iput p5, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 69
    iput-boolean p6, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    .line 70
    invoke-static {p8}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    .line 71
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    .line 92
    sget-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocation()Landroid/hardware/biometrics/SensorLocationInternal;
    .locals 2

    .line 153
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v0

    .line 154
    .local v0, "location":Landroid/hardware/biometrics/SensorLocationInternal;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    :goto_0
    return-object v1
.end method

.method public blacklist getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;
    .locals 3
    .param p1, "displayId"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorLocationInternal;

    .line 166
    .local v1, "location":Landroid/hardware/biometrics/SensorLocationInternal;
    iget-object v2, v1, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    return-object v1

    .line 169
    .end local v1    # "location":Landroid/hardware/biometrics/SensorLocationInternal;
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAnySidefpsType()Z
    .locals 1

    .line 136
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    packed-switch v0, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 138
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isAnyUdfpsType()Z
    .locals 1

    .line 122
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    packed-switch v0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/SensorPropertiesInternal;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 119
    return-void
.end method
