.class public final Landroid/os/VibrationEffect$WaveformBuilder;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaveformBuilder"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f


# instance fields
.field private blacklist mLastAmplitude:F

.field private blacklist mLastFrequencyHz:F

.field private blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    .line 1232
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    .line 1233
    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    .line 1235
    return-void
.end method

.method private blacklist addTransitionSegment(Ljava/time/Duration;FF)V
    .locals 9
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "targetAmplitude"    # F
    .param p3, "targetFrequency"    # F

    .line 1376
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Transition duration must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1379
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1382
    .local v0, "durationMs":I
    if-lez v0, :cond_1

    .line 1383
    iget v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    sub-float/2addr v1, p3

    .line 1384
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1386
    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/StepSegment;

    invoke-direct {v2, p2, p3, v0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1388
    :cond_0
    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v8, Landroid/os/vibrator/RampSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v5, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    move-object v2, v8

    move v4, p2

    move v6, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_1
    :goto_0
    iput p2, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    .line 1394
    iput p3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    .line 1395
    return-void
.end method

.method private blacklist checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V
    .locals 4
    .param p1, "vibrationParameter"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 1345
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "%s is null"

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    instance-of v1, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v2, "%s is a unknown parameter"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    return-void
.end method

.method private blacklist extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .locals 1
    .param p1, "target1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p2, "target2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 1354
    instance-of v0, p2, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_0

    .line 1355
    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return v0

    .line 1357
    :cond_0
    instance-of v0, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_1

    .line 1358
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return v0

    .line 1360
    :cond_1
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    return v0
.end method

.method private blacklist extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .locals 1
    .param p1, "target1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p2, "target2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 1365
    instance-of v0, p2, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_0

    .line 1366
    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return v0

    .line 1368
    :cond_0
    instance-of v0, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_1

    .line 1369
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return v0

    .line 1371
    :cond_1
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    return v0
.end method


# virtual methods
.method public blacklist addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 5
    .param p1, "duration"    # Ljava/time/Duration;

    .line 1317
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1318
    .local v0, "durationMs":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Sustain duration must be >= 1ms"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1319
    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/StepSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v4, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    invoke-direct {v2, v3, v4, v0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "targetParameter"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 1258
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string/jumbo v0, "targetParameter"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 1260
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    .line 1261
    .local v1, "amplitude":F
    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    .line 1262
    .local v0, "frequencyHz":F
    invoke-direct {p0, p1, v1, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    .line 1263
    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2
    .param p1, "duration"    # Ljava/time/Duration;
    .param p2, "targetParameter1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p3, "targetParameter2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 1291
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string/jumbo v0, "targetParameter1"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v0, "targetParameter2"

    invoke-direct {p0, p3, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 1294
    nop

    .line 1295
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1294
    const-string v1, "Parameter arguments must specify different parameter types"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1297
    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    .line 1298
    .local v0, "amplitude":F
    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    .line 1299
    .local v1, "frequencyHz":F
    invoke-direct {p0, p1, v0, v1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    .line 1300
    return-object p0
.end method

.method public blacklist build()Landroid/os/VibrationEffect;
    .locals 3

    .line 1334
    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1339
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 1340
    return-object v0

    .line 1335
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WaveformBuilder must have at least one transition to build."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
