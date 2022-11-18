.class public final Landroid/hardware/display/ColorDisplayManager;
.super Ljava/lang/Object;
.source "ColorDisplayManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;,
        Landroid/hardware/display/ColorDisplayManager$ColorMode;,
        Landroid/hardware/display/ColorDisplayManager$AutoMode;,
        Landroid/hardware/display/ColorDisplayManager$CapabilityType;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_MODE_CUSTOM_TIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_MODE_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_MODE_TWILIGHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_HARDWARE_ACCELERATION_GLOBAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_HARDWARE_ACCELERATION_PER_APP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_PROTECTED_CONTENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist COLOR_MODE_AUTOMATIC:I = 0x3

.field public static final blacklist COLOR_MODE_BOOSTED:I = 0x1

.field public static final blacklist COLOR_MODE_NATURAL:I = 0x0

.field public static final blacklist COLOR_MODE_SATURATED:I = 0x2

.field public static final blacklist VENDOR_COLOR_MODE_RANGE_MAX:I = 0x1ff

.field public static final blacklist VENDOR_COLOR_MODE_RANGE_MIN:I = 0x100


# instance fields
.field private final blacklist mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getInstance()Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    .line 187
    return-void
.end method

.method public static blacklist areAccessibilityTransformsEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 588
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_inversion_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 589
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v3

    .line 588
    :cond_1
    return v2
.end method

.method public static blacklist getMaximumColorTemperature(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 518
    const v1, 0x10e00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 517
    return v0
.end method

.method public static blacklist getMaximumReduceBrightColorsStrength(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 556
    const v1, 0x10e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 555
    return v0
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 593
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static blacklist getMinimumColorTemperature(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 507
    const v1, 0x10e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 506
    return v0
.end method

.method public static blacklist getMinimumReduceBrightColorsStrength(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 546
    const v1, 0x10e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 545
    return v0
.end method

.method public static blacklist isColorTransformAccelerated(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNightDisplayAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isStandardColorMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .line 365
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getColorMode()I
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getColorMode()I

    move-result v0

    return v0
.end method

.method public whitelist getNightDisplayAutoMode()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoMode()I

    move-result v0

    return v0
.end method

.method public blacklist getNightDisplayAutoModeRaw()I
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoModeRaw()I

    move-result v0

    return v0
.end method

.method public blacklist getNightDisplayColorTemperature()I
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayColorTemperature()I

    move-result v0

    return v0
.end method

.method public blacklist getNightDisplayCustomEndTime()Ljava/time/LocalTime;
    .locals 1

    .line 316
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNightDisplayCustomStartTime()Ljava/time/LocalTime;
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReduceBrightColorsOffsetFactor()F
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getReduceBrightColorsOffsetFactor()F

    move-result v0

    return v0
.end method

.method public blacklist getReduceBrightColorsStrength()I
    .locals 1

    .line 477
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getReduceBrightColorsStrength()I

    move-result v0

    return v0
.end method

.method public whitelist getTransformCapabilities()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 577
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getTransformCapabilities()I

    move-result v0

    return v0
.end method

.method public blacklist isDeviceColorManaged()Z
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isDeviceColorManaged()Z

    move-result v0

    return v0
.end method

.method public blacklist isDisplayWhiteBalanceEnabled()Z
    .locals 1

    .line 437
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isDisplayWhiteBalanceEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isNightDisplayActivated()Z
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public blacklist isReduceBrightColorsActivated()Z
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    return v0
.end method

.method public blacklist isSaturationActivated()Z
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isSaturationActivated()Z

    move-result v0

    return v0
.end method

.method public whitelist setAppSaturationLevel(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "saturationLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist setColorMode(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .line 347
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setColorMode(I)V

    .line 348
    return-void
.end method

.method public blacklist setDisplayWhiteBalanceEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 427
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setNightDisplayActivated(Z)Z
    .locals 1
    .param p1, "activated"    # Z

    .line 196
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayActivated(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setNightDisplayAutoMode(I)Z
    .locals 3
    .param p1, "autoMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 263
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 269
    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 271
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 272
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 274
    :cond_2
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayAutoMode(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setNightDisplayColorTemperature(I)Z
    .locals 1
    .param p1, "temperature"    # I

    .line 215
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayColorTemperature(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z
    .locals 3
    .param p1, "endTime"    # Ljava/time/LocalTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 331
    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 336
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 338
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    new-instance v1, Landroid/hardware/display/Time;

    invoke-direct {v1, p1}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z
    .locals 3
    .param p1, "startTime"    # Ljava/time/LocalTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 299
    if-eqz p1, :cond_0

    .line 302
    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 304
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x0

    .line 305
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 306
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    new-instance v1, Landroid/hardware/display/Time;

    invoke-direct {v1, p1}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setReduceBrightColorsActivated(Z)Z
    .locals 1
    .param p1, "activated"    # Z

    .line 447
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setReduceBrightColorsActivated(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setReduceBrightColorsStrength(I)Z
    .locals 1
    .param p1, "strength"    # I

    .line 468
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setReduceBrightColorsStrength(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setSaturationLevel(I)Z
    .locals 1
    .param p1, "saturationLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 391
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setSaturationLevel(I)Z

    move-result v0

    return v0
.end method
