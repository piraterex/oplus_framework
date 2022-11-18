.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$OnVibratorStateChangedListener;,
        Landroid/os/Vibrator$VibrationIntensity;,
        Landroid/os/Vibrator$VibrationEffectSupport;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_UNKNOWN:I = 0x0

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_YES:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_HIGH:I = 0x3

.field public static final greylist-max-o VIBRATION_INTENSITY_LOW:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_MEDIUM:I = 0x2

.field public static final greylist-max-o VIBRATION_INTENSITY_OFF:I


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private volatile blacklist mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field private blacklist mVibratorExt:Landroid/os/IVibratorExt;


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-class v0, Landroid/os/IVibratorExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IVibratorExt;

    iput-object v0, p0, Landroid/os/Vibrator;->mVibratorExt:Landroid/os/IVibratorExt;

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 149
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-class v0, Landroid/os/IVibratorExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IVibratorExt;

    iput-object v0, p0, Landroid/os/Vibrator;->mVibratorExt:Landroid/os/IVibratorExt;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 157
    return-void
.end method

.method private blacklist getConfig()Landroid/os/vibrator/VibrationConfig;
    .locals 3

    .line 170
    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 172
    .local v0, "resources":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 174
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 178
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/os/vibrator/VibrationConfig;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 180
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    return-object v0
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 722
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 737
    return-void
.end method

.method public final varargs whitelist areAllEffectsSupported([I)I
    .locals 6
    .param p1, "effectIds"    # [I

    .line 577
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 578
    .local v0, "info":Landroid/os/VibratorInfo;
    const/4 v1, 0x1

    .line 579
    .local v1, "allSupported":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 580
    .local v4, "effectId":I
    invoke-virtual {v0, v4}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 586
    const/4 v1, 0x0

    goto :goto_1

    .line 582
    :pswitch_0
    const/4 v2, 0x2

    return v2

    .line 584
    :pswitch_1
    nop

    .line 579
    .end local v4    # "effectId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs whitelist areAllPrimitivesSupported([I)Z
    .locals 6
    .param p1, "primitiveIds"    # [I

    .line 633
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 634
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 635
    .local v4, "primitiveId":I
    invoke-virtual {v0, v4}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 636
    return v2

    .line 634
    .end local v4    # "primitiveId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public varargs whitelist areEffectsSupported([I)[I
    .locals 4
    .param p1, "effectIds"    # [I

    .line 541
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 542
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    new-array v1, v1, [I

    .line 543
    .local v1, "supported":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 544
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v3

    aput v3, v1, v2

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public varargs whitelist arePrimitivesSupported([I)[Z
    .locals 4
    .param p1, "primitiveIds"    # [I

    .line 612
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 613
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    new-array v1, v1, [Z

    .line 614
    .local v1, "supported":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 615
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .locals 1
    .param p1, "usage"    # I

    .line 191
    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    .line 285
    .local v0, "frequencyProfile":Landroid/os/VibratorInfo$FrequencyProfile;
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const/4 v1, 0x0

    return-object v1

    .line 288
    :cond_0
    new-instance v1, Landroid/os/vibrator/VibratorFrequencyProfile;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibratorFrequencyProfile;-><init>(Landroid/os/VibratorInfo$FrequencyProfile;)V

    return-object v1
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .locals 1

    .line 303
    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getHapticChannelMaximumAmplitude()F

    move-result v0

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    return v0
.end method

.method protected blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 1

    .line 165
    sget-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public varargs whitelist getPrimitiveDurations([I)[I
    .locals 4
    .param p1, "primitiveIds"    # [I

    .line 658
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 659
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    new-array v1, v1, [I

    .line 660
    .local v1, "durations":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 661
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v3

    aput v3, v1, v2

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public blacklist getQFactor()F
    .locals 1

    .line 266
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getQFactor()F

    move-result v0

    return v0
.end method

.method public blacklist getResonantFrequency()F
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    return v0
.end method

.method public whitelist getVibratorStatus()I
    .locals 2

    .line 781
    const-string v0, "Vibrator"

    const-string v1, "Vibrator getVibratorStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getVibratorTouchStyle()I
    .locals 2

    .line 804
    const-string v0, "Vibrator"

    const-string v1, "Vibrator getVibratorTouchStyle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, -0x1

    return v0
.end method

.method public abstract whitelist hasAmplitudeControl()Z
.end method

.method public blacklist hasExternalControl()Z
    .locals 3

    .line 240
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasFrequencyControl()Z
    .locals 3

    .line 228
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    const-wide/16 v1, 0x600

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist hasVibrator()Z
.end method

.method public whitelist isVibrating()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist linearMotorVibrate(ILjava/lang/String;[I[JIILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "waveformIds"    # [I
    .param p4, "timings"    # [J
    .param p5, "strength"    # I
    .param p6, "repeat"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "attributes"    # Landroid/media/AudioAttributes;
    .param p9, "token"    # Landroid/os/IBinder;

    .line 769
    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 749
    return-void
.end method

.method public blacklist setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 6
    .param p1, "alwaysOnId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "attributes"    # Landroid/os/VibrationAttributes;

    .line 320
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 329
    const-string v0, "Vibrator"

    const-string v1, "Always-on effects aren\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVibratorStrength(I)V
    .locals 2
    .param p1, "strength"    # I

    .line 790
    const-string v0, "Vibrator"

    const-string v1, "Vibrator setVibratorStrength()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method public whitelist setVibratorTouchStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 813
    const-string v0, "Vibrator"

    const-string v1, "Vibrator setVibratorTouchStyle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public whitelist vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 345
    return-void
.end method

.method public whitelist vibrate(JLandroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    const/4 v0, -0x1

    .line 366
    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 367
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;)V
    .locals 1
    .param p1, "vibe"    # Landroid/os/VibrationEffect;

    .line 455
    iget-object v0, p0, Landroid/os/Vibrator;->mVibratorExt:Landroid/os/IVibratorExt;

    invoke-interface {v0, p1}, Landroid/os/IVibratorExt;->vibrate(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    return-void

    .line 459
    :cond_0
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 460
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .line 479
    iget-object v0, p0, Landroid/os/Vibrator;->mVibratorExt:Landroid/os/IVibratorExt;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorExt;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    nop

    .line 484
    if-nez p2, :cond_1

    .line 485
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_1
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    .line 483
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 487
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    .locals 6
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/os/VibrationAttributes;

    .line 503
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 504
    return-void
.end method

.method public whitelist vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 398
    return-void
.end method

.method public whitelist vibrate([JILandroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    const-string v0, "Vibrator"

    const/4 v1, -0x1

    if-lt p2, v1, :cond_0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 438
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 432
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
