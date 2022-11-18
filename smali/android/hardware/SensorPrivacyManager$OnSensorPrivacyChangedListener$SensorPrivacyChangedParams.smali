.class public Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorPrivacyChangedParams"
.end annotation


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mSensor:I

.field private blacklist mToggleType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensor(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)I
    .locals 0

    iget p0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    return p0
.end method

.method private constructor blacklist <init>(IIZ)V
    .locals 0
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    .line 258
    iput p2, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    .line 259
    iput-boolean p3, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    .line 260
    return-void
.end method

.method synthetic constructor blacklist <init>(IIZLandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public whitelist getSensor()I
    .locals 1

    .line 267
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    return v0
.end method

.method public whitelist getToggleType()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    return v0
.end method
