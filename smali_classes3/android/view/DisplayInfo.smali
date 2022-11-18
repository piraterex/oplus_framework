.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist address:Landroid/view/DisplayAddress;

.field public greylist-max-o appHeight:I

.field public greylist-max-o appVsyncOffsetNanos:J

.field public greylist-max-o appWidth:I

.field public blacklist brightnessDefault:F

.field public blacklist brightnessMaximum:F

.field public blacklist brightnessMinimum:F

.field public greylist-max-o colorMode:I

.field public greylist-max-o defaultModeId:I

.field public blacklist deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public greylist-max-p displayCutout:Landroid/view/DisplayCutout;

.field public blacklist displayGroupId:I

.field public blacklist displayId:I

.field public greylist-max-o flags:I

.field public greylist-max-o hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public blacklist installOrientation:I

.field public greylist-max-o largestNominalAppHeight:I

.field public greylist-max-o largestNominalAppWidth:I

.field public greylist-max-o layerStack:I

.field public greylist-max-o logicalDensityDpi:I

.field public greylist logicalHeight:I

.field public greylist logicalWidth:I

.field blacklist mDisplayInfoExt:Landroid/view/IDisplayInfoExt;

.field public blacklist minimalPostProcessingSupported:Z

.field public greylist-max-o modeId:I

.field public greylist-max-o name:Ljava/lang/String;

.field public greylist-max-o ownerPackageName:Ljava/lang/String;

.field public greylist-max-o ownerUid:I

.field public greylist-max-o physicalXDpi:F

.field public greylist-max-o physicalYDpi:F

.field public greylist-max-o presentationDeadlineNanos:J

.field public blacklist refreshRateOverride:F

.field public greylist-max-o removeMode:I

.field public greylist rotation:I

.field public blacklist roundedCorners:Landroid/view/RoundedCorners;

.field public greylist-max-o smallestNominalAppHeight:I

.field public greylist-max-o smallestNominalAppWidth:I

.field public greylist-max-o state:I

.field public greylist-max-o supportedColorModes:[I

.field public greylist-max-o supportedModes:[Landroid/view/Display$Mode;

.field public greylist-max-o type:I

.field public greylist-max-o uniqueId:Ljava/lang/String;

.field public blacklist userDisabledHdrTypes:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Landroid/view/DisplayInfo$1;

    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-p <init>()V
    .locals 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 204
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 287
    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 885
    const-class v0, Landroid/view/IDisplayInfoExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IDisplayInfoExt;

    iput-object v0, p0, Landroid/view/DisplayInfo;->mDisplayInfoExt:Landroid/view/IDisplayInfoExt;

    .line 336
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 204
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 287
    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 885
    const-class v0, Landroid/view/IDisplayInfoExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IDisplayInfoExt;

    iput-object v0, p0, Landroid/view/DisplayInfo;->mDisplayInfoExt:Landroid/view/IDisplayInfoExt;

    .line 343
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 344
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 204
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 287
    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 885
    const-class v0, Landroid/view/IDisplayInfoExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IDisplayInfoExt;

    iput-object v0, p0, Landroid/view/DisplayInfo;->mDisplayInfoExt:Landroid/view/IDisplayInfoExt;

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 340
    return-void
.end method

.method private greylist-max-o findMode(I)Landroid/view/Display$Mode;
    .locals 3
    .param p1, "id"    # I

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 585
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 586
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    return-object v1

    .line 584
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    .line 845
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 848
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 851
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 854
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 857
    const-string v1, ", FLAG_SCALING_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    .line 860
    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    .line 863
    const-string v1, ", FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    .line 866
    const-string v1, ", FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_7
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_8

    .line 869
    const-string v1, ", FLAG_TRUSTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_8
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_9

    .line 872
    const-string v1, ", FLAG_OWN_DISPLAY_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :cond_9
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_a

    .line 875
    const-string v1, ", FLAG_ALWAYS_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_a
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_b

    .line 878
    const-string v1, ", FLAG_TOUCH_FEEDBACK_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 703
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 704
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 706
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 707
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 708
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 710
    if-eqz p3, :cond_0

    .line 711
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 712
    .local v0, "appBounds":Landroid/graphics/Rect;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    move p4, v1

    .line 713
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, p5

    :goto_2
    move p5, v1

    .line 715
    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 716
    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 720
    iget-object v1, p0, Landroid/view/DisplayInfo;->mDisplayInfoExt:Landroid/view/IDisplayInfoExt;

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    invoke-interface {v1}, Landroid/view/IDisplayInfoExt;->supportDisplayCompat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 721
    iget-object v1, p0, Landroid/view/DisplayInfo;->mDisplayInfoExt:Landroid/view/IDisplayInfoExt;

    invoke-interface {v1, p1}, Landroid/view/IDisplayInfoExt;->overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;)V

    .line 722
    return-void

    .line 725
    :cond_3
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p2, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 726
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 728
    :cond_4
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 402
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 403
    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 404
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 405
    iget v0, p1, Landroid/view/DisplayInfo;->displayId:I

    iput v0, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 406
    iget v0, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    iput v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 407
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 408
    iget-object v0, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 409
    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 410
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 411
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 412
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 413
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 414
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 415
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 416
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 417
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 418
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 419
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 420
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 421
    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 422
    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 423
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 424
    iget v0, p1, Landroid/view/DisplayInfo;->colorMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 425
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 427
    iget-object v0, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 428
    iget-object v0, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iput-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 429
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 430
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 431
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 432
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 433
    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 434
    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 435
    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    .line 436
    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 437
    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 438
    iget v0, p1, Landroid/view/DisplayInfo;->removeMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 439
    iget v0, p1, Landroid/view/DisplayInfo;->refreshRateOverride:F

    iput v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 440
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 441
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 442
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 443
    iget-object v0, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 444
    iget v0, p1, Landroid/view/DisplayInfo;->installOrientation:I

    iput v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    .line 445
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 832
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 833
    .local v0, "token":J
    iget v2, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 834
    iget v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 835
    iget v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 836
    iget v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 837
    iget-object v2, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-wide v3, 0x10900000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 838
    iget v2, p0, Landroid/view/DisplayInfo;->flags:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 839
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 840
    return-void
.end method

.method public greylist-max-o equals(Landroid/view/DisplayInfo;)Z
    .locals 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 352
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v1, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    iget v1, p1, Landroid/view/DisplayInfo;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget v1, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 358
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v1, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 359
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 360
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v1, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 369
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 373
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v1, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 375
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v1, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 376
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v1, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 377
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-boolean v1, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v1, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v1, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v1, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v1, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 386
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v1, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v0, v1, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v1, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v1, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v1, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v1, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 392
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    iget v1, p1, Landroid/view/DisplayInfo;->installOrientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 348
    instance-of v0, p1, Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "refreshRate"    # F

    .line 598
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 599
    .local v0, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    .line 600
    .local v1, "defaultMode":Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 601
    aget-object v3, v0, v2

    .line 602
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    .line 601
    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    aget-object v3, v0, v2

    return-object v3

    .line 600
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o getAppMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 632
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 633
    return-void
.end method

.method public greylist-max-o getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 642
    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 643
    return-void
.end method

.method public greylist-max-o getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 636
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 637
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 636
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 638
    return-void
.end method

.method public greylist-max-o getDefaultMode()Landroid/view/Display$Mode;
    .locals 1

    .line 580
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDefaultRefreshRates()[F
    .locals 9

    .line 613
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 614
    .local v0, "modes":[Landroid/view/Display$Mode;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 615
    .local v1, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 616
    .local v2, "defaultMode":Landroid/view/Display$Mode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 617
    aget-object v4, v0, v3

    .line 618
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 619
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 620
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [F

    .line 624
    .local v3, "result":[F
    const/4 v4, 0x0

    .line 625
    .local v4, "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 626
    .local v6, "rate":Ljava/lang/Float;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v3, v4

    .line 627
    .end local v6    # "rate":Ljava/lang/Float;
    move v4, v7

    goto :goto_1

    .line 628
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method public greylist-max-o getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 655
    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 656
    return-void
.end method

.method public blacklist getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 664
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 666
    .local v0, "bounds":Landroid/graphics/Rect;
    nop

    .line 667
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 666
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 668
    return-void
.end method

.method public greylist-max-o getMode()Landroid/view/Display$Mode;
    .locals 1

    .line 576
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNaturalHeight()I
    .locals 2

    .line 676
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 676
    :goto_1
    return v0
.end method

.method public greylist-max-o getNaturalWidth()I
    .locals 2

    .line 671
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 671
    :goto_1
    return v0
.end method

.method public blacklist getRefreshRate()F
    .locals 2

    .line 568
    iget v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 569
    return v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method public greylist-max-o hasAccess(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 698
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p0, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isHdr()Z
    .locals 2

    .line 681
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 682
    .local v0, "types":[I
    :goto_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public greylist-max-o isWideColorGamut()Z
    .locals 6

    .line 686
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 687
    .local v4, "colorMode":I
    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-le v4, v5, :cond_0

    goto :goto_1

    .line 686
    .end local v4    # "colorMode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .restart local v4    # "colorMode":I
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 691
    .end local v4    # "colorMode":I
    :cond_2
    return v2
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 453
    const-class v0, Landroid/view/DisplayAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayAddress;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 454
    const-class v0, Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DeviceProductInfo;

    iput-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 464
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .local v0, "nModes":I
    new-array v2, v0, [Landroid/view/Display$Mode;

    iput-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 470
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 471
    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    sget-object v4, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    aput-object v4, v3, v2

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .local v2, "nColorModes":I
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 476
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 477
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 479
    .end local v3    # "i":I
    :cond_1
    const-class v3, Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$HdrCapabilities;

    iput-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->state:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 495
    sget-object v1, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RoundedCorners;

    iput-object v1, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .local v1, "numUserDisabledFormats":I
    new-array v3, v1, [I

    iput-object v3, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 498
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 499
    iget-object v4, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 501
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->installOrientation:I

    .line 502
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, "\", displayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget v1, p0, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    const-string v1, "\", displayGroupId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    iget v1, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, ", real "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    const-string v2, ", largest app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget v2, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget v2, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    const-string v2, ", smallest app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 753
    const-string v2, ", appVsyncOff "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 755
    const-string v2, ", presDeadline "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 757
    const-string v2, ", mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    iget v2, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    const-string v2, ", defaultMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget v2, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 761
    const-string v2, ", modes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v2, ", hdrCapabilities "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget-object v2, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    const-string v2, ", userDisabledHdrTypes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v2, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v2, ", minimalPostProcessingSupported "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    iget-boolean v2, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 769
    const-string v2, ", rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget v2, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    const-string v2, ", state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget v2, p0, Landroid/view/DisplayInfo;->state:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string/jumbo v3, "}"

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_0

    .line 775
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 779
    :cond_0
    const-string v2, ", type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget v2, p0, Landroid/view/DisplayInfo;->type:I

    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v2, ", uniqueId \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v2, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v2, "\", app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    const-string v2, ", density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget v2, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget v2, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, ") dpi, layerStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 795
    const-string v1, ", colorMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    const-string v1, ", supportedColorModes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v1, :cond_1

    .line 800
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 802
    :cond_1
    const-string v1, ", deviceProductInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v1, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 804
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 805
    :cond_2
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_3
    const-string v1, ", removeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    const-string v1, ", refreshRateOverride "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget v1, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 812
    const-string v1, ", brightnessMinimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 814
    const-string v1, ", brightnessMaximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 816
    const-string v1, ", brightnessDefault "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 818
    const-string v1, ", installOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    iget v1, p0, Landroid/view/DisplayInfo;->installOrientation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 506
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 512
    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 513
    iget-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 514
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 523
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 528
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 533
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 536
    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 537
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 539
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 540
    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 541
    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 542
    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 546
    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 548
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 549
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 550
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 551
    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 552
    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 554
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 556
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    return-void
.end method
