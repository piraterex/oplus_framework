.class public Landroid/os/vibrator/VibrationConfig;
.super Ljava/lang/Object;
.source "VibrationConfig.java"


# instance fields
.field private final blacklist mDefaultAlarmVibrationIntensity:I

.field private final blacklist mDefaultHapticFeedbackIntensity:I

.field private final blacklist mDefaultMediaVibrationIntensity:I

.field private final blacklist mDefaultNotificationVibrationIntensity:I

.field private final blacklist mDefaultRingVibrationIntensity:I

.field private final blacklist mHapticChannelMaxVibrationAmplitude:F

.field private final blacklist mRampDownDurationMs:I

.field private final blacklist mRampStepDurationMs:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x10500b5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadFloat(Landroid/content/res/Resources;IF)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    .line 67
    const v0, 0x10e00f6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    .line 69
    const v0, 0x10e00f7

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    .line 72
    const v0, 0x10e003f

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    .line 74
    const v0, 0x10e0044

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    .line 76
    const v0, 0x10e0045

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    .line 78
    const v0, 0x10e004c

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    .line 80
    const v0, 0x10e0053

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    .line 82
    return-void
.end method

.method private static blacklist loadDefaultIntensity(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 86
    const/4 v0, 0x2

    .line 87
    .local v0, "defaultIntensity":I
    invoke-static {p0, p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v1

    .line 88
    .local v1, "value":I
    if-ltz v1, :cond_1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    return v1

    .line 89
    :cond_1
    :goto_0
    return v0
.end method

.method private static blacklist loadFloat(Landroid/content/res/Resources;IF)F
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # F

    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static blacklist loadInteger(Landroid/content/res/Resources;II)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # I

    .line 99
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getDefaultVibrationIntensity(I)I
    .locals 1
    .param p1, "usage"    # I

    .line 141
    sparse-switch p1, :sswitch_data_0

    .line 158
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    return v0

    .line 146
    :sswitch_0
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    return v0

    .line 148
    :sswitch_1
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    return v0

    .line 153
    :sswitch_2
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    return v0

    .line 143
    :sswitch_3
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x31 -> :sswitch_0
        0x32 -> :sswitch_2
        0x41 -> :sswitch_0
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .locals 2

    .line 109
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 110
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 112
    :cond_0
    return v0
.end method

.method public blacklist getRampDownDurationMs()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    if-gez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    return v0
.end method

.method public blacklist getRampStepDurationMs()I
    .locals 1

    .line 132
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    if-gez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationConfig{mHapticChannelMaxVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampStepDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampDownDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultAlarmIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultHapticFeedbackIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultMediaIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultNotificationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultRingIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
