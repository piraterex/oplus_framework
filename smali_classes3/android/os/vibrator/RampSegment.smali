.class public final Landroid/os/vibrator/RampSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "RampSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDuration:I

.field private final blacklist mEndAmplitude:F

.field private final blacklist mEndFrequencyHz:F

.field private final blacklist mStartAmplitude:F

.field private final blacklist mStartFrequencyHz:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Landroid/os/vibrator/RampSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/RampSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/RampSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFI)V
    .locals 0
    .param p1, "startAmplitude"    # F
    .param p2, "endAmplitude"    # F
    .param p3, "startFrequencyHz"    # F
    .param p4, "endFrequencyHz"    # F
    .param p5, "duration"    # I

    .line 54
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 55
    iput p1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    .line 56
    iput p2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    .line 57
    iput p3, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    .line 58
    iput p4, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    .line 59
    iput p5, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    .line 60
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/RampSegment;
    .locals 0
    .param p1, "effectStrength"    # I

    .line 145
    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->applyEffectStrength(I)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Landroid/os/vibrator/RampSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/RampSegment;

    .line 68
    .local v0, "other":Landroid/os/vibrator/RampSegment;
    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mDuration:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 68
    :goto_0
    return v1
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 93
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getEndAmplitude()F
    .locals 1

    .line 80
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    return v0
.end method

.method public blacklist getEndFrequencyHz()F
    .locals 1

    .line 88
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    return v0
.end method

.method public blacklist getStartAmplitude()F
    .locals 1

    .line 76
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    return v0
.end method

.method public blacklist getStartFrequencyHz()F
    .locals 1

    .line 84
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    return v0
.end method

.method public blacklist hasNonZeroAmplitude()Z
    .locals 2

    .line 105
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 150
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 1

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/RampSegment;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 123
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->resolve(I)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/RampSegment;
    .locals 9
    .param p1, "scaleFactor"    # F

    .line 130
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v0

    .line 131
    .local v0, "newStartAmplitude":F
    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v7

    .line 132
    .local v7, "newEndAmplitude":F
    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    .line 133
    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    return-object p0

    .line 136
    :cond_0
    new-instance v8, Landroid/os/vibrator/RampSegment;

    iget v4, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v5, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v6, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    move-object v1, v8

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v8
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->scale(F)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ramp{startAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 4

    .line 111
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    const-string/jumbo v1, "startFrequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    .line 112
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    const-string v1, "endFrequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    .line 113
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    int-to-long v0, v0

    const-string v2, "duration"

    invoke-static {v0, v1, v2}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    .line 114
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v3, "startAmplitude"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 115
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    const-string v3, "endAmplitude"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 116
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 171
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 173
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 174
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 175
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 176
    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void
.end method
