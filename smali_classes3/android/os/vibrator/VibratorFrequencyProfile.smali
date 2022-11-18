.class public final Landroid/os/vibrator/VibratorFrequencyProfile;
.super Ljava/lang/Object;
.source "VibratorFrequencyProfile.java"


# instance fields
.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibratorInfo$FrequencyProfile;)V
    .locals 2
    .param p1, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Frequency profile must have a non-empty frequency range"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    iput-object p1, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist getMaxAmplitudeMeasurementInterval()F
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyResolutionHz()F

    move-result v0

    return v0
.end method

.method public blacklist getMaxAmplitudeMeasurements()[F
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitudes()[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxFrequency()F
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getMinFrequency()F
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
